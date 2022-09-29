package co.mall.prj.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.cart.service.CartServiceImpl;
import co.mall.prj.cart.service.CartVO;
import co.mall.prj.common.Command;

public class CartInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductName(request.getParameter("productName"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		vo.setProductAttach(request.getParameter("productAttach"));
		vo.setCartQuantity(Integer.valueOf(request.getParameter("cartQuantity")));

		String viewPage = "";
		int no = dao.cartInsert(vo);

		if (no != 0) {
			viewPage = "cart.yd";
		}

		return viewPage;
	}

}