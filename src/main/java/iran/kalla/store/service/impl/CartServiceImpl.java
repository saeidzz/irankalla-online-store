package iran.kalla.store.service.impl;

import iran.kalla.store.dao.CartDao;
import iran.kalla.store.model.Cart;
import iran.kalla.store.service.CartService;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
       return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
     cartDao.update(cart);
    }
}
