package com.gunwoo.myapp.biz.common;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.ClasspathPropertiesFileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.util.IOUtils;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class S3Service {

	final private AmazonS3 s3Client;
	

	String bucketName = "tis-teamproject";

	public S3Service() {
		this.s3Client = AmazonS3ClientBuilder
                .standard()
                .withCredentials(new ClasspathPropertiesFileCredentialsProvider())
                .withRegion("ap-northeast-2")
                .build();
	}

	// upload original image file
	public void uploadFile(MultipartFile image, String s3Path) {
		try {
			// set ObjectMatadata
			byte[] bytes = IOUtils.toByteArray(image.getInputStream());

			ObjectMetadata objectMetadata = new ObjectMetadata();
			objectMetadata.setContentLength(bytes.length);
			objectMetadata.setContentType(image.getContentType());

			// save in S3
			ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
			this.s3Client.putObject(this.bucketName, s3Path.replace(File.separatorChar, '/'), byteArrayInputStream,
					objectMetadata);

			byteArrayInputStream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String uploadObject(MultipartFile multipartFile, String storedFileName) throws IOException {

		String filePath = "upload/" + storedFileName;
		System.out.println("파일 업로드 경로 " + filePath);
		// 1. bucket name, 2. key : full path to the file 3. file : new File로 생성한 file
		// instance
		// 2. PutObjectRequest로 구현 가능
		s3Client.putObject(new PutObjectRequest(bucketName, filePath, multipartFile.getInputStream(), null));

		return s3Client.getUrl(bucketName, filePath).toString();
	}

}
