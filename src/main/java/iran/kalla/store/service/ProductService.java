package iran.kalla.store.service;

import iran.kalla.store.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int productId);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);


}
