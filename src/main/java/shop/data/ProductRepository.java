package shop.data;

import org.springframework.data.repository.CrudRepository;

import shop.Product;

public interface ProductRepository extends CrudRepository<Product, Long>{

}
