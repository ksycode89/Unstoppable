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

import co.mall.prj.board.command.Notice;
import co.mall.prj.cart.command.Cart;
import co.mall.prj.cart.command.cartDelete;
import co.mall.prj.command.Best;
import co.mall.prj.command.Checkout;
import co.mall.prj.command.Main;
import co.mall.prj.command.Shop;
import co.mall.prj.common.Command;
import co.mall.prj.member.command.Login;
import co.mall.prj.member.command.Member;
import co.mall.prj.member.command.SignUP;
import co.mall.prj.page.command.Bottom;
import co.mall.prj.page.command.Outer;
import co.mall.prj.page.command.Top;
import co.mall.prj.product.Command.ProductDetail;
import co.mall.prj.product.Command.ProductManageEdit;
import co.mall.prj.product.Command.ProductManageEditForm;
import co.mall.prj.product.Command.ProductManageList;
import co.mall.prj.product.Command.ProductManageRegist;
import co.mall.prj.product.Command.ProductManageRegistForm;
import co.mall.prj.product.Command.ProductManageRemove;
import co.mall.prj.sales.command.Order;

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
		map.put("/shop.yd", new Shop());
		map.put("/cart.yd", new Cart()); //장바구니 리스트
		map.put("/cartDelete.yd", new cartDelete()); //장바구니 리스트 개별삭제
		
		map.put("/checkout.yd", new Checkout());
		map.put("/productDetail.yd", new ProductDetail());
		map.put("/member.yd", new Member());
		
		map.put("/top.yd", new Top());
		map.put("/bottom.yd", new Bottom());
		map.put("/outer.yd", new Outer());
		
		map.put("/best.yd", new Best());
		map.put("/signUp.yd", new SignUP());
		map.put("/login.yd", new Login());
		
		map.put("/notice.yd", new Notice());
		map.put("/order.yd", new Order());
//		map.put("/productDetail2.yd", new ProductDetail());
		
		map.put("/productManageList.yd", new ProductManageList()); // 관리자용 상품 목록
		map.put("/productManageRegist.yd", new ProductManageRegist()); // 관리자용 상품 정보 등록
		map.put("/productManageRegistForm.yd", new ProductManageRegistForm()); // 상품 정보 등록 폼
		map.put("/productManageEdit.yd", new ProductManageEdit()); // 관리자용 상품 정보 수정
		map.put("/productManageEditForm.yd", new ProductManageEditForm()); // 상품 정보 수정 폼
		map.put("/productManageRemove.yd", new ProductManageRemove()); // 관리자용 상품 정보 삭제

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
