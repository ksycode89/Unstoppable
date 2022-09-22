package co.mall.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.command.Main;
import co.mall.prj.common.Command;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.yd")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/main.yd", new Main());

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		System.out.println("page : " + page);
	
		Command command = map.get(page);

		String viewPage = command.exec(request, response);

		System.out.println("커맨드아래 : " + viewPage);

		if (!viewPage.endsWith(".yd")) {

			viewPage = viewPage + ".tiles";
			
			System.out.println("tiles 체크 : " + viewPage);

			RequestDispatcher dis = request.getRequestDispatcher(viewPage);
			dis.forward(request, response);

		} else {
			response.sendRedirect(viewPage);
		}

	}

}
