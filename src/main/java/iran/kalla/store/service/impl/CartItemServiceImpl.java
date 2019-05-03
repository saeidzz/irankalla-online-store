package iran.kalla.store.service.impl;

import iran.kalla.store.dao.CartItemDao;
import iran.kalla.store.model.Cart;
import iran.kalla.store.model.CartItem;
import iran.kalla.store.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem) {
     cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart) {
      cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int id) {
        return cartItemDao.getCartItemByProductId(id);
    }
}
