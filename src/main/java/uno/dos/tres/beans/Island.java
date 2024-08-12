package uno.dos.tres.beans;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.stereotype.Component;
import java.io.Serializable;
import java.util.Date;

@Data
@Builder
@Component
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "islands")
public class Island implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idislands")
    private int id;
    @Column(name = "name")
    private String islandName;
    @Column(name = "area")
    private double area;
    @ManyToOne(fetch = FetchType.LAZY)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    @JoinColumn(name = "users_idusers", nullable = false)
    private User user;
    @Column(name = "price")
    private int price;
    @Column(name = "price_per_day")
    private int pricePerDay;
    @Column(name = "date")
    private Date date;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "countries_idcountrys", nullable = false)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Country country;

}
