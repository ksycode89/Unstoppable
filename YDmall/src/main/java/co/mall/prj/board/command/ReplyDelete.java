package co.mall.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class ReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 삭제

		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		BoardVO re = new BoardVO();
		List <BoardVO> replyList = new  ArrayList<BoardVO>();

		vo.setBoardId(Integer.valueOf(request.getParameter("bId")));
		vo.setBoardRole(request.getParameter("role"));
		
		vo = dao.boardSelect(vo); // 게시글 불러오기
		
		re.setBoardReplyTo(Integer.valueOf(request.getParameter("bId")));
		re.setBoardRole(request.getParameter("role"));
		re.setMemberId((request.getParameter("rmId")));
		re.setBoardDate(request.getParameter("date"));

		
		int n = dao.replyDelete(re); //삭제 실행.

		replyList = dao.replySelectList(re);

		String viewPage = "board/boardError";

		if (n != 0) {
		
			request.setAttribute("vo", vo);
			request.setAttribute("replyList",replyList);
			
			if (vo.getBoardRole().equals("R")) {
				viewPage = "board/reviewSelect";
			} else if (vo.getBoardRole().equals("Q")) {
				viewPage = "board/qnaSelect";
			}
			
		} else {
			request.setAttribute("message", "삭제 실패!");
		}
		return viewPage;
	}

}
