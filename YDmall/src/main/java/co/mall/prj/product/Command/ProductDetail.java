package co.mall.prj.product.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class ProductDetail implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		return "product/productDetail";
	}

}
