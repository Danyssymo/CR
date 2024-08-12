package uno.dos.tres.beans;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.stereotype.Component;
import jakarta.validation.constraints.Size;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Data
@Builder
@Component
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idusers")
    private int id;

    @Column(name = "username")
    @NotNull
    @Size(min = 2, max = 15)
    private String username;

    @Column(name = "password")
    @NotNull
    @Size(min = 6, max = 25)
    private String password;

    @Column(name = "email")
    @NotNull
    @Email
    private String email;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Token token;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Set<Island> islands;

    @ElementCollection(fetch = FetchType.EAGER, targetClass = UserRoles.class)
    @CollectionTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id"))
    @Column(name = "role", nullable = false)
    @Enumerated(EnumType.STRING)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Set<UserRoles> roles;

    @PrePersist
    @PreUpdate
    public void ensureDefaultRole() {
        if (roles == null || roles.isEmpty()) {
            roles = new HashSet<>();
            roles.add(UserRoles.USER);
        }
    }
}
