package com.gunwoo.myapp.view;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gunwoo.myapp.biz.common.S3Service;
import com.gunwoo.myapp.biz.show.ShowService;
import com.gunwoo.myapp.biz.show.ShowVO;

@Controller
public class FileUploardController {

	@Autowired
	private S3Service s3Service;
	

	@Autowired
	private ShowService showService;
	// 파일 업로드 처리
	@RequestMapping(value = "/image.do", method = RequestMethod.POST)
	@ResponseBody
	public String uploadFile(ShowVO vo, MultipartFile file) throws Exception {
		
		String fileName = "";
		
		MultipartFile uploadFile = vo.getUpload();
		
		if (!uploadFile.isEmpty()) {
			fileName = uploadFile.getOriginalFilename();

			System.out.println(fileName);
			System.out.println(fileName + "업로드 동작");

			// ========= 서버에 파일 저장 ========= //
			String res = s3Service.uploadObject(uploadFile, fileName);
			System.out.println(res);
		}

		return "https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/upload/" + fileName;
		 
	}
	
	
	
}
