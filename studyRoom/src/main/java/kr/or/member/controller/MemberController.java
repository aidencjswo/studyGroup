package kr.or.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.or.member.model.service.MemberService;
import kr.or.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/login.do")
	public String login(Member m) {
		
		return "1234";
	}
	
	@RequestMapping(value="/joinFrm.do")
	public String joinFrm() {
		return "member/joinFrm";
	}
	@RequestMapping(value="/join.do")
	public String join(Member m) {
		int result = service.join(m);
		
		return "member/joinFrm";
	}
	
	@ResponseBody
	@RequestMapping(value="/idChk.do")
	public String selectMemberId(String memberId) {
		int result = service.selectMemberId(memberId);
		System.out.println("찍히나요");
		return new Gson().toJson(result);
	}
}
