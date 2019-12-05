package shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;

import lombok.AccessLevel;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor(access = AccessLevel.PRIVATE, force = true)
@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@NotBlank(message = "Code is required")
	private String code;

	@NotBlank(message = "Description is required")
	private String description;

	@Digits(integer = 10, fraction = 2, message = "Invalid price")
	private float price;

	private String urlImg;

	public Product(@NotBlank(message = "Code is required") String code,
			@NotBlank(message = "Description is required") String description,
			@Digits(integer = 10, fraction = 2, message = "Invalid price") float price, String urlImg) {
		super();
		this.code = code;
		this.description = description;
		this.price = price;
		this.urlImg = urlImg;
	}
}
