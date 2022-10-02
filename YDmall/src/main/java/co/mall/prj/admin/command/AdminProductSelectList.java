package co.mall.prj.admin.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class AdminProductSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		ProductService dao = new ProductServiceImpl();
		List<ProductVO> list = new ArrayList<ProductVO>();
		list = dao.productSelectList();
		request.setAttribute("list", list);
		
		return "admin/adminPage/adminProductSelectList";
	}

}
