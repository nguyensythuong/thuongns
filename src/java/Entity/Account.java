/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Admin
 */
public class Account {
    private int userid;
    private String username;
    private String password;
    private String email;
    private int isSell;
    private int isAdmin;
    private int phone;
    private String address;

    public Account() {
    }

    public Account(int userid, String username, String password, String email, int isSell, int isAdmin, int phone, String address) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
        this.phone = phone;
        this.address = address;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Account{" + "userid=" + userid + ", username=" + username + ", password=" + password + ", email=" + email + ", isSell=" + isSell + ", isAdmin=" + isAdmin + ", phone=" + phone + ", address=" + address + '}';
    }

    
    
}
