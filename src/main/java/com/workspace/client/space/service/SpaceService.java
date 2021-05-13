package com.workspace.client.space.service;

import java.util.List;

import com.workspace.client.space.vo.SpaceVO;

public interface SpaceService {
	public List<SpaceVO> spacePrivateList();
	public SpaceVO spacePrivateDetail(SpaceVO svo);

}
