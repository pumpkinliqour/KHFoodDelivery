package com.kh.food.customer.member.model.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kh.food.admin.notice.model.vo.MemberNotice;
import com.kh.food.customer.member.model.dao.MemberDao;
import com.kh.food.customer.member.model.vo.Member;
import com.kh.food.owner.menu.model.vo.Menu;
import com.kh.food.owner.store.model.vo.Store;
import com.kh.food.qna.model.vo.MemberQna;

@Service
public class MemberServiceImpl implements MemberService {

	

	@Autowired
	MemberDao dao;

	@Override
	public int updateMemberQna(MemberQna mq) {
		return dao.updateMemberQna(mq);
	}
	@Override
	public int deleteMemberQna(int no) {
		return dao.deleteMemberQna(no);
	}
	@Override
	public MemberQna memberDetailQna(int no) {
		return dao.memberDetailQna(no);
	}
	@Override
	public List<MemberQna> selectmemberQna(String memberId){
		return dao.selectmemberQna(memberId);
	}

	@Inject
	private JavaMailSender mailSender;

	

	@Override
	public List<Store> selectAllStore(int cPage,int numPerPage){
		return dao.selectAllStore(cPage,numPerPage);
	}
	
	@Override
	public List<Store> menuInfo(int businessCode) {
		return dao.menuInfo(businessCode);
	}
	
	@Override
	public int drop(String memberId) {
		return dao.drop(memberId);
	}
	@Override
	public int selectMenuCount() {
		return dao.selectMenuCount();
	}
	
	
	@Override
	public List<Store> selectStore(String category,int cPage,int numPerPage){
		return dao.selectStore(category,cPage,numPerPage);
	}
	
	@Override
	public Member selectMember(String memberId) {
		// TODO Auto-generated method stub
		return dao.selectMember(memberId);
	}
	
	@Override
	public int memberEnroll(Member m) {
		System.out.println("서비스"+m);
		return dao.memberEnroll(m);
	}
	
	@Override
	public int checkId(String memberId) {
		return dao.checkId(memberId);
	}
	
	@Override
	public int checkNick(String nickName) {
		return dao.checkNick(nickName);
	}

	@Override
	public Map<String,String> login(Map<String,String> map){
		return dao.login(map);
	}
	@Override
	public int update(Member m) {
		return dao.update(m);
	}

	@Override
	public List<Map<String,String>> selectCategoryList(int businessCode) {
		return dao.selectCategoryList(businessCode);
	}


	//아이디찾기
	@Override
	public Map<String, String> selectSearchId(Map<String, String> map) {
		// TODO Auto-generated method stub
		return dao.selectSearchId(map);
	}

	//비밀번호찾기
	@Override
	public Map<String, String> selectConfirmEmail(Map<String, String> map) {
		// TODO Auto-generated method stub
		return dao.selectConfirmEmail(map);
	}

	@Override
	public int updatePw(Map<String, String> map) {
		// TODO Auto-generated method stub
		return dao.updatePw(map);
	}
	

	@Override
	public List<Map<String, String>> selectMenuList(int menuCategoryCode,int businessCode) {
		return dao.selectMenuList(menuCategoryCode, businessCode);
	}


	@Override
	public Menu menuSelect(int menuCode) {
		return dao.menuSelect(menuCode);
	}
	@Override
	public int kakaoLogin(Map<String, String> map) {
		return dao.kakaoLogin(map);
	}
	@Override
	public int kakaoEnrollEnd(Member m) {
		return dao.kakaoEnrollEnd(m);
	}
	
	
	// 회원 공지사항
	@Override
	public List<MemberNotice> selectMemberNotice(int cPage,int numPerPage) {
		return dao.selectMemberNotice(cPage, numPerPage);
	}
}
