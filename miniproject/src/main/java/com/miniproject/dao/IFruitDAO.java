package com.miniproject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.miniproject.model.FruitVO;

public interface IFruitDAO {
	public ArrayList<FruitVO>ctgListFruit(String ctgId);
	public ArrayList<FruitVO> listAllFruit(); // 전체 상품 조회
	public ArrayList<FruitVO> listBestFruit(); //베스트 상품 조회
	public void insertFruit(FruitVO fru); // 상품 등록
	public void updateFruit(FruitVO fru); // 상품 수정
	public void deleteFruit(String fruNo); //상품 삭제
	public FruitVO detailViewFruit(String fruNo); // 상세 상품 조회
	public String fruNoCheck(String fruNo);
	public ArrayList<FruitVO>FruitSearch(HashMap<String,Object>map);//상품검색

}
