package uno.dos.tres.beans;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Objects;

@Data
@Builder
@Component
@NoArgsConstructor
@AllArgsConstructor
public class AuthInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    private String authUsername;
    private String authPassword;
    private boolean rememberMe;

}
