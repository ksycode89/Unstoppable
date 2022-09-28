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

import co.mall.prj.admin.command.AdminChart;
import co.mall.prj.admin.command.AdminMemberSelectList;
import co.mall.prj.admin.command.AdminPage;
import co.mall.prj.board.command.Notice;
import co.mall.prj.cart.command.Cart;
import co.mall.prj.command.Best;
import co.mall.prj.command.Checkout;
import co.mall.prj.command.Main;
import co.mall.prj.command.Shop;
import co.mall.prj.common.Command;
import co.mall.prj.member.command.AjaxMemberIdCheck;
import co.mall.prj.member.command.Login;
import co.mall.prj.member.command.Logout;
import co.mall.prj.member.command.MemberDelete;
import co.mall.prj.member.command.MemberDeleteAction;
import co.mall.prj.member.command.MemberEdit;
import co.mall.prj.member.command.MemberEditAction;
import co.mall.prj.member.command.MemberInsert;
import co.mall.prj.member.command.MemberLogin;
import co.mall.prj.member.command.MemberLoginForm;
import co.mall.prj.member.command.MemberLogout;
import co.mall.prj.member.command.MemberMyPage;
import co.mall.prj.member.command.MemberOrder;
import co.mall.prj.member.command.MemberOrderHistory;
import co.mall.prj.member.command.MemberSelect;
import co.mall.prj.member.command.SignUP;
import co.mall.prj.page.command.Bottom;
import co.mall.prj.page.command.Outer;
import co.mall.prj.page.command.Top;
import co.mall.prj.product.Command.ProductDetail;
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
		map.put("/cart.yd", new Cart());
		map.put("/checkout.yd", new Checkout());
		map.put("/productDetail.yd", new ProductDetail());

		map.put("/top.yd", new Top());
		map.put("/bottom.yd", new Bottom());
		map.put("/outer.yd", new Outer());

		map.put("/best.yd", new Best());

		map.put("/notice.yd", new Notice());
		map.put("/order.yd", new Order());
		map.put("/admin.yd", new AdminPage());
		map.put("/adminChart.yd", new AdminChart());

		// member 명령집단 저장
		map.put("/signUp.yd", new SignUP());
		map.put("/login.yd", new Login());
		map.put("/logout.yd", new Logout());
		map.put("/memberLoginForm.yd", new MemberLoginForm()); // 로그인 폼
		map.put("/memberLogin.yd", new MemberLogin()); // 폼 액션 -> 로그인
		//map.put("/memberLogout.yd", new MemberLogout()); // 로그아웃
		map.put("/memberInsert.yd", new MemberInsert()); // 회원가입
		map.put("/ajaxMemberIdCheck.yd", new AjaxMemberIdCheck()); // 아이디 중복체크
		// member 상세페이지 -> 주문 조회 / 구매내역 / 수정 / 탈퇴 만들기
		map.put("/memberMyPage.yd", new MemberMyPage()); // mypage(상세정보) 폼
		map.put("/memberOrderHistory.yd", new MemberOrderHistory()); // 구매내역
		map.put("/adminMemberSelectList.yd", new AdminMemberSelectList());
		map.put("/memberDelete.yd", new MemberDelete()); //회원탈퇴 폼
		map.put("/memberDeleteAction.yd", new MemberDeleteAction()); //탈퇴처리
		map.put("/memberEditAction.yd", new MemberEditAction()); // 회원정보수정
		map.put("/memberEdit.yd", new MemberEdit()); //내정보수정 폼
		map.put("/memberOrder.yd", new MemberOrder()); //주문현황 
		map.put("/memberSelect.yd", new MemberSelect()); // 내 정보조회
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
			if (viewPage.startsWith("ajax:")) { //ajax를 사용할 때
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
				if (viewPage.startsWith("no:")) { // Tiles 적용 안할때
				//= if (viewPage.startsWith("noTiles:")) {}
					//viewPage = "/WEB-INF/views/" + viewPage + ".jsp"; 
					
					viewPage = "/WEB-INF/views/" + viewPage.substring(3) + ".jsp";
					
				} else {
					viewPage = viewPage + ".tiles"; // tiles layout 사용
				}
				
				System.out.println("viewPage: " + viewPage);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else {
			response.sendRedirect(viewPage); //.do return
		}

	}

}
