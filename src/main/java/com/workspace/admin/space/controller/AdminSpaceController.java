package com.workspace.admin.space.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.workspace.admin.space.service.AdminSpaceService;
import com.workspace.client.common.file.FileUploadUtil;
import com.workspace.client.space.vo.SpaceVO;

@Controller
@RequestMapping(value = "/admin/space")
public class AdminSpaceController {
	
	@Autowired
	private AdminSpaceService adminSpaceService;
	
	// 사무공간 리스트 출력
	@RequestMapping(value = "/privateList", method = RequestMethod.GET)
	public String privateList() {
		return "admin/space/adminSpacePrivateList";
	}
	
	// 사무공간 등록 페이지 출력
	@RequestMapping(value = "/privateReg", method = RequestMethod.GET)
	public String privateReg() {
		return "admin/space/adminSpacePrivateReg";
	}
	
	// 사무공간 등록
	@RequestMapping(value = "/privateInsert", method = RequestMethod.POST)
	public String privateInsert(@RequestParam("s_pop") String s_pop,
								@RequestParam("s_type") String s_type,
								@RequestParam("s_price") String s_price,
								@RequestParam("s_state") String s_state,
								@RequestParam("s_exp") String s_exp,
								@RequestParam("file") MultipartFile file,
								@RequestParam("s_note") String s_note,
								Model model,
								HttpServletRequest request) throws IllegalStateException, IOException {
		
		System.out.println("privateInsert 호출 성공");
		
		int result = 0; // 사무공간 DB insert 실행 결과
		int seq = 0; // 공간명 설정에 필요한 시퀀스
		String url = ""; 
		
		// SpaceVO 인스턴스 생성 및 필드값 설정
		SpaceVO svo = new SpaceVO();
		svo.setS_pop(s_pop);
		svo.setS_type(s_type);
		svo.setS_price(Integer.parseInt(s_price));
		svo.setS_exp(s_exp);
		svo.setS_note(s_note);
		svo.setS_state(s_state);
		
		// SpaceVO 인스턴스 공간명 설정
		try {
			seq = adminSpaceService.findSeq(); // 시퀀스 받아오기
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (seq >= 1 && seq <= 9) {
			if (s_type.equals("1인 데스크")) {
				svo.setS_name("DESK10" + seq);
			} else if (s_type.equals("프라이빗 오피스 1인실")) {
				svo.setS_name("OFFICE10" + seq);
			} else if (s_type.equals("프라이빗 오피스 2-4인실")) {
				svo.setS_name("OFFICE20" + seq);
			} else if (s_type.equals("프라이빗 오피스 5-7인실")) {
				svo.setS_name("OFFICE50" + seq);
			} else if (s_type.equals("프라이빗 오피스 8-10인실")) {
				svo.setS_name("OFFICE80" + seq);
			}
		} else {
			if (s_type.equals("1인 데스크")) {
				svo.setS_name("DESK1" + seq);
			} else if (s_type.equals("프라이빗 오피스 1인실")) {
				svo.setS_name("OFFICE1" + seq);
			} else if (s_type.equals("프라이빗 오피스 2-4인실")) {
				svo.setS_name("OFFICE2" + seq);
			} else if (s_type.equals("프라이빗 오피스 5-7인실")) {
				svo.setS_name("OFFICE5" + seq);
			} else if (s_type.equals("프라이빗 오피스 8-10인실")) {
				svo.setS_name("OFFICE8" + seq);
			}
		}
		
		// 공간사진 파일 업로드 후 SpaceVO 인스턴스 파일명 설정
		if (file != null) {
			String s_photo = FileUploadUtil.fileUpload(file, request, "space");
			svo.setS_photo(s_photo);
		}
		
		// 사무공간 DB insert 실행
		result = adminSpaceService.spaceInsert(svo);
		if (result == 1) {
			url = "/admin/space/privateList"; // 등록 성공 시 사무공간 리스트로 돌아가기
		} else {
			url = "/admin/space/privateReg"; // 등록 실패 시 사무공간 등록 페이지로 돌아가기
		}
		
		return "redirect:" + url;
	}
	
	// 공용공간 리스트 출력
	@RequestMapping(value = "/publicList", method = RequestMethod.GET)
	public String publicList() {
		return "admin/space/adminSpacePublicList";
	}
}
