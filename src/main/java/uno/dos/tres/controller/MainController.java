package uno.dos.tres.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import uno.dos.tres.beans.*;
import uno.dos.tres.service.IslandService;
import uno.dos.tres.service.ServiceException;
import uno.dos.tres.service.UserService;

import java.util.Date;
import java.util.Locale;
import java.util.Set;

@Controller
@SessionAttributes({"user", "authInfo", "island"})
public class MainController {

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @ModelAttribute("user")
    public User getUser() {
        return new User();
    }

    @ModelAttribute("authInfo")
    public AuthInfo getAuthInfo() {
        return new AuthInfo();
    }

    @ModelAttribute("island")
    public Island getIsland() {
        return new Island();
    }

    @Autowired
    private MessageSource messageSource;
    @Autowired
    private IslandService islandService;
    @Autowired
    private UserService userService;

    @RequestMapping("/add_island")
    public String addIsland(@ModelAttribute("island") Island island,Model model, HttpSession session, Locale locale) {
        User user = (User) session.getAttribute("authenticatedUser");
        Date date = new Date();
        island.setUser(user);
        island.setDate(date);
        System.out.println(island);
        try {
            islandService.addIsland(island);
            Set<UserRoles> roles = user.getRoles();
            roles.add(UserRoles.OWNER);
            userService.updateUser(user);
        } catch (ServiceException e) {
            model.addAttribute("AddInfo", messageSource.getMessage("add_island_error", null, locale));
            return "add_island";
        }
        return "main2";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession(false);
        session.removeAttribute("authenticatedUser");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("remember-me")) {
                    cookie.setValue("");
                    cookie.setPath("/");
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }
        return "redirect:/";
    }

    @RequestMapping("/add_island_page")
    public String addIslandPage(Model model, Locale locale) {
        try {
            Set<Country> countries = islandService.findAllCountries();
            model.addAttribute("countries", countries);
            model.addAttribute("AddInfo", messageSource.getMessage("add_island_welcome", null, locale));
        } catch (ServiceException e) {
            model.addAttribute("MainInfo", messageSource.getMessage("go_to_addIsland_page", null, locale));
            return "main2";
        }
        return "add_island";
    }

}
