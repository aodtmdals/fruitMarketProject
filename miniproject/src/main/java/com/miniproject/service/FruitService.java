package com.miniproject.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.miniproject.dao.IFruitDAO;
import com.miniproject.model.FruitVO;

@Service
public class FruitService implements IFruitService {
	 @Autowired
	  @Qualifier("IFruitDAO")
	   private IFruitDAO dao;

	@Override
	public ArrayList<FruitVO> ctgListFruit(String ctgId) {
		  return dao.ctgListFruit(ctgId);
	}

	@Override
	public ArrayList<FruitVO> listAllFruit() {
		return dao.listAllFruit();
	}

	@Override
	public void insertFruit(FruitVO fru) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateFruit(FruitVO fru) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteFruit(String fruNo) {
		// TODO Auto-generated method stub

	}

	@Override
	public FruitVO detailViewFruit(String fruNo) {
		return dao.detailViewFruit(fruNo);
		
	}

	@Override
	public String fruNoCheck(String fruNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<FruitVO> FruitSearch(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.FruitSearch(map);
	}

	@Override
	public ArrayList<FruitVO> listBestFruit() {
		// TODO Auto-generated method stub
		return dao.listBestFruit();
	}

}
