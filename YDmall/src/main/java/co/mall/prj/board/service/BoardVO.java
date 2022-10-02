package co.mall.prj.board.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {
	
	private int boardId; // 게시글 번호
	private String memberId; // 게시글 작성자
	private String boardDate; // 작성일자
	private String boardTitle; // 제목
	private String boardContent; // 게시글 내용
	private int boardHit; // 조회수
	private String boardAttach; // 파일 업로드
	private String boardAttachDir; // 물리적 파일 저장 위치
	private String boardRole; // 게시판 구분용 role ex)R=리뷰, Q=QnA, N=공지사항 등
	private int boardReplyTo; // 덧글 구분용 ex) 1=게시글 1의 덧글
}
