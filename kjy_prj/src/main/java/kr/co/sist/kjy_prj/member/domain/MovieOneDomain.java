package kr.co.sist.kjy_prj.member.domain;

import java.sql.Date;
import java.util.List;

/**
 * @author : user
 * @fileName : MovieOneDomain
 * @since : 25. 1. 2.
 */
public class MovieOneDomain {


    private int movie_num;
    private String title_k;
    private String title_e;
    private String audience_rating;
    private String screening_f;
    private double rate;
    private List<SuperVisionDomain> directors;
    private List<CastDomain> actors;
    private List<GenreDomain> genres;
    private int showtime;
    private Date release_date;
    private String main_image;
    private String info;
    private List<ConutryDomain> conutries;



    public MovieOneDomain() {
    }

    public MovieOneDomain(List<CastDomain> actors, String audience_rating, List<ConutryDomain> conutries, List<SuperVisionDomain> directors, List<GenreDomain> genres, String info, String main_image, int movie_num, double rate, Date release_date, String screening_f, int showtime, String title_e, String title_k) {
        this.actors = actors;
        this.audience_rating = audience_rating;
        this.conutries = conutries;
        this.directors = directors;
        this.genres = genres;
        this.info = info;
        this.main_image = main_image;
        this.movie_num = movie_num;
        this.rate = rate;
        this.release_date = release_date;
        this.screening_f = screening_f;
        this.showtime = showtime;
        this.title_e = title_e;
        this.title_k = title_k;
    }

    public List<CastDomain> getActors() {
        return actors;
    }

    public void setActors(List<CastDomain> actors) {
        this.actors = actors;
    }

    public String getAudience_rating() {
        return audience_rating;
    }

    public void setAudience_rating(String audience_rating) {
        this.audience_rating = audience_rating;
    }

    public List<ConutryDomain> getConutries() {
        return conutries;
    }

    public void setConutries(List<ConutryDomain> conutries) {
        this.conutries = conutries;
    }

    public List<SuperVisionDomain> getDirectors() {
        return directors;
    }

    public void setDirectors(List<SuperVisionDomain> directors) {
        this.directors = directors;
    }

    public List<GenreDomain> getGenres() {
        return genres;
    }

    public void setGenres(List<GenreDomain> genres) {
        this.genres = genres;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getMain_image() {
        return main_image;
    }

    public void setMain_image(String main_image) {
        this.main_image = main_image;
    }

    public int getMovie_num() {
        return movie_num;
    }

    public void setMovie_num(int movie_num) {
        this.movie_num = movie_num;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }


    public String getScreening_f() {
        return screening_f;
    }

    public void setScreening_f(String screening_f) {
        this.screening_f = screening_f;
    }

    public int getShowtime() {
        return showtime;
    }

    public void setShowtime(int showtime) {
        this.showtime = showtime;
    }

    public String getTitle_e() {
        return title_e;
    }

    public void setTitle_e(String title_e) {
        this.title_e = title_e;
    }

    public String getTitle_k() {
        return title_k;
    }

    public void setTitle_k(String title_k) {
        this.title_k = title_k;
    }
}




