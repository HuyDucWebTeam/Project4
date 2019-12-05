package shop.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

import org.apache.lucene.search.Query;
import org.hibernate.search.jpa.FullTextEntityManager;
import org.hibernate.search.jpa.Search;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.entity.Product;

@Service
public class SearchService {
	
	private final EntityManager entityManager;

	@Autowired
	public SearchService(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void initializeSearch() {
		try {
			FullTextEntityManager fullTextEntityManager = Search.getFullTextEntityManager(entityManager);
			fullTextEntityManager.createIndexer().startAndWait();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	@Transactional
	public List<Product> productSearch(String searchTerm) {

		FullTextEntityManager fullTextEntityManager = Search.getFullTextEntityManager(entityManager);
		QueryBuilder qb = fullTextEntityManager.getSearchFactory().buildQueryBuilder().forEntity(Product.class).get();
		Query luceneQuery = qb.keyword().fuzzy().withEditDistanceUpTo(1).withPrefixLength(1).onField("name")
				.matching(searchTerm).createQuery();

		javax.persistence.Query jpqQuery = fullTextEntityManager.createFullTextQuery(luceneQuery, Product.class);

		List<Product> products = null;

		try {
			products = jpqQuery.getResultList();
		} catch (NoResultException e) {
			e.printStackTrace();
		}
		return products;
	}
}
