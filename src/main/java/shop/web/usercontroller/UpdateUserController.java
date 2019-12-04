package shop.web.usercontroller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import shop.data.RoleRepository;
import shop.data.UserRepository;
import shop.entity.Role;
import shop.entity.User;

@Slf4j
@Controller
@RequestMapping("/admin/user/update")
public class UpdateUserController {
	
	private UserRepository userRepo;
	private RoleRepository roleRepo;
	
	@Autowired
	public UpdateUserController(UserRepository userRepo, RoleRepository roleRepo) {
		this.userRepo = userRepo;
		this.roleRepo = roleRepo;
	}
	
	@GetMapping
	public String showEdit() {
		return "updateUser";
	}
	
	@PostMapping
	public String updateUser(@Valid User user, String roleName, Errors errors) {
		
		log.info("---Changing role user: " + roleName);
		log.info("---User: " + user);
		
		if(errors.hasErrors()) {
			return "updateUser";
		}
		
		Role role = roleRepo.findByName(roleName);
		log.info("---Role: " + role);
		
		User newUser = userRepo.findById(user.getId()).get();
		newUser.setRole(role);
		log.info("---New user: " + newUser);
		
		userRepo.save(newUser);
		
		return "redirect:/admin/user";
	}
}
