package iran.kalla.store.dao;

import iran.kalla.store.model.Cart;
import iran.kalla.store.model.CartItem;

public interface CartItemDao {
    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int id);


}