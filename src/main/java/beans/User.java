package beans;

/**
 * AuThor：StAY_
 * Create:2019/11/23
 */
public class User {
    private String id;
    private String username;
    private String pwd;
    private String mail;

    public void setId(String id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPwd() {
        return pwd;
    }

    public String getMail() {
        return mail;
    }
}
