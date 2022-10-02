package co.mall.prj.board.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class QnaSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 상세보기
		
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		List<BoardVO> replyList = new ArrayList<BoardVO>();
		
		vo.setBoardId(Integer.valueOf(request.getParameter("id"))); // String을 int로 변환.
		vo.setBoardRole(request.getParameter("role"));
		//replyList=
		
		dao.boardHitUpdate(vo); // 글 조회 시 조회수 증가
		vo= dao.boardSelect(vo);
		
		if(vo != null) {
			request.setAttribute("vo", vo);	
			request.setAttribute("replyList", replyList);
		}
		
		return "board/qnaSelect";
	}

}
