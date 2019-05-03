package iran.kalla.store.dao;

import iran.kalla.store.model.Product;

import java.util.List;

/**
 * Created by saeid on 8/5/17.
 */
public interface ProductDao {
    List<Product> getProductList();

    Product getProductById(int productId);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);


}