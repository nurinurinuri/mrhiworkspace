package com.workspace.client.space.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.workspace.client.space.vo.SpaceVO;

@Repository
public class SpaceDAOImpl implements SpaceDAO {

	@Autowired
	private SqlSession session;
	
	//사무공간 상세페이지 구현 
	@Override
	public SpaceVO spacePrivateDetail(SpaceVO svo) {
		return (SpaceVO)session.selectOne("SpacePrivateDetail", svo);
	}

}
