package co.mall.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mall.prj.common.Command;

public class Best implements Command {
	
	
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("name");
		System.out.println("session id "+id);
		return "page/best";
	}

}
