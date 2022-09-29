package co.mall.prj.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.cart.service.CartService;
import co.mall.prj.cart.service.CartServiceImpl;
import co.mall.prj.cart.service.CartVO;
import co.mall.prj.common.Command;

public class CartListDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		
		String viewPage = "";
		int d = dao.cartDelete(vo);
		
		if(d !=0) {
			dao.cartSelect(vo);
			viewPage = "cart.yd";
		}
		return viewPage;
	}
}
