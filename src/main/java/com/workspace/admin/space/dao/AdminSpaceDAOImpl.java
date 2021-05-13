package com.workspace.admin.space.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.workspace.client.space.vo.SpaceVO;

@Repository
public class AdminSpaceDAOImpl implements AdminSpaceDAO {
	
	@Autowired
	private SqlSession session;
	
	// 사무공간 공간명에 사용할 시퀀스 조회
	@Override
	public int findSeq() {
		return session.selectOne("findSeq");
	}

	// 사무공간 등록
	@Override
	public int spaceInsert(SpaceVO svo) {
		return session.insert("spaceInsert", svo);
	}

}
