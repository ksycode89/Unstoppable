package co.mall.prj.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	
	String exec(HttpServletRequest request , HttpServletResponse reponse) ;
}
