package com.workspace.admin.space.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.workspace.admin.space.dao.AdminSpaceDAO;
import com.workspace.client.space.vo.SpaceVO;

@Service
@Transactional
public class AdminSpaceServiceImpl implements AdminSpaceService {
	
	@Autowired
	private AdminSpaceDAO adminSpaceDAO;

	// 사무공간 공간명에 사용할 시퀀스 조회
	@Override
	public int findSeq() {
		return adminSpaceDAO.findSeq();
	}
	
	// 사무공간 등록
	@Override
	public int spaceInsert(SpaceVO svo) {
		int result = 0;
		try {
			result = adminSpaceDAO.spaceInsert(svo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

}
