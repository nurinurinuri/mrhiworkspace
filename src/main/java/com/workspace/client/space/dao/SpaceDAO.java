package com.workspace.client.space.dao;

import java.util.List;

import com.workspace.client.space.vo.SpaceVO;

public interface SpaceDAO {
	public List<SpaceVO> spacePrivateList();	// 사무공간조회
	public SpaceVO spacePrivateDetail(SpaceVO svo);

}
