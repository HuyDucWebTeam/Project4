package shop.data;

import org.springframework.data.repository.CrudRepository;

import shop.entity.Role;

public interface RoleRepository extends CrudRepository<Role, Long>{
	public Role findByName(String name);
}
