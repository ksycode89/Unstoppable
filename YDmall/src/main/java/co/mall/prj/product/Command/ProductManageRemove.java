package co.mall.prj.product.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class ProductManageRemove implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductName(request.getParameter("productName"));
		String viewPage = "product/productError";
		int no = dao.productDelete(vo);
		if(no!=0) {
			viewPage = "productManageList.yd";
		} else {
			request.setAttribute("message", "ERROR!! 상품 정보 삭제에 실패했습니다.");
		}
		return viewPage;
	}

}
