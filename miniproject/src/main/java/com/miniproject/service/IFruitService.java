package com.miniproject.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.miniproject.model.FruitVO;
import com.miniproject.model.Fruit_reviewVO;

public interface IFruitService {
	public ArrayList<FruitVO>ctgListFruit(String ctgId);
	public ArrayList<FruitVO> listAllFruit(); // 전체 상품 조회
	public ArrayList<FruitVO> listBestFruit(); //베스트 상품 조회
	public void insertFruit(FruitVO fru); // 상품 등록
	public void updateFruit(FruitVO fru); // 상품 수정
	public void deleteFruit(String fruNo); //상품 삭제
	public FruitVO detailViewFruit(String fruNo); // 상세 상품 조회
	public String fruNoCheck(String fruNo);
	public ArrayList<FruitVO>FruitSearch(HashMap<String,Object>map);//상품검색
	public ArrayList<FruitVO> listalwaysFruit(); //언제나 상품
	public ArrayList<FruitVO> listrecomFruit(); //추천과일
	public ArrayList<FruitVO> fruitNameList(); //이름순과일
	public ArrayList<FruitVO> fruitNewestList(); //최신순과일

	public void insertReview(Fruit_reviewVO rew); // 리뷰 등록
	public ArrayList<Fruit_reviewVO> reviewListAll(); // 리뷰 보이기

}