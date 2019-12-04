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
		registry.addViewController("/").setViewName("redirect:/admin/product");
		registry.addViewController("/login");
	}
	
	@Bean
	  public CommandLineRunner dataLoader(ProductRepository productRepo, RoleRepository roleRepo) {
	    return new CommandLineRunner() {
	      @Override
	      public void run(String... args) throws Exception {
	        productRepo.save(new Product("123a", "Rau", 123.2f));
	        productRepo.save(new Product("543s", "Cu", 234.52f));
	        productRepo.save(new Product("423f", "Qua", 324.5f));
	        
	        roleRepo.save(new Role("USER", "User"));
	        roleRepo.save(new Role("ADMIN", "Admin"));
	      }
	    };
	  }
}
