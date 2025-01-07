package kr.co.sist.kjy_prj.member.domain;

/**
 * @author : user
 * @fileName : SuperVisionDomain
 * @since : 25. 1. 2.
 */
public class SuperVisionDomain {

    private String s_name;
    private String director_image;

    public SuperVisionDomain() {
    }

    public SuperVisionDomain(String director_image, String s_name) {
        this.director_image = director_image;
        this.s_name = s_name;
    }

    public String getDirector_image() {
        return director_image;
    }

    public void setDirector_image(String director_image) {
        this.director_image = director_image;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }
} // SuperVisionDomain 끝
