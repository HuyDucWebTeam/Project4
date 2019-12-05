package shop;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import shop.service.SearchService;

@EnableAutoConfiguration
@Configuration
public class SearchConfiguration {

	private EntityManager entityManager;
	
	@Autowired
	public SearchConfiguration(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	@Bean
	SearchService seachService() {
		SearchService searchService = new SearchService(entityManager);
		searchService.initializeSearch();
		return searchService;
	}
}
