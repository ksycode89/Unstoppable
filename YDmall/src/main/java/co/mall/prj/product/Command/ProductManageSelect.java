package co.mall.prj.product.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class ProductManageSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("pId")));
		ProductVO detail = dao.productSelect2(vo);
		request.setAttribute("detail", detail);
		
		return "admin/product/productManageSelect";
	}

}