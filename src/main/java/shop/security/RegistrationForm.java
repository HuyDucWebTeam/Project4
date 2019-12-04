package shop.security;

import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.Data;
import shop.data.RoleRepository;
import shop.entity.User;

@Data
public class RegistrationForm {
	
	private String username;
	private String password;
	private String fullname;
	private String street;
	private String city;
	private String phoneNumber;
	private String roleName;

	public User toUser(PasswordEncoder passwordEncoder, RoleRepository roleRepo) {
		return new User(username, passwordEncoder.encode(password), fullname, street, city, phoneNumber, roleRepo.findByName(roleName));
	}
}
