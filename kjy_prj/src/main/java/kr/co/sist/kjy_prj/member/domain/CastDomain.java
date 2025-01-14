package kr.co.sist.kjy_prj.member.domain;

/**
 * @author : user
 * @fileName : CastDomain
 * @since : 25. 1. 2.
 */
public class CastDomain {

    private String actor;
    private String image;
    private String filmography;
    private String star_f;
    private String name;


    public CastDomain(String actor, String filmography, String image, String name, String star_f) {
        this.actor = actor;
        this.filmography = filmography;
        this.image = image;
        this.name = name;
        this.star_f = star_f;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getFilmography() {
        return filmography;
    }

    public void setFilmography(String filmography) {
        this.filmography = filmography;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStar_f() {
        return star_f;
    }

    public void setStar_f(String star_f) {
        this.star_f = star_f;
    }
} // CastDomain 끝
