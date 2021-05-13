package com.workspace.client.space.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.workspace.client.space.dao.SpaceDAO;
import com.workspace.client.space.vo.SpaceVO;

@Service
@Transactional
public class SpaceServiceImpl implements SpaceService {
	
	@Autowired
	private SpaceDAO spaceDao;
	
	//사무공간 상세페이지 구현
	@Override
	public SpaceVO spacePrivateDetail(SpaceVO svo) {
		SpaceVO detail = null;
		detail = spaceDao.spacePrivateDetail(svo);
		return detail;
	}

}
