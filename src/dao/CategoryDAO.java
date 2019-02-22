package dao;

import java.util.List;

import domain.CategoryDTO;
import proxy.Proxy;

public interface CategoryDAO {
	public void insertCategory(CategoryDTO cat);
	public List<?> selectCategoryList(Proxy pxy);
	public List<CategoryDTO> selectCategoryByName(CategoryDTO cat);
	public CategoryDTO selectCateory(CategoryDTO cat);
	public int countCategory(Proxy pxy);
	public boolean existsCategory(Proxy pxy);
	public void updateCategory(CategoryDTO cat);
	public void deleteCategory(CategoryDTO cat);
}
