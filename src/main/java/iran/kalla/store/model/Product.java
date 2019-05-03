package iran.kalla.store.model;

/**
 * Created by saeid on 8/5/17.
 */

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import java.io.Serializable;
import java.util.List;

/**
 * Created by saeid on 21/07/2017.
 */
@Entity
public class Product implements Serializable {


    private static final long serialVersionUID = 4819111552130157787L;
    @GenericGenerator(
            name = "optimized-sequence",
            strategy = "enhanced-sequence",
            parameters = {
                    @org.hibernate.annotations.Parameter(name="prefer_sequence_per_entity", value="true"),
                    @org.hibernate.annotations.Parameter(name="optimizer", value="hilo"),
                    @org.hibernate.annotations.Parameter(name = "initial_value",value = "0"),
                    @org.hibernate.annotations.Parameter(name="increment_size", value="1")})

    @Id
    @GeneratedValue(generator="optimized-sequence")
    private int productId;
    @NotEmpty(message = "نام محصول نباید خالی باشد")
    private String productName;
    private String productCategory;
    private String productDescription;
    @Min(value = 0,message = "قیمت  محصول نباید کمتر از صفر باشد")
    private double productPrice;
    private String productCondition;
    private String productStatus;
    @Min(value = 0,message = "وزن محصول نباید کمتر از صفر باشد")
    private int unitInStatus;
    private String productManufacturer;


    @Transient
    private MultipartFile productImage;

    @OneToMany(mappedBy = "product",cascade =CascadeType.ALL,fetch =FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cartItems;


    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }


    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStatus() {
        return unitInStatus;
    }

    public void setUnitInStatus(int unitInStatus) {
        this.unitInStatus = unitInStatus;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }
}
