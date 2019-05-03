package iran.kalla.store.dao;

import iran.kalla.store.model.Customer;

import java.util.List;

public interface CustomerDao {
    void addCustomer(Customer customer);

    Customer getCustomer(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
