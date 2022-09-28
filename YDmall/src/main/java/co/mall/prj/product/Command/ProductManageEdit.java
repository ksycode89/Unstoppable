package co.mall.prj.product.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class ProductManageEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductSize(request.getParameter("productSize"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		vo.setProductQuantity(Integer.valueOf(request.getParameter("productQuantity")));
		vo.setProductEvent(request.getParameter("productEvent"));
		vo.setProductDefault(request.getParameter("productDefault"));
		vo.setProductAttach(request.getParameter("productAttach"));
		vo.setProductAttachDir(request.getParameter("productAttachDir"));
		vo.setProductExplain(request.getParameter("productExplain"));
		
		String viewPage = "product/productError";
		int no = dao.productUpdate(vo);
		if(no!=0) {
			viewPage = "productManageList.yd";
		} else {
			request.setAttribute("message", "ERROR!! 상품 정보 수정에 실패했습니다.");
		}
		return viewPage;
	}

}