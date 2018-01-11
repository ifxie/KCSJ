package bean;

public class User {

    /*
    * @param phoneNum 用户注册手机
    * @param username 用户名
    * @param password 密码
    * @param contribution  贡献值
    * */


    private String phoneNum;

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private int contribution;
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
        contribution=10;

    }
}
