package iran.kalla.store.dao.impl;

import iran.kalla.store.dao.ProductDao;
import iran.kalla.store.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by saeid on 8/5/17.
 */

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product){
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public Product getProductById(int id){
        Session session=sessionFactory.getCurrentSession();
        Product product=session.get(Product.class, id);
        session.flush();
        return product;
    }

    public List<Product> getProductList() {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Product");
        List<Product> products=query.list();
        session.flush();

        return products;


    }

    public void deleteProduct(Product product) {
        Session session=sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();


    }

    public void editProduct(Product product) {
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }


}