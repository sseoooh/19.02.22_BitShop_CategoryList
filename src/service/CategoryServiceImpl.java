package service;


import java.util.ArrayList;
import java.util.List;

import dao.CategoryDAO;
import dao.CategoryDAOImpl;
import domain.CategoryDTO;
import proxy.Proxy;

public class CategoryServiceImpl implements CategoryService{
	private static CategoryServiceImpl instance = new CategoryServiceImpl();
	public CategoryServiceImpl() {dao = CategoryDAOImpl.getInstance();}
		public static CategoryServiceImpl getInstance() {return instance;}
	CategoryDAOImpl dao;
	@Override
	public void registCategory(CategoryDTO cat) {
		
		
	}
	@Override
	public List<CategoryDTO> bringCategoryList(Proxy pxy) {
		return dao.selectCategoryList(pxy);
	}
	@Override
	public List<CategoryDTO> retrieveCategoryByName(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public CategoryDTO retrieveCategory(CategoryDTO cat) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int countCategory(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public boolean existsCategory(Proxy pxy) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public void modifyCategory(CategoryDTO cat) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void removeCategory(CategoryDTO cat) {
		// TODO Auto-generated method stub
		
	}
	
}
