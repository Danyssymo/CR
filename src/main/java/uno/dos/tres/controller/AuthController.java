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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import uno.dos.tres.beans.AuthInfo;
import uno.dos.tres.beans.Country;
import uno.dos.tres.beans.Island;
import uno.dos.tres.beans.User;
import uno.dos.tres.service.ServiceException;
import uno.dos.tres.service.UserService;
import jakarta.validation.Valid;

import java.util.Date;
import java.util.Locale;


@Controller
@SessionAttributes({"user", "authInfo"})
public class AuthController {


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

    @Autowired
    private UserService userService;
    @Autowired
    private MessageSource messageSource;

    @RequestMapping("/")
    public String execute(Model model, Locale locale, HttpSession session, HttpServletRequest request) {
        String userAgent = request.getHeader("user-agent");
        if (userAgent != null && userAgent.contains("IntelliJ IDEA")) {
            System.out.println("Ignoring request from IntelliJ IDEA");
            return "ignore";
        }
        if (session.getAttribute("authenticatedUser") != null) {
            return "main2";
        }
        model.addAttribute("Info", messageSource.getMessage("registration.welcome", null, locale));
        return "auth";
    }

    @RequestMapping("/sign_up")
    public String signUp(@Valid User user, BindingResult bindingResult, Model model, Locale locale) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("Info", messageSource.getMessage("registration.incorrect.signup", null, locale));
            return "auth";
        }

        try {
            if (!userService.checkUserCopy(user)) {
                userService.addUser(user);
                model.addAttribute("Info", messageSource.getMessage("registration.success", null, locale));
            } else {
                model.addAttribute("Info", messageSource.getMessage("registration.failure", null, locale));
            }
        } catch (ServiceException e) {
            model.addAttribute("Info", messageSource.getMessage("server.error", null, locale));
        }
        return "auth";
    }

    @RequestMapping("/sign_in")
    public String signIn(@RequestParam(value = "rememberMe", required = false, defaultValue = "false") Boolean rememberMe,
                         AuthInfo authInfo, HttpServletRequest request,
                         Model model, Locale locale, HttpServletResponse response) {
        try {
            User user = userService.signIn(authInfo);
            HttpSession session = request.getSession(true);
            session.setAttribute("authenticatedUser", user);
            if (Boolean.TRUE.equals(rememberMe)) {
                String token = user.getToken().getToken();
                Cookie cookie = new Cookie("remember-me", token);
                cookie.setMaxAge(24 * 60 * 60);
                cookie.setHttpOnly(true);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
            model.addAttribute("MainInfo", messageSource.getMessage("main_welcome", null, locale));
            return "main2";
        } catch (ServiceException e) {
            model.addAttribute("Info", messageSource.getMessage("auth.error", null, locale));
            return "auth";
        }
    }

}
