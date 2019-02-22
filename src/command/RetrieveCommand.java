package command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import dao.ImageDAOImpl;
import domain.CustomerDTO;
import domain.ImageDTO;
import proxy.PageProxy;
import proxy.Pagination;
import proxy.Proxy;
import proxy.RequestProxy;
import service.CustomerServiceImpl;
import service.ImageServiceImpl;

public class RetrieveCommand extends Command{
	
	public RetrieveCommand(Map<String,Proxy> pxy) {
		super(pxy);
		RequestProxy req = (RequestProxy) pxy.get("req");
		HttpServletRequest request = req.getRequest();
			Proxy paging = new Pagination();
			paging.carryOut(request);
			Proxy pagePxy = new PageProxy();
			pagePxy.carryOut(paging);		
			
			CustomerDTO cus = new CustomerDTO();
			cus.setCustomerID(request.getParameter("customerID"));
			cus = CustomerServiceImpl.getInstance().retrieveCustomer(cus);
			
			ImageDTO image= new ImageDTO();
			image.setImgSeq(cus.getPhoto());
			
			image = ImageServiceImpl.getInstance().retrieve(image);
			
			System.out.println("RetrieveCommand내부"+cus);
			System.out.println("RetrieveCommand내부"+image);
			request.setAttribute("cus", cus);
			request.setAttribute("image", image);
			
	}
}
	