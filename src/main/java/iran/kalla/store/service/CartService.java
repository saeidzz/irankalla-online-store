package iran.kalla.store.service;

import iran.kalla.store.model.Cart;

public interface CartService {
    Cart getCartById(int cartId);

    void update(Cart cart);
}
