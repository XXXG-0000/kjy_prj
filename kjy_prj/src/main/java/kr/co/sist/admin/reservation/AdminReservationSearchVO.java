package kr.co.sist.admin.reservation;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminReservationSearchVO {
	private int startNum, endNum, currentPage, totalPage, totalCount;
	private String field="0", keyword, url;
}
