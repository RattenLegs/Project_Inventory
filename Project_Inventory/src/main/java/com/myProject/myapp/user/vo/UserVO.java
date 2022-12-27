package com.myProject.myapp.user.vo;

public class UserVO {
	private String UserId;
	private String UserPw;
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getUserPw() {
		return UserPw;
	}
	public void setUserPw(String userPw) {
		UserPw = userPw;
	}
	@Override
	public String toString() {
		return "UserVO [UserId=" + UserId + ", UserPw=" + UserPw + "]";
	}
	
	
}
