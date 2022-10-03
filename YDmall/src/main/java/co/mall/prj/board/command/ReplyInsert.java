package co.mall.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class ReplyInsert implements Command {
	// 덧글 등록!!!

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {

		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		BoardVO re = new BoardVO();		
		List <BoardVO> replyList = new  ArrayList<BoardVO>();
		int n;
		
		String viewPage = "board/boardError";
		
		vo.setBoardId(Integer.valueOf(request.getParameter("bId"))); // String을 int로 변환.
		vo.setBoardRole(request.getParameter("role"));
		
		vo = dao.boardSelect(vo); // 게시글 불러오기
		request.setAttribute("vo", vo);
		
		re.setBoardReplyTo(Integer.valueOf(request.getParameter("bId"))); // 덧글 작성할 글번호
		re.setMemberId(request.getParameter("mId")); // 덧글 작성자(로그인ID) 
		re.setBoardContent(request.getParameter("reply")); // 입력한 덧글 내용
		re.setBoardRole(request.getParameter("role")); // 게시글 분류

		System.out.println(re.getBoardContent());
		
		if(re.getBoardContent().equals("undefined")) { //덧글이 없으면 insert SQL 실행하지 않는다
		
			n = 123;
		
		} else {
		
		n = dao.replyInsert(re); // 덧글 등록 SQL 실행
		replyList= dao.replySelectList(re); // 덧글 등록이므로 조회수는 증가하지 않는다.
		
		}	
		if (n != 0) {
			System.out.println(n);
			request.setAttribute("re", re);
			request.setAttribute("replyList",replyList);

			if (re.getBoardRole().equals("R")) {
				viewPage = "board/reviewSelect";
			} else if (re.getBoardRole().equals("Q")) {
				viewPage = "board/qnaSelect";
			}
		} else { // 대신 n이 0이면...
			request.setAttribute("message", "덧글 등록이 실패했습니다.");
		}
		return viewPage;
	}

}
