package co.mall.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class BoardEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 수정폼.
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		System.out.println(request.getParameter("bId"));
		
		vo.setBoardId(Integer.valueOf(request.getParameter("bId")));
		vo.setBoardRole(request.getParameter("role"));
		vo = dao.boardSelect(vo); // vo 객체에 select 쿼리로 조회한 값들 담기.
		
		request.setAttribute("vo", vo);
		
		return "board/boardEditForm";
	}

}
