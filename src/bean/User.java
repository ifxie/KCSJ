package bean;

public class User {

    /*
    * @param id 用户编号
    * @param phoneNum 用户注册手机
    * @param username 用户名
    * @param password 密码
    * @param contribution  贡献值
    * */

    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    String phoneNum;

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    int contribution;
    public int getContribution() {
        return contribution;
    }

    public void setContribution(int contribution) {
        this.contribution = contribution;
    }

    public User(){
        phoneNum="";
        username="";
        password="";
        contribution=0;

    }
}
