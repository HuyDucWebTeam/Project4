package shop.web;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import shop.Product;
import shop.data.ProductRepository;

@Slf4j
@Controller
@RequestMapping("/edit")
public class EditProductsController {
	
	private ProductRepository productRepo;
	
	@Autowired
	public EditProductsController(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}
	
	@GetMapping
	public String showEditForm() {
		return "editProducts";
	}
	
	@PostMapping
	public String edit(@Valid Product product, Errors errors) {
		
		log.info("---Saving edited product: " + product.toString());
		
		if(errors.hasErrors()) {
			return "editProducts";
		}
		
		Product newProduct = productRepo.findById(product.getId()).get();
		log.info("---New Product: " + newProduct);
		newProduct.setCode(product.getCode());
		newProduct.setDescription(product.getDescription());
		newProduct.setPrice(product.getPrice());
		
		productRepo.save(newProduct);
		
		return "redirect:/product";
	}
}
