package co.mall.prj.product.Command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class ProductDetail implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		List<ProductVO> list = new ArrayList<>();
		
		vo.setProductName(request.getParameter("pName"));
		vo.setProductEvent("BEST");
		list = dao.productRecommend(vo);
		request.setAttribute("relist", list) ;
		ProductVO detail = dao.productSelect(vo);
		request.setAttribute("detail", detail);
		
		
		return "product/productDetail";
	}

}
