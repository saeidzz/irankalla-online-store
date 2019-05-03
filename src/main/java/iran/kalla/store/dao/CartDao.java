package iran.kalla.store.dao;

import iran.kalla.store.model.Cart;
import iran.kalla.store.model.CartItem;

public interface CartDao {
    Cart getCartById(int cartId);

    void update(Cart cart);
}
