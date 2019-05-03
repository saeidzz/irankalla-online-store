package iran.kalla.store.dao.impl;

import iran.kalla.store.dao.CustomerDao;
import iran.kalla.store.model.Authorities;
import iran.kalla.store.model.Cart;
import iran.kalla.store.model.Customer;
import iran.kalla.store.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
    @Autowired
    private SessionFactory sessionFactory;


    public void addCustomer(Customer customer) {
        Session session=sessionFactory.getCurrentSession();
        customer.getBillingAddress().setCustomer(customer);
        customer.getShippingAddress().setCustomer(customer);

        session.saveOrUpdate(customer);
        session.saveOrUpdate(customer.getBillingAddress());
        session.saveOrUpdate(customer.getShippingAddress());

        Users newUser=new Users();
        newUser.setUserName(customer.getUsername());
        newUser.setPassword(customer.getPassword());
        newUser.setEnabled(true);
        newUser.setCustomerId(customer.getCustomerId());

        Authorities newAuthoritiy=new Authorities();
        newAuthoritiy.setUserName(customer.getUsername());
        newAuthoritiy.setAuthority("ROLE-USER");
        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newAuthoritiy);



        Cart newCart=new Cart();
        newCart.setCustomer(customer);
        customer.setCart(newCart);
        session.saveOrUpdate(newCart);
        session.saveOrUpdate(customer);

        session.flush();


    }

    public Customer getCustomer(int customerId) {
        Session session=sessionFactory.getCurrentSession();
        return  session.get(Customer.class,customerId);
    }

    public List<Customer> getAllCustomers() {
       Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Customer");
        List<Customer> customerList=query.list();

        return customerList;
    }

    public Customer getCustomerByUsername(String username) {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Customer where username=?");
        query.setString(0,username);

        return (Customer) query.uniqueResult();


    }
}
