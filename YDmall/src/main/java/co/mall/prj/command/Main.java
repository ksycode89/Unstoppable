package co.mall.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class Main implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		
		List<BoardVO> blist = new ArrayList<>();
		BoardService boardDAO = new BoardServiceImpl();
		
		blist = boardDAO.mainViews();
		System.out.println("Main" + blist);
		request.setAttribute("blist", blist);
		
		return "main/main";
	}

}
