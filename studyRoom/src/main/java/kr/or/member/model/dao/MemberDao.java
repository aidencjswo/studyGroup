package kr.or.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Member;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int join(Member m) {
		return sqlSession.insert("member.join",m);
	}

	public int selectMemberId(String memberId) {
		Member member = sqlSession.selectOne("member.selectMemberId",memberId);
		if(member.getMemberId() == "") {
			//사용가능한 아이디
			return 1;
		}else {
			//사용못하는 아이디
			return 0;
		}
	}
}
