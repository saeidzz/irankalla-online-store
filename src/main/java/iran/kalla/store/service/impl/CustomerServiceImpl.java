package iran.kalla.store.service.impl;

import iran.kalla.store.dao.CustomerDao;
import iran.kalla.store.service.CustomerService;
import iran.kalla.store.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public void addCustomer(Customer customer) {
        customerDao.addCustomer(customer);
    }

    public Customer getCustomer(int customerId) {
        return customerDao.getCustomer(customerId);
    }

    public List<Customer> getAllCustomers() {

        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUsername(String username) {
        return customerDao.getCustomerByUsername(username);
    }
}
