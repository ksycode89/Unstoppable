package co.mall.prj.product.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;

public class ProductManageRegistForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 상품 정보 등록 폼 호출
		return "product/productManageRegistForm";
	}

}
