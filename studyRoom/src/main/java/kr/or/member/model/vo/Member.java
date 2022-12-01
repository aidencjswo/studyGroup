package kr.or.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Member {
	private String memberId;
	private int memberPw;
	private String memberName;
	private String phone;
	private String email;
	private String address;
}
