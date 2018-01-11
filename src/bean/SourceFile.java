package bean;

import java.sql.Date;

public class SourceFile {

    private String filename="";


    private String sha1="";

    private String location="";

    private String filepassword="";

    private String filesize="";

    private Date loadTime=null;

    private String lianjie="";


    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getSha1() {
        return sha1;
    }

    public void setSha1(String sha1) {
        this.sha1 = sha1;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getFilepassword() {
        return filepassword;
    }

    public void setFilepassword(String filepassword) {
        this.filepassword = filepassword;
    }

    public String getFilesize() {
        return filesize;
    }

    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }

    public Date getLoadTime() {
        return loadTime;
    }

    public void setLoadTime(Date loadTime) {
        this.loadTime = loadTime;
    }

    public String getLianjie() {
        return lianjie;
    }

    public void setLianjie(String lianjie) {
        this.lianjie = lianjie;
    }
}
