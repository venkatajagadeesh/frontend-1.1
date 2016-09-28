package com.jaga.shoppingmall.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.jaga.shoppingmall.dao.CartDAO;
import com.jaga.shoppingmall.dao.CartDAOImpl;
import com.jaga.shoppingmall.dao.CategoryDAO;
import com.jaga.shoppingmall.dao.CategoryDAOImpl;
import com.jaga.shoppingmall.dao.ProductDAO;
import com.jaga.shoppingmall.dao.ProductDAOImpl;
import com.jaga.shoppingmall.dao.SupplierDAO;
import com.jaga.shoppingmall.dao.SupplierDAOImpl;
import com.jaga.shoppingmall.dao.UserDetailsDAO;
import com.jaga.shoppingmall.dao.UserDetailsDAOImpl;
import com.jaga.shoppingmall.model.Cart;
import com.jaga.shoppingmall.model.Category;
import com.jaga.shoppingmall.model.Product;
import com.jaga.shoppingmall.model.Supplier;
import com.jaga.shoppingmall.model.UserDetails;

@Configuration
@ComponentScan("com.niit.")
@EnableTransactionManagement
public class ApplicationContextConfig {

	
	@Bean(name="dataSource")
	 public DataSource getDataSource(){
	DriverManagerDataSource dataSource=new DriverManagerDataSource();	
	dataSource.setDriverClassName("org.h2.Driver");
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/niitdb");
	dataSource.setUsername("sa");
	dataSource.setPassword("sa");
	return dataSource;
	}

private Properties getHibernateProperties(){
	Properties properties=new Properties();
	properties.put("hibernate.show_sql", "true");
	properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	properties.put("hibernate.hbm2ddl.auto", "update");
	return properties;
}

@Autowired
@Bean(name="sessionFactory")
public SessionFactory getSessionFactory(DataSource dataSource){
	LocalSessionFactoryBuilder sessionBuilder=new LocalSessionFactoryBuilder(dataSource);
	sessionBuilder.addProperties(getHibernateProperties());
	sessionBuilder.addAnnotatedClass(Category.class);
    sessionBuilder.addAnnotatedClass(Supplier.class);
    sessionBuilder.addAnnotatedClass(UserDetails.class);
	sessionBuilder.addAnnotatedClass(Product.class);
	sessionBuilder.addAnnotatedClass(Cart.class);
	return sessionBuilder.buildSessionFactory();
	
}

@Autowired
@Bean(name="transactionManager")
public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory){
HibernateTransactionManager transactionManager=new 	HibernateTransactionManager(sessionFactory);
return transactionManager;
	
}
@Autowired
@Bean(name="categoryDAO")
public CategoryDAO getCategoryDAO(SessionFactory sessionFactory){
	
	return new CategoryDAOImpl(sessionFactory);
}

@Autowired
@Bean(name="productDAO")
public ProductDAO getProductDAO(SessionFactory sessionFactory){
	
	return new ProductDAOImpl(sessionFactory);
}
@Autowired
@Bean(name="supplierDAO")
public SupplierDAO getSupplierDAO(SessionFactory sessionFactory){
	
	return new SupplierDAOImpl(sessionFactory);
}
@Autowired
@Bean(name="cartDAO")
public CartDAO getcartDAO(SessionFactory sessionFactory){
	
	return new CartDAOImpl(sessionFactory);
}
@Autowired
@Bean(name="userDetailsDAO")
public UserDetailsDAO getuserDetailsDAO(SessionFactory sessionFactory){
	
	return new UserDetailsDAOImpl(sessionFactory);
}
}