package com.web.sollabo.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.member.service.MemberService;
import com.web.sollabo.product.dto.ProductDTO;
import com.web.sollabo.product.service.ProductService;
import com.web.sollabo.util.PaginationInfo;
import com.web.sollabo.util.SearchVO;
import com.web.sollabo.util.Utility;

@Controller
@RequestMapping("product")
public class ProductController {

	/* 항상 위로 */
	@Autowired
	ProductService productService;

	@Autowired
	MemberService memberService;

	/*
	 * 구매하기(버튼)
	 * 
	 * @GetMapping("cart") public String cart() { return "cart/cart"; }
	 */



	/* 제품 페이지 */
	@PostMapping("product")
	public String getProductPost(@ModelAttribute SearchVO searchVo, Model model) {
		System.out.println("@@@@@@@@@@@=" + searchVo.getDivisionCode());
		
		//paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
				
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		System.out.println("searchVo 최종값 : "+ searchVo);
		
		List<ProductDTO> list = productService.getProduct(searchVo);
		List<ProductDTO> divi = productService.getDivision();
		System.out.println("글 목록 결과, list.size()="+list.size());
		
		int totalRecord= productService.selectTotalProductCount(searchVo);
		System.out.println("글 전체 개수 조회 결과, totalRecord="+totalRecord);
//		System.out.println("@@@@아니야" + list.size());
		System.out.println("@@@@여기야" + divi.size());
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("productList", list);
		model.addAttribute("divisionList",divi);
		model.addAttribute("pagingInfo", pagingInfo);

		return "product/product";
	}
	
	@GetMapping("product")
	public String getProductGet(@ModelAttribute SearchVO searchVo, Model model) {
		System.out.println("@@@@@@@@@@@=" + searchVo.getDivisionCode());
		
		//paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		System.out.println("searchVo 최종값 : "+ searchVo);
		
		List<ProductDTO> list = productService.getProduct(searchVo);
		List<ProductDTO> divi = productService.getDivision();
		System.out.println("글 목록 결과, list.size()="+list.size());
		
		int totalRecord= productService.selectTotalProductCount(searchVo);
		System.out.println("글 전체 개수 조회 결과, totalRecord="+totalRecord);
		System.out.println("@@@@여기야" + list.size());
		System.out.println("@@@@여기야" + divi.size());
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("productList", list);
		model.addAttribute("divisionList",divi);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "product/product";
	}
	/* 제품 상세 페이지 */	
	@PostMapping("goodspage")
	public String goodspagePost(@ModelAttribute SearchVO searchVo, Model model) {
		System.out.println("@@@@@@@@@@@=" + searchVo.getProductNo());
		
		//paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		System.out.println("searchVo 최종값 : "+ searchVo);
		
		List<ProductDTO> list = productService.getProductReply(searchVo);
		System.out.println("글 목록 결과, list.size()="+list.size());
		
		int totalRecord= productService.selectTotalProductReplyCount(searchVo);
		System.out.println("글 전체 개수 조회 결과, totalRecord="+totalRecord);
//		System.out.println("@@@@아니야" + list.size());
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("productReplyList", list);
		model.addAttribute("goodsProduct", productService.viewProduct(searchVo));
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "product/goodspage";
	}
	
	@GetMapping("goodspage")
	public String goodspageGet(@ModelAttribute SearchVO searchVo, Model model) {
		System.out.println("@@@@@@@@@@@=" + searchVo.getProductNo());
		
		//paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		System.out.println("searchVo 최종값 : "+ searchVo);
		
		List<ProductDTO> list = productService.getProductReply(searchVo);
		System.out.println("글 목록 결과, list.size()="+list.size());
		
		int totalRecord= productService.selectTotalProductReplyCount(searchVo);
		System.out.println("글 전체 개수 조회 결과, totalRecord="+totalRecord);
		System.out.println("@@@@여기야" + list.size());
		
		pagingInfo.setTotalRecord(totalRecord);
		ProductDTO productDTO = productService.viewProduct(searchVo);
		System.out.println("@@@@@@@@@@@@@@@@@@"+productDTO.toString());
		
		model.addAttribute("productList", list);
		model.addAttribute("goodsProduct", productDTO);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "product/goodspage";
	}


}
