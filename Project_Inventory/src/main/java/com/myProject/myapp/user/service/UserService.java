package com.myProject.myapp.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myProject.myapp.user.mapper.IUserMapper;
import com.myProject.myapp.user.vo.UserVO;

@Service
public class UserService implements IUserService {
	
	@Autowired
	private IUserMapper mapper;

	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}

	@Override
	public void join(UserVO vo) {
		mapper.join(vo);
	}

	@Override
	public UserVO login(String id, String pw) {
		return mapper.login(id, pw);
	}

	@Override
	public UserVO getInfo(String id) {
		return mapper.getInfo(id);
	}

	@Override
	public void updateUser(UserVO vo) {
		mapper.updateUser(vo);
	}

	@Override
	public void deleteUser(String id, String pw) {
		// TODO Auto-generated method stub

	}

}