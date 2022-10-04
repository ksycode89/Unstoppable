package co.mall.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;
import co.mall.prj.product.service.ProductService;
import co.mall.prj.product.service.ProductServiceImpl;
import co.mall.prj.product.service.ProductVO;

public class Main implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		List<BoardVO> blist = new ArrayList<>();
		BoardService boardDAO = new BoardServiceImpl();
		
		ProductService dao = new ProductServiceImpl();
		List<ProductVO> list = new ArrayList<>();
		list = dao.productSelectList();
		request.setAttribute("plist", list);
		
		blist = boardDAO.mainViews();
		System.out.println("Main" + blist);
		request.setAttribute("blist", blist);
		
		return "main/main";
	}

}
