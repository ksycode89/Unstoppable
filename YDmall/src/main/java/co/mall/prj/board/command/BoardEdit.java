package co.mall.prj.board.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.mall.prj.board.service.BoardService;
import co.mall.prj.board.service.BoardServiceImpl;
import co.mall.prj.board.service.BoardVO;
import co.mall.prj.common.Command;

public class BoardEdit implements Command {
	private String saveFolder = "D:\\Users\\USER\\git\\secondProject\\YDmall\\src\\main\\webapp\\img\\resources"; //실제 파일이 저장되는 공간.
	//private String saveFolder = "D:\\Users\\admin\\git\\secondProject\\YDmall\\src\\main\\webapp\\img\\resources"; //실제 파일이 저장되는 공간.
	private String charactSet = "utf-8"; // 한글깨짐 방지
	private int maxSize = 1024*1024*1024; // 업로드할 파일 최대 사이즈.

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 게시글 수정
		
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO(); // 새로운 객체 (아무것도 안들어있다.)
		String viewPage = "board/boardError";
		String filename="";
		String originalFileName="";
		

		try {
			MultipartRequest multi = 
				new MultipartRequest(request, saveFolder, maxSize, charactSet, new DefaultFileRenamePolicy());
			//파일 저장
			
			filename = multi.getFilesystemName("boardAttach"); // 물리적위치에 파일 저장
			originalFileName= multi.getOriginalFileName("boardAttach"); // 실제 파일명
			
			vo.setBoardId(Integer.valueOf(multi.getParameter("boardId")));
			vo.setMemberId(multi.getParameter("memberId"));
			vo.setBoardDate(multi.getParameter("boardDate"));
			vo.setBoardTitle(multi.getParameter("boardTitle"));
			vo.setBoardContent(multi.getParameter("boardContent"));
			vo.setBoardAttach(originalFileName);
			vo.setBoardAttachDir(saveFolder+File.separator+filename);
			vo.setBoardRole(multi.getParameter("boardRole"));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 파일 업로드 된 것 저장 end
		
		
		// 첨부파일 처리 하고
		
		int n = dao.boardUpdate(vo);
		if(n !=0) {
			vo=dao.boardSelect(vo);
			request.setAttribute("vo", vo);
			viewPage = "board/noticeSelect"; // 수정완료 시 목록으로 돌아감.
		} else {
			request.setAttribute("message", "데이터가 수정되지 않았습니다.");
		}
		return viewPage;
	}

}
