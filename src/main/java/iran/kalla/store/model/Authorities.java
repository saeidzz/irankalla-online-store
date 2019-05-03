package iran.kalla.store.model;



import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Authorities {
    @GenericGenerator(
            name = "optimized-sequence",
            strategy = "enhanced-sequence",
            parameters = {
                    @Parameter(name="prefer_sequence_per_entity", value="true"),
                    @Parameter(name="optimizer", value="hilo"),
                    @Parameter(name = "initial_value",value = "0"),
                    @Parameter(name="increment_size", value="1")})

    @Id
    @GeneratedValue(generator="optimized-sequence")
    private int  authoritiesId;


    private String userName;
    private String authority;



    public int getAuthoritiesId() {
        return authoritiesId;
    }

    public void setAuthoritiesId(int authoritiesId) {
        this.authoritiesId = authoritiesId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
