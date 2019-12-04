package shop.web.usercontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.data.UserRepository;
import shop.entity.User;

@Controller
@RequestMapping("/admin/user")
public class ViewUsersController {

	@Autowired
	private UserRepository userRepo;

	@GetMapping
	public String show(Model model) {
		
		List<User> users = new ArrayList<>();
		userRepo.findAll().forEach(u -> users.add(u));
		
		model.addAttribute("users", users);
		
		return "viewUsers";
	}
}
