package shop.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import lombok.extern.slf4j.Slf4j;
import shop.Product;
import shop.data.ProductRepository;

@Slf4j
@Controller
@RequestMapping("/add")
@SessionAttributes("product")
public class AddProductsController {
	
	private ProductRepository productRepo;
	
	@Autowired
	public AddProductsController(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}
	
	@GetMapping
	public String showAddForm(Model model) {
		return "addProducts";
	}
	
	@PostMapping
	public String addProducts(@Valid Product product, Errors errors, SessionStatus sessionStatus) {
		
		if(errors.hasErrors()) {
			return "addProducts";
		}
		
		productRepo.save(product);
		sessionStatus.setComplete();
		
		return "redirect:/product";
	}
}
