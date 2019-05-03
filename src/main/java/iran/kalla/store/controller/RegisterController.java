package iran.kalla.store.controller;

import iran.kalla.store.service.CustomerService;
import iran.kalla.store.model.BillingAddress;
import iran.kalla.store.model.Customer;
import iran.kalla.store.model.ShippingAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model) {
        Customer customer = new Customer();

        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();

        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";

    }
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String registerCustomerPost(@ModelAttribute("customer") Customer customer ,Model model){
     customer.setEnabled(true);
     customerService.addCustomer(customer);

     return "registerCustomerSuccess";
    }
}
