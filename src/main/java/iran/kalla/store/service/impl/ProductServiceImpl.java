package iran.kalla.store.service.impl;

import iran.kalla.store.dao.ProductDao;
import iran.kalla.store.model.Product;
import iran.kalla.store.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;


    public List<Product> getProductList() {
        return productDao.getProductList();
    }

    public Product getProductById(int ProductId) {
        return productDao.getProductById(ProductId);
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void editProduct(Product product) {
        productDao.editProduct(product);
    }

    public void deleteProduct(Product product) {
     productDao.deleteProduct(product);
    }
}
