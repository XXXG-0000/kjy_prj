package kr.co.sist.kjy_prj.member.reservation;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReservationScreeningInfoDomain {
	private int sc_num;
	private int th_num;
	private int movie_num;
	private Date sc_date;
	private String sc_date_str;
	private Date sc_time;
	private String sc_time_str;
	private Date sc_end_time;	
	private String sc_end_time_str;
	private String th_name;
	private String category;
	private int th_total_seat;
	private int th_remain_seat;
	private String title_k;
}
