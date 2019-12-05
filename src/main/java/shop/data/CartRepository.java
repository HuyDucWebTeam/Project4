package shop.data;

import org.springframework.data.repository.CrudRepository;

import shop.entity.Cart;

public interface CartRepository extends CrudRepository<Cart, Long>{
}
