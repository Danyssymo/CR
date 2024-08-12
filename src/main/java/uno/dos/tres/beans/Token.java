package uno.dos.tres.beans;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.stereotype.Component;

@Data
@Builder
@Component
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "token")
public class Token {

    @Id
    @OneToOne
    @ToString.Exclude
    @JoinColumn(name = "users_idusers")
    private User user;

    @Column(name = "tokencol")
    private String token;

}
