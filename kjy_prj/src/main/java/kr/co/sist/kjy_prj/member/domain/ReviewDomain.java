package kr.co.sist.kjy_prj.member.domain;

import java.sql.Date;

/**
 * @author : user
 * @fileName : ReviewDomain
 * @since : 25. 1. 2.
 */
public class ReviewDomain {

    private String review;
    private String review_f;
    private Date review_date;
    private String member_id;
    private String profile;

    public ReviewDomain() {
    }

    public ReviewDomain(String member_id, String profile, String review, Date review_date, String review_f) {
        this.member_id = member_id;
        this.profile = profile;
        this.review = review;
        this.review_date = review_date;
        this.review_f = review_f;
    }

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public Date getReview_date() {
        return review_date;
    }

    public void setReview_date(Date review_date) {
        this.review_date = review_date;
    }

    public String getReview_f() {
        return review_f;
    }

    public void setReview_f(String review_f) {
        this.review_f = review_f;
    }
} // ReviewDomain 끝
