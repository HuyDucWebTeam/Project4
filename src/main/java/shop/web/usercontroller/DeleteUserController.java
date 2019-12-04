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
import shop.entity.User;

@Slf4j
@Controller
@RequestMapping("/admin/user/delete")
public class DeleteUserController {
	
	@Autowired
	private UserRepository userRepo;
	
	@GetMapping
	public String showDeleteView() {
		return "deleteUser";
	}
	
	@PostMapping
	public String deleteUser(@Valid  User user, Errors errors) {
		
		log.info("---Deleting user...");
		
		if(errors.hasErrors()) {
			return "deleteUser";
		}
		
		userRepo.deleteById(user.getId());
		return "redirect:/admin/user";
	}
}
