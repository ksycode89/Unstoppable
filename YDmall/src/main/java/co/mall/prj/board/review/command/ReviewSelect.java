package co.mall.prj.board.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class ReviewSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 상세보기 및 덧글 리스트(미완성)

		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		BoardVO re = new BoardVO();
		List <BoardVO> replyList = new  ArrayList<BoardVO>();
		
		String viewPage = "board/boardError";

		vo.setBoardId(Integer.valueOf(request.getParameter("bId"))); // String을 int로 변환.
		vo.setBoardRole(request.getParameter("role"));
		
		re.setBoardReplyTo(Integer.valueOf(request.getParameter("bId")));
		re.setBoardRole("R");
	 System.out.println("vo "+ vo);
	 System.out.println("re " +re);
	 
		replyList= dao.replySelectList(re);
		
		
			dao.boardHitUpdate(vo); // 조회수 증가
			vo = dao.boardSelect(vo);
			
			if(vo != null) {
				request.setAttribute("vo", vo);
				request.setAttribute("replyList",replyList);
			}
			
			return "board/reviewSelect";
		}


}
