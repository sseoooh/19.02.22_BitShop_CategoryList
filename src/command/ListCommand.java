package command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;



import enums.Action;
import proxy.PageProxy;
import proxy.Pagination;
import proxy.Proxy;
import proxy.RequestProxy;
import service.CategoryServiceImpl;
import service.CustomerServiceImpl;

public class ListCommand extends Command{
	
	public ListCommand(Map<String,Proxy> pxy) {
		super(pxy);
		RequestProxy req = (RequestProxy) pxy.get("req");
		HttpServletRequest request = req.getRequest();
			Proxy paging = new Pagination();
			paging.carryOut(request);
			Proxy pagePxy = new PageProxy();
			pagePxy.carryOut(paging);
			String flag = request.getParameter("cmd").toUpperCase();
			List<?> list = new ArrayList<>();
			
			switch(Action.valueOf(flag)) {
			case CUS_LIST:
				list = CustomerServiceImpl
				.getInstance()
				.bringCustomerList(pagePxy);
				System.out.println("리스트커맨더안에 CUS_LIST결과"+list);
				break;
				
			case CATE_LIST:
				list = CategoryServiceImpl
				.getInstance()
				.bringCategoryList(pagePxy);
				System.out.println("리스트커맨더안에 CATE_LIST결과"+list);
				break;
			
			default:
				break;
			}
		request.setAttribute("list", list);
		request.setAttribute("pagination", paging);
		 
		
	}
}
	
	
	


