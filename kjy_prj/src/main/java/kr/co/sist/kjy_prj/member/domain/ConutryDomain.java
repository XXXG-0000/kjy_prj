package kr.co.sist.kjy_prj.member.domain;

/**
 * @author : user
 * @fileName : ConutryDomain
 * @since : 25. 1. 2.
 */
public class ConutryDomain {
    private String country_name;

    public ConutryDomain(String country_name) {
        this.country_name = country_name;
    }

    public ConutryDomain() {
    }

    public String getCountry_name() {
        return country_name;
    }

    public void setCountry_name(String country_name) {
        this.country_name = country_name;
    }
} // ConutryDomain 끝
