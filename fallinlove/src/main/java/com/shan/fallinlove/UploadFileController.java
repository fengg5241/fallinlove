package com.shan.fallinlove;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.shan.fallinlove.model.UploadItem;

@Controller
public class UploadFileController {
	private String uploadFolderPath;
	ServletConfig config;

	public String getUploadFolderPath() {
		return uploadFolderPath;
	}

	public void setUploadFolderPath(String uploadFolderPath) {
		this.uploadFolderPath = uploadFolderPath;
	}

	@RequestMapping(value = "testUpload",method = RequestMethod.GET)
	public String getUploadForm(Model model) {
		model.addAttribute(new UploadItem());
		return "TestUpload";
	}

	@RequestMapping(value = "testUpload",method = RequestMethod.POST)
	public void create(UploadItem uploadItem, BindingResult result,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				System.err.println("Error: " + error.getCode() + " - "
						+ error.getDefaultMessage());
			}
			//return "TestUpload";
			return;
		}

		// Some type of file processing...
		System.err.println("-------------------------------------------");
		try {
			MultipartFile file = uploadItem.getFileData();
			String fileName = null;
			InputStream inputStream = null;
			OutputStream outputStream = null;
			if (file.getSize() > 0) {
				inputStream = file.getInputStream();
//				if (file.getSize() > 10000) {
//					System.out.println("File Size:::" + file.getSize());
//					return "/uploadfile";
//				}
				System.out.println("size::" + file.getSize());
				fileName = request.getRealPath("") + "/images/"
						+ file.getOriginalFilename();
				outputStream = new FileOutputStream(fileName);
				System.out.println("fileName:" + file.getOriginalFilename());

				int readBytes = 0;
				byte[] buffer = new byte[10000];
				while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1) {
					outputStream.write(buffer, 0, readBytes);
				}
				outputStream.close();
				inputStream.close();
				//在服务器路径生成文件
				File uploadFile = new File(fileName);  
	            FileCopyUtils.copy(file.getBytes(), uploadFile); 
	            System.out.println("fileName:" + file.getOriginalFilename());
	            System.out.println("getPath:" + uploadFile.getPath());
	            System.out.println("getAbsolutePath:" + uploadFile.getAbsolutePath());
	            System.out.println("getCanonicalPath:" + uploadFile.getCanonicalPath());
			}

			// ..........................................
			//session.setAttribute("uploadFile", file.getOriginalFilename());
		} catch (Exception e) {
			e.printStackTrace();
		}
		//return "redirect:/forms/uploadfileindex";
		return;
	}

}