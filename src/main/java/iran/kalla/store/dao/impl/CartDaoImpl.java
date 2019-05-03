package iran.kalla.store.dao.impl;

import iran.kalla.store.dao.CartDao;
import iran.kalla.store.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
    @Autowired
    SessionFactory sessionFactory;
    public Cart getCartById(int cartId) {
        Session session=sessionFactory.getCurrentSession();
       return(Cart) session.get(Cart.class,cartId);

    }

    public void update(Cart cart) {
      int cartId=cart.getCartId();
      ////later
    }
}
