package iran.kalla.store.dao.impl;

import iran.kalla.store.dao.CartItemDao;
import iran.kalla.store.model.Cart;
import iran.kalla.store.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    public void removeAllCartItems(Cart cart) {
        List<CartItem> cartItems = cart.getCartItems();
        for (CartItem cartItem : cartItems) {
            removeCartItem(cartItem);
        }
    }

    public CartItem getCartItemByProductId(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query=session.createQuery("from CartItem where productId=?");
        query.setInteger(0,1);
        session.flush();
        return (CartItem) query.uniqueResult();
    }
}
