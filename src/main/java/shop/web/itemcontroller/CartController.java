package shop.web.itemcontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import lombok.extern.slf4j.Slf4j;
import shop.data.ProductRepository;
import shop.entity.Product;

@Slf4j
@Controller
@RequestMapping("/user/cart")
public class CartController {
	
	private ProductRepository productRepo;
	
	@Autowired
	public CartController(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}
	
	@GetMapping
	public String showItems(@RequestParam String code, Model model) {
		log.info("---code: " + code);
		List<Product> items = new ArrayList<>();
		productRepo.findAll().forEach(i -> items.add(i));
		model.addAttribute("items", items);
		return "cart";
	}
	
	@PostMapping
	public String addToCart() {
		log.info("---cart---");
		return "redirect:/user/cart";
	}
}
