package com.workspace.client.space.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.workspace.client.space.dao.SpaceDAO;
import com.workspace.client.space.vo.SpaceVO;

@Service
@Transactional
public class SpaceServiceImpl implements SpaceService {

	@Autowired
	private SpaceDAO spaceDAO;

	// 사무공간 조회
	@Override
	public List<SpaceVO> spacePrivateList() {
		List<SpaceVO> spacePrivateList = null;
		spacePrivateList = spaceDAO.spacePrivateList();
		return spacePrivateList;
	}

	// 사무공간 상세페이지 구현
	@Override
	public SpaceVO spacePrivateDetail(SpaceVO svo) {
		SpaceVO detail = null;
		detail = spaceDAO.spacePrivateDetail(svo);
		return detail;
	}

}
