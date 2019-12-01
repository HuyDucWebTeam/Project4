package shop.data;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import shop.Product;

public interface ProductRepository extends CrudRepository<Product, Long>{
}
