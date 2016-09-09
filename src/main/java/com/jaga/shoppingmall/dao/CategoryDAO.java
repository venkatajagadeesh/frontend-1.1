package com.jaga.shoppingmall.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.jaga.shoppingmall.model.Category;

@Repository
public interface CategoryDAO {
	
	
	public Category get(String id);
	public List<Category> list();
    public boolean saveOrUpdate(Category category);
	public boolean delete(Category category);
		

}
