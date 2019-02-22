package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.CategoryDTO;
import enums.CategorySQL;
import enums.Vendor;
import factory.DatabaseFactory;
import proxy.Proxy;

public class CategoryDAOImpl implements CategoryDAO{
	
	private static CategoryDAOImpl instance = new CategoryDAOImpl();
	Connection conn;
	private CategoryDAOImpl() {
				conn = DatabaseFactory
				.createDatabase(Vendor.ORACLE)
				.getConnection();
	}	
	public static CategoryDAOImpl getInstance() {return instance;}
	
	@Override
	public void insertCategory(CategoryDTO cat) {
		try {
			String sql = "";
			PreparedStatement ps = DatabaseFactory
			.createDatabase(Vendor.ORACLE)
			.getConnection()
			.prepareStatement(sql);
			int rs = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<CategoryDTO> selectCategoryList(Proxy pxy) {
		List<CategoryDTO> list = new ArrayList<>();
		CategoryDTO cat = null;
		try {
			cat = new CategoryDTO();
				PreparedStatement ps = DatabaseFactory
						.createDatabase(Vendor.ORACLE)
						.getConnection()
						.prepareStatement(CategorySQL.CATE_LIST.toString());
				ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			cat.setCategoryId(rs.getString("CATEGORY_ID"));
			cat.setCategoryName(rs.getString("CATEGORY_NAME"));
			cat.setDescription(rs.getString("DESCRIPTION"));
				System.out.println("성공");
				list.add(cat);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<CategoryDTO> selectCategoryByName(CategoryDTO cat) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryDTO selectCateory(CategoryDTO cat) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countCategory(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateCategory(CategoryDTO cat) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCategory(CategoryDTO cat) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public boolean existsCategory(Proxy pxy) {
		// TODO Auto-generated method stub
		return false;
	}

}
