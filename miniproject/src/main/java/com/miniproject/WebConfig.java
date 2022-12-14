package com.miniproject;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// 프로젝트 외부 경로 접근 설정 
// 상품 이미지를 외부 폴더에 저장하고 출력하기 위해 필요
@Configuration
public class WebConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")
		//나중에 바꾸기
		.addResourceLocations("file:///C:/springWorkspace/spring_mini_project/fruitMarketProject/fruitImages/");					
	
	}
}

