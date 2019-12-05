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
@RequestMapping("/user/cart")
public class CartController {
	
	private ProductRepository productRepo;
	private CartRepository cartRepo;
	
	@Autowired
	public CartController(ProductRepository productRepo, CartRepository cartRepo) {
		this.productRepo = productRepo;
		this.cartRepo = cartRepo;
	}
	
	@GetMapping
	public String showItems(Model model, @AuthenticationPrincipal User user) {
		List<Cart> cartsTemp = new ArrayList<Cart>();
		List<Cart> carts = new ArrayList<Cart>();
		cartRepo.findAll().forEach(i -> cartsTemp.add(i));
		
		for (Cart c: cartsTemp) {
			if (c.getIdUser().equals(user.getId()) && c.getIsBought().equals("false")) {
				carts.add(c);
			}
		}
		
		model.addAttribute("carts", carts);
		return "cart";
	}
	
	@PostMapping
	public String addToCart(@RequestParam String code, @RequestParam String description, @RequestParam String urlImg, Model model, @AuthenticationPrincipal User user) {
		List<Product> products = new ArrayList<>();
		Product item = null;
		productRepo.findAll().forEach(i -> products.add(i));
		
		for (Product p: products) {
			if (p.getCode().equals(code)) {
				item = p;
				log.info("---p---:" + p.getId());
				break;
			}
		}
		
		log.info("---item---:" + item.getId());
		
		log.info("---user---:" + user.getId());
		
		Cart cart = new Cart(user.getId(), item.getId(), item.getUrlImg(), item.getDescription(), item.getPrice(), "false");
		
		log.info("---cart---:" + cart.toString());
		cartRepo.save(cart);
		
		return "redirect:/user/cart";
	}
}

//class DetailCart{
//	private Product product;
//	private Long cartId;
//	private Long userId;
//	
//	public DetailCart(Product product, Long cartId, Long userId) {
//		this.product = product;
//		this.cartId = cartId;
//		this.userId = userId;
//	}
//	
//}
