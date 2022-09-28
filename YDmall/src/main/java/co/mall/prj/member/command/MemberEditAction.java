package co.mall.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mall.prj.common.Command;
import co.mall.prj.member.service.MemberService;
import co.mall.prj.member.service.MemberServiceImpl;
import co.mall.prj.member.service.MemberVO;

public class MemberEditAction implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse reponse) {
		// 회원정보수정 처리 
				MemberService dao = new MemberServiceImpl(); //초기화
				MemberVO vo = new MemberVO(); //memberVO타입으로 생성
				//vo불러올때 필요한 정보
				vo.setMemberId(request.getParameter("memberId")); // 1
				vo.setMemberPassword(request.getParameter("memberPassword"));// 2
				vo.setMemberName(request.getParameter("memberName")); // 3
				vo.setMemberTel(request.getParameter("memberTel")); // 5
				vo.setMemberAddress(request.getParameter("memberAddress")); // 7
				vo.setMemberGender(request.getParameter("memberGender")); // 9
				vo.setMemberBirth(request.getParameter("memberBirth")); // 10
				vo.setMemberEmail(request.getParameter("memberEmail")); // 11
				System.out.println("내 정보수정 페이지 도착");
				System.out.println("수정페이지 vo : " + vo);
				String viewPage = "member/memberMessage";
				int result = dao.memberUpdate(vo);
				if(result != 0) {
					vo = dao.memberSelect(vo);
					request.setAttribute("message", vo.getMemberName() + "님의 정보가 수정되었습니다.");
				}else {
					request.setAttribute("message", "회원정보가 수정되지 않았습니다.");
				}
		return viewPage;
	}

}
