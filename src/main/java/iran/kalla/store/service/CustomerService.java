package iran.kalla.store.service;

import iran.kalla.store.model.Customer;

import java.util.List;

public interface CustomerService {
    void addCustomer(Customer customer);

    Customer getCustomer(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
