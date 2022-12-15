package com.miniproject.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miniproject.model.FruitVO;
import com.miniproject.model.Fruit_reviewVO;
import com.miniproject.service.FruitService;


@Controller
public class FruitController {
	 @Autowired
	 private FruitService service;
	 
	 @RequestMapping("/fruit/fruitAllList")
	 public String fruitAllList(Model model) {
		 ArrayList<FruitVO>fruList=service.listAllFruit();
		 model.addAttribute("fruList",fruList);
		 return "fruit/fruitCtgListView";
	 }
	 
	     @RequestMapping("/fruit/fruitCtgList/{ctgId}")
	     public String fruitCtgList(@PathVariable String ctgId,Model model) {
	    	 ArrayList<FruitVO>fruList=service.ctgListFruit(ctgId);
	    	 model.addAttribute("fruList",fruList);
	    	//System.out.println(fruList.get(0).getFruNo());
	    	 //System.out.println(fruList.get(0).getFruInfo());
	    	 return"fruit/fruitCtgListView";
	     }
	     
	  // 상품 상세 조회
	 	@RequestMapping("/fruit/detailViewFruit/{fruNo}")
	 	public String detailViewFruit(@PathVariable String fruNo, Fruit_reviewVO vo, Model model) {
	 		// 상품번호 전달하고 해당 상품 상세 정보 받아오기 (1개 상품에 관한 정보)
	 		FruitVO fru = service.detailViewFruit(fruNo);
	 		model.addAttribute("fru", fru);

			ArrayList<Fruit_reviewVO>rew=service.reviewListAll();
			model.addAttribute("rew",rew);
	 		return "fruit/fruitDetailView";
	 	}
	 	@RequestMapping("/fruit/fruitSearchForm")
		   public String fruitSearchForm() {
			    return "/fruit/fruitSearchForm";
		   }
		 
		   @RequestMapping("/fruit/fruitSearch")
		   public String fruitSearch(@RequestParam HashMap<String,Object>param,Model model){
			   ArrayList<FruitVO>fruList=service.FruitSearch(param);
			   model.addAttribute("fruList",fruList);
			   return"fruit/fruitSearchResultView";
			   
		   }

		   @RequestMapping("/fruit/fruitrecomList")
			 public String fruitrecomList(Model model) {
				 ArrayList<FruitVO>fruList=service.listrecomFruit();
				 model.addAttribute("fruList",fruList);
				 return "fruit/fruitCtgListView";
			 }
		   
		   @RequestMapping("/fruit/fruitNameList")
			 public String fruitNameList(Model model) {
				 ArrayList<FruitVO>fruList=service.fruitNameList();
				 model.addAttribute("fruList",fruList);
				 return "fruit/fruitCtgListView";
			 }
		   
		   
		   @RequestMapping("/fruit/fruitNewestList")
			 public String fruitNewestList(Model model) {
				 ArrayList<FruitVO>fruList=service.fruitNewestList();
				 model.addAttribute("fruList",fruList);
				 return "fruit/fruitCtgListView";
			 }
		   
		   
		   @RequestMapping("/fruit/insertReview") 
		   public String insertReview(Fruit_reviewVO vo, HttpSession session, Model model) {
			   
			   String memId = (String)session.getAttribute("sid"); 
			   vo.setMemId(memId);
			   service.insertReview(vo);
			   
			   
			   ArrayList<Fruit_reviewVO>rew=service.reviewListAll();
			   model.addAttribute("rew",rew);
			   
			    return "/fruit/Review";
		   }
		 	@RequestMapping("/fruit/fruitPriceCompare")
			   public String fruitPriceCompare() {
				    return "/fruit/fruitPriceCompare";
			   }
		   

}


