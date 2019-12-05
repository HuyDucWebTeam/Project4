package shop.web.itemcontroller;

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
import shop.data.ProductRepository;
import shop.entity.Product;

@Slf4j
@Controller
@RequestMapping("/user/viewItems")
public class ViewItemsController {
	
	private ProductRepository productRepo;
	
	@Autowired
	public ViewItemsController(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}
	
	@GetMapping
	public String showItems(Model model) {
		log.info("---Finding products...");
		List<Product> items = new ArrayList<>();
		productRepo.findAll().forEach(i -> items.add(i));
		
		model.addAttribute("items", items);

		return "viewItems";
	}
	
	@PostMapping
	public String addToCart() {
		log.info("---Add items to cart...");
		return "redirect:/user/addToCart";
	}
}
