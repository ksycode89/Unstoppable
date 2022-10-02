package co.mall.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 삭제

		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		List<BoardVO> list = new ArrayList<BoardVO>();

		vo.setBoardId(Integer.valueOf(request.getParameter("bId")));
		vo.setBoardRole(request.getParameter("role"));

		if (vo.getBoardRole().equals("N")) {
			list = dao.noticeSelectList();
		} else if (vo.getBoardRole().equals("R")) {
			list = dao.reviewSelectList();
		} else if (vo.getBoardRole().equals("Q")) {
			list = dao.qnaSelectList();
		}

		int n = dao.boardDelete(vo);

		String viewPage = "board/boardError";

		if (n != 0) {
			
			dao.boardIdMinus(vo);
			
			if (vo.getBoardRole().equals("N")) {
				viewPage = "noticeSelectList.yd";
			} else if (vo.getBoardRole().equals("R")) {
				viewPage = "reviewSelectList.yd";
			} else if (vo.getBoardRole().equals("Q")) {
				viewPage = "qnaSelectList.yd";
			}
			
		} else {
			request.setAttribute("message", "삭제 실패!");
		}
		return viewPage;
	}

}
