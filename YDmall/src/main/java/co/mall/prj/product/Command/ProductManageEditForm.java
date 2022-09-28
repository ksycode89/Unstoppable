package co.mall.prj.product.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class ProductManageEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 상품 정보 수정 폼
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("id")));
		vo = dao.productSelect(vo);
		request.setAttribute("vo", vo);
		return "product/productManageEditForm";
	}

}
