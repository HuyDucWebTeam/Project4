package shop;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import shop.data.ProductRepository;
import shop.data.RoleRepository;
import shop.entity.Product;
import shop.entity.Role;

@SpringBootApplication
public class AgricultureShopApplication implements WebMvcConfigurer{

	public static void main(String[] args) {
		SpringApplication.run(AgricultureShopApplication.class, args);
	}

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/").setViewName("redirect:/login");
		registry.addViewController("/login");
	}
	
	@Bean
	  public CommandLineRunner dataLoader(ProductRepository productRepo, RoleRepository roleRepo) {
	    return new CommandLineRunner() {
	      @Override
	      public void run(String... args) throws Exception {
	    	  productRepo.save(new Product("123a", "Orange", 123.2f, "https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg"));
	    	  productRepo.save(new Product("543s", "Carrot", 234.52f, "https://suttons.s3.amazonaws.com/p/VECAR14605rt_3.jpg"));
	    	  productRepo.save(new Product("423f", "La Ngon", 324.5f, "https://cdn.24h.com.vn/upload/2-2019/images/2019-05-06/La-ngon-chua-chat-kich-doc-gi-ma-co-the-giet-nguoi-trong-1-1557115062-531-width490height368.jpg"));
		        
	    	  productRepo.save(new Product("123a", "Orange", 123.2f, "https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg"));
	    	  productRepo.save(new Product("543s", "Carrot", 234.52f, "https://suttons.s3.amazonaws.com/p/VECAR14605rt_3.jpg"));
	    	  productRepo.save(new Product("423f", "La Ngon", 324.5f, "https://cdn.24h.com.vn/upload/2-2019/images/2019-05-06/La-ngon-chua-chat-kich-doc-gi-ma-co-the-giet-nguoi-trong-1-1557115062-531-width490height368.jpg"));
		        
	    	  productRepo.save(new Product("123a", "Orange", 123.2f, "https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg"));
	    	  productRepo.save(new Product("543s", "Carrot", 234.52f, "https://suttons.s3.amazonaws.com/p/VECAR14605rt_3.jpg"));
	    	  productRepo.save(new Product("423f", "La Ngon", 324.5f, "https://cdn.24h.com.vn/upload/2-2019/images/2019-05-06/La-ngon-chua-chat-kich-doc-gi-ma-co-the-giet-nguoi-trong-1-1557115062-531-width490height368.jpg"));
		        
	    	  productRepo.save(new Product("123a", "Orange", 123.2f, "https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg"));
	    	  productRepo.save(new Product("543s", "Carrot", 234.52f, "https://suttons.s3.amazonaws.com/p/VECAR14605rt_3.jpg"));
	    	  productRepo.save(new Product("423f", "La Ngon", 324.5f, "https://cdn.24h.com.vn/upload/2-2019/images/2019-05-06/La-ngon-chua-chat-kich-doc-gi-ma-co-the-giet-nguoi-trong-1-1557115062-531-width490height368.jpg"));
	    	  roleRepo.save(new Role("USER", "User"));
	    	  roleRepo.save(new Role("ADMIN", "Admin"));
	      }
	    };
	  }
}
