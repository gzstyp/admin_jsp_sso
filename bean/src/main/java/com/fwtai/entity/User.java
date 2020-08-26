package com.fwtai.entity;

import java.io.Serializable;

/**
 * 系统登录用户
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2020/4/20 14:13
 * @QQ号码 444141300
 * @Email service@yinlz.com
 * @官网 <url>http://www.yinlz.com</url>
*/
public class User implements Serializable {

    private String kid;

    private String userName;

    private Integer enabled;

    private Integer errorCount;

    private Long error;

    private String errorTime;

    public String getKid(){
        return kid;
    }

    public void setKid(String kid){
        this.kid = kid;
    }

    public String getUserName(){
        return userName;
    }

    public void setUserName(String userName){
        this.userName = userName;
    }

    public Integer getEnabled(){
        return enabled;
    }

    public void setEnabled(Integer enabled){
        this.enabled = enabled;
    }

    public Integer getErrorCount(){
        return errorCount;
    }

    public void setErrorCount(Integer errorCount){
        this.errorCount = errorCount;
    }

    public Long getError(){
        return error;
    }

    public void setError(Long error){
        this.error = error;
    }

    public String getErrorTime(){
        return errorTime;
    }

    public void setErrorTime(String errorTime){
        this.errorTime = errorTime;
    }
}