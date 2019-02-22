package service;

import java.util.ArrayList;
import java.util.List;

import dao.ImageDAO;
import dao.ImageDAOImpl;
import domain.ImageDTO;
import proxy.Proxy;

public class ImageServiceImpl implements ImageService{
	private static ImageServiceImpl instance = new ImageServiceImpl();
	public ImageServiceImpl() {dao = ImageDAOImpl.getInstance();}
	public static ImageServiceImpl getInstance() {return instance;}
	ImageDAO dao;

	@Override
	public void addImage(ImageDTO img) {
		
	}

	@Override
	public List<ImageDTO> ImageList(Proxy pxy) {
		List<ImageDTO> list = new ArrayList<>();
		return list;
	}

	@Override
	public List<ImageDTO> searchImage(Proxy pxy) {
		List<ImageDTO> list = new ArrayList<>();
		return list;
	}

	@Override
	public ImageDTO retrieve(ImageDTO img) {
		
		return dao.select(img);
	}

	@Override
	public int countImage(Proxy pxy) {
		int count = 0;
		return count;
	}

	@Override
	public void updateImage(ImageDTO img) {
		
	}

	@Override
	public void deleteImage(ImageDTO img) {
		
	}

}
