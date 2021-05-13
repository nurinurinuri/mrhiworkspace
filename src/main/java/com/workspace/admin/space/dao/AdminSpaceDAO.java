package com.workspace.admin.space.dao;

import com.workspace.client.space.vo.SpaceVO;

public interface AdminSpaceDAO {
	
	// 사무공간 공간명에 사용할 시퀀스 조회
	public int findSeq();
	
	// 사무공간 등록
	public int spaceInsert(SpaceVO svo);

}
