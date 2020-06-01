package org.zerock.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int startPage; 
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;

		// 마지막 페이지  10단위 
		// 페이지 번호 / 10 ceil -> 올림  * 10
		// ex) 페이지번호 5 : 0.5 -> 1 * 10 = 10 
		// ex) 12 : 1.2 = 20
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		
		// 시작 페이지 
		this.startPage = this.endPage - 9;
		
		// 진짜 마지막 페이지 
		// (총 게시글수 / 페이지당 표시할 글 개수) 의 올림 
		// ex) 123 : 12.3 의 올림 13 
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
	
		// 마지막페이지가 진짜 마지막페이지 보다 크면 마지막 페이지 = 진짜 마지막 페이
		if (realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		// 이전
		// 시작페이지가 1보다 크면 이전페이지 버튼 존재 
		this.prev = this.startPage > 1;

		// 다음
		// 진짜 마지막페이지가 마지막페이지보다 클시 다음 페이지 버튼 존재 
		this.next = this.endPage < realEnd;
	}
	
}
