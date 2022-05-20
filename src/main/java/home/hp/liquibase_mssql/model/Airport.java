package home.hp.liquibase_mssql.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Cacheable
public class Airport {

    @Id
    @GeneratedValue
    @EqualsAndHashCode.Include()
    private long id;

    @Size(min = 3, max = 20)
    private String name;
    private String iata;

    @OneToMany(mappedBy = "takeoff")
    private Set<Flight> departures;

    @OneToMany(mappedBy = "landing")
    private Set<Flight> arrivals;

}
