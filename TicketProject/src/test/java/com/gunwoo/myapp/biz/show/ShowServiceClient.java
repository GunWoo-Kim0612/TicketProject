package com.gunwoo.myapp.biz.show;

import java.sql.Date;
import java.util.List;
import java.util.Scanner;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.gunwoo.myapp.biz.show.ShowService;
import com.gunwoo.myapp.biz.show.ShowVO;

public class ShowServiceClient {

	public static void main(String[] args) {
		
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		ShowService showService = (ShowService)container.getBean("ShowService");
		
		int seq = 0;
		Date date = null;
		String runtime = "";
		String price = "";
		String title = "" ;
		String contents = "";
		String img ="";
		int seats = 0;
		System.out.println("CRUD Test");
		
		Scanner sc = new Scanner(System.in);


		int i = 0;

	
		System.out.println("데이터 CRUD");
		
	
		
		while(i !=9) {
			ShowVO vo  = new ShowVO();
			List<ShowVO> showList =  null;			
		
			System.out.println();
			System.out.println();
			System.out.println();
			System.out.println("전체조회 : 1");
			System.out.println("1행 조회 : 2");
			System.out.println("행  추가 : 3");
			System.out.println("행  수정 : 4");
			System.out.println("행  삭제 : 5");
			System.out.println("종     료 : 9");
			
			System.out.println("메뉴 입력 : ");
			i= sc.nextInt();
			sc.nextLine();
			System.out.println();
			System.out.println();
			System.out.println();
			
        switch (i) {
	        case 1:         
	        	
	        	
	            System.out.println(i + "번 메뉴 getShowList");
//	            getShowList 메소드 매개변수 추가함 
	            showList = showService.getShowList(vo);
	            
	            System.out.println();
	            System.out.println();
	            System.out.println("##########################################################################################");
	            for(ShowVO show : showList) {
	    			System.out.println("--->" + show.toString());
	    		}
	            System.out.println("##########################################################################################");
	            break;
	        case 2:            
	        	System.out.println(i + "번 메뉴 getShow ");
	        	
				System.out.println("조회할 seq>>");

	    		seq = sc.nextInt();
	    		vo.setSeq(seq);
				sc.nextLine();
				
				vo = showService.getShow(vo);
				
				System.out.println();
				System.out.println();
	            System.out.println("##########################################################################################");
				System.out.println(vo.toString());
	            System.out.println("##########################################################################################");
	        	
	            break;
	        case 3:            // 3 인 경우
	    		System.out.println(i + " 번메뉴 : insert");
	  
	    		System.out.println("런타임 입력");
	    		runtime = sc.nextLine();
	    		vo.setRuntime(runtime);

	    		
	    		System.out.println("가격 입력");
	    		price = sc.nextLine();
	    		vo.setPrice(price);
	    		
	    		System.out.println("제목 입력");
	    		title = sc.nextLine();
	    		vo.setTitle(title);
	    		
	    		System.out.println("본문 입력");
	    		contents = sc.nextLine();
	    		vo.setContents(contents);
	    		
	    		System.out.println("이미지 입력");
	    		img = sc.nextLine();
	    		vo.setImg(img);
	    		
	    		System.out.println("좌석 입력");
	    		seats = sc.nextInt();
	    		sc.nextLine();
	    		vo.setSeats(seats);
	    		

	    		showService.insertShow(vo);
	    		System.out.println("==========================================================================================");
	            break;
	            
	            
	        case 4:
				System.out.println(i +" 번 메뉴 : update");
				
				System.out.println("수정할 seq >>");

	    		seq = sc.nextInt();
	    		vo.setSeq(seq);
				sc.nextLine();
				
				
				System.out.println("런타임 입력");
	    		runtime = sc.nextLine();
	    		vo.setRuntime(runtime);

	    		
	    		System.out.println("가격 입력");
	    		price = sc.nextLine();
	    		vo.setPrice(price);
	    		
	    		System.out.println("제목 입력");
	    		title = sc.nextLine();
	    		vo.setTitle(title);
	    		
	    		System.out.println("본문 입력");
	    		contents = sc.nextLine();
	    		vo.setContents(contents);
	    		
	    		System.out.println("이미지 입력");
	    		img = sc.nextLine();
	    		vo.setImg(img);
	    		
	    		System.out.println("좌석 입력");
	    		seats = sc.nextInt();
	    		sc.nextLine();
	    		vo.setSeats(seats);
				
	    		showService.updateShow(vo);
	    		System.out.println("==========================================================================================");
	    		break;
	    		
	        case 5:
	        	System.out.println("행  삭제 : 5");
				
				System.out.println("삭제할  글번호>>");

	    		seq = sc.nextInt();
	    		vo.setSeq(seq);
				sc.nextLine();
				
	    		showService.deleteShow(vo);
	    		System.out.println(seq + "행 삭제");
	    		System.out.println("==========================================================================================");

	    		break;
	        case 9:       
	            i = 9;
	            break;
	            
	            
	        }
		}
		System.out.println("종료");
	 
		
		container.close();
	}

}