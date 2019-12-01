package shop.web;

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
@RequestMapping("/delete")
public class DeleteProductsController {
	
	private ProductRepository productRepo;
	
	@Autowired
	public DeleteProductsController(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}
	
	@GetMapping
	public String showDeleteForm() {
		return "deleteProducts";
	}
	
	@PostMapping
	public String delete(@Valid Product product, Errors errors) {
		
		log.info("---Deleting product: " + product);
		
		if(errors.hasErrors()) {
			return "deleteProducts";
		}
		
		productRepo.deleteById(product.getId());;
		
		return "redirect:/product";
	}
	
}
