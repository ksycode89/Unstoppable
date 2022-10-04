package co.mall.prj.product.Command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class ProductRecommend implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		List<ProductVO> relist = new ArrayList<>();
			
		vo.setProductMajor(request.getParameter("pMajor"));
		relist = dao.productMajorList(vo);
		request.setAttribute("relist", relist);
		
		return "product/productDetail";
	}

}
