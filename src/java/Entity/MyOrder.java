/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.Date;


/**
 *
 * @author Admin
 */
public class MyOrder {
    private int mhd;
    private String userName;
    private String productName;
    private float totalPrice;
    private String phone;
    private String address;
    private Date date;

    public MyOrder() {
    }

    public MyOrder(int mhd, String userName, String productName, float totalPrice, String phone, String address, Date date) {
        this.mhd = mhd;
        this.userName = userName;
        this.productName = productName;
        this.totalPrice = totalPrice;
        this.phone = phone;
        this.address = address;
        this.date = date;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    

    public int getMhd() {
        return mhd;
    }

    public void setMhd(int mhd) {
        this.mhd = mhd;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
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
        return "MyOrder{" + "mhd=" + mhd + ", userName=" + userName + ", productName=" + productName + ", totalPrice=" + totalPrice + ", phone=" + phone + ", address=" + address + '}';
    }
    
    
}
