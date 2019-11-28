package shop.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import lombok.extern.slf4j.Slf4j;
import shop.Product;
import shop.data.ProductRepository;

@Slf4j
@Controller
@RequestMapping("/product")
public class ViewProductsController {
	
	private ProductRepository productRepo;
	
	@Autowired
	public ViewProductsController(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}
	
	@GetMapping
	public String showProducts(Model model) {
		log.info("---Finding products...");
		List<Product> products = new ArrayList<>();
		productRepo.findAll().forEach(i -> products.add(i));
		
		model.addAttribute("products", products);

		return "viewProducts";
	}
	
	@PostMapping
	public String processAddProducts() {
		log.info("---Processing add product...");
		return "redirect:/add";
	}
}
