package com.workspace.client.space.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.workspace.client.space.service.SpaceService;
import com.workspace.client.space.vo.SpaceVO;

@Controller

@RequestMapping(value = "/space")
public class SpaceController {
	private Logger log = LoggerFactory.getLogger(SpaceController.class);

	@Autowired
	private SpaceService spaceService;

	// 사무공간 리스트 구현
	@RequestMapping(value = "/spacePrivateList", method = RequestMethod.GET)
	public String SpacePrivateList(Model model) {
		System.out.println("호출 성공");
		log.info("SpacePrivateList 호출 성공");

		List<SpaceVO> spacePrivateList = spaceService.spacePrivateList();

		model.addAttribute("spacePrivateList", spacePrivateList);
		model.addAttribute("data");

		return "space/spacePrivateList";
	}

	/************************************************
	 * 사무공간 상세페이지 구현
	 ***********************************************/
	@RequestMapping(value = "/SpacePrivateDetail", method = RequestMethod.GET)
	public String spacePrivateDetail(@ModelAttribute SpaceVO svo, Model model) {
		log.info("SpacePrivateDetail 호출 성공");
		log.info("s_name= " + svo.getS_name());

		SpaceVO detail = new SpaceVO();
		detail = spaceService.spacePrivateDetail(svo);

		if (detail != null && (!detail.equals(""))) {
			detail.setS_exp(detail.getS_exp().toString().replaceAll("\n", "<br>"));
		}

		model.addAttribute("detail", detail);
		return "client/space/SpacePrivateDetail";
	}

}
