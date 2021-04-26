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
public class ProductCart {
    private String id;
    private String image;
    private String price;
    private String name;
    private String userName;
    private int quanity;

    public ProductCart() {
    }

    public ProductCart(String id, String image, String price, String name, String userName, int quanity) {
        this.id = id;
        this.image = image;
        this.price = price;
        this.name = name;
        this.userName = userName;
        this.quanity = quanity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }

    @Override
    public String toString() {
        return "ProductCart{" + "id=" + id + ", image=" + image + ", price=" + price + ", name=" + name + ", userName=" + userName + ", quanity=" + quanity + '}';
    }
    
}
