package shop.web.itemcontroller;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import lombok.extern.slf4j.Slf4j;
import shop.data.CartRepository;
import shop.data.ProductRepository;
import shop.entity.Cart;
import shop.entity.Product;
import shop.entity.User;

@Slf4j
@Controller
@RequestMapping("/user/cart/delele")
public class DeleteItemInCartController {
	
	private ProductRepository productRepo;
	private CartRepository cartRepo;
	
	@Autowired
	public DeleteItemInCartController(ProductRepository productRepo, CartRepository cartRepo) {
		this.productRepo = productRepo;
		this.cartRepo = cartRepo;
	}
	
	@GetMapping
	public String showItems(Model model, @AuthenticationPrincipal User user) {
		return "cart";
	}
	
	@PostMapping
	public String addToCart(@RequestParam Long cartId) {
		cartRepo.deleteById(cartId);
		return "redirect:/user/cart";
	}
}
