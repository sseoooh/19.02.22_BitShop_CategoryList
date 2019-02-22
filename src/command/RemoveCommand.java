package command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import domain.CustomerDTO;
import enums.Action;
import proxy.Proxy;
import proxy.RequestProxy;
import service.CustomerServiceImpl;

public class RemoveCommand extends Command{
	
	public RemoveCommand(Map<String,Proxy> pxy) {
		super(pxy);
		RequestProxy req = (RequestProxy) pxy.get("req");
		HttpServletRequest request = req.getRequest();
		
		HttpSession session = request.getSession();
		switch(Action.valueOf(request.getParameter("cmd").toUpperCase())) {
		
		case CUS_REMOVE:
			System.out.println("RemoveCommand안에 CUS_REMOVE를 탐");
			CustomerDTO cus = new CustomerDTO();
			cus.setCustomerID(request.getParameter("customer_id"));
		
			
			CustomerServiceImpl.getInstance().removeCustomer(cus);
		}
		
		
		
	}
}
