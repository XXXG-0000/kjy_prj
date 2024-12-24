package kr.co.sist.admin.movie;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//MOVIE_NUM	ACTOR	IMAGE	FILMOGRAPHY	STAR_F	

@Getter
@Setter
@ToString
public class CastVO {
	private int movie_num;	
	private String[] actor_arr;
	private String[] image;	
	private String[] filmography;
	private String[] star_f;	

}
