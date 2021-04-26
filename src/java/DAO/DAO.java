/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBContext.DBContext;
import Entity.Account;
import Entity.Infor;
import Entity.MyOrder;
import Entity.Product;
import Entity.ProductCart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    //Menu
    public List<Product> getLoadAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //login
    public Account login(String user, String pass) {
        String query = "select*from Account\n"
                + "where username = ?\n"
                + "and [password] =?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            //sql goi lai query
            ps = conn.prepareStatement(query);
            //chay cau lenh query 
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Account checkAccountExist(String user) {
        String query = "select*from Account\n"
                + "where [userName] = ?\n";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            //sql goi lai query
            ps = conn.prepareStatement(query);
            //chay cau lenh query 
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signUp(String userName, String pass, String email, int isSell, int isAdmin, String phone, String address) {
        String query = "insert into Account\n"
                + "values(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            //sql goi lai query
            ps = conn.prepareStatement(query);
            //chay cau lenh query 
            ps.setString(1, userName);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.setInt(4, isSell);
            ps.setInt(5, isAdmin);
            ps.setString(6, phone);
            ps.setString(7, address);
            //add them vao data base
            ps.executeUpdate();
//            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
    //menu
    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where [name] like ?";
        try {
            // nike younger
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    //add to card(admin)
    public List<Product> getProductBySellID(int sellID) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, sellID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //add to card(user)
    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where cateID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //Menu
    public List<Product> getProductByPrice(int price) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where price <= ?\n"
                + "order by price asc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, price);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //add to cart
    public void delete(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //add new produc(admin)
    public void createProduct(String name, String image, String price,
            String title, String decription, int category, int sellId) {
        String query = "INSERT INTO dbo.Product\n"
                + "VALUES (?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, decription);
            ps.setInt(6, category);
            ps.setInt(7, sellId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //admin
    public void updateProduct(String name, String image, String price,
            String title, String decription, int category, int id) {
        String query = "Update Product\n"
                + "set name = ?,"
                + " image = ?,"
                + " price = ?,"
                + " title=?,"
                + "description=?,"
                + "cateID=?\n"
                + "where id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, decription);
            ps.setInt(6, category);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //
    public Product getById(String id) {
        String query = "select * from Product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //menu 
    public void insertInfor(int id, String name, String email, String address, String number) {
        String query = "insert into InformationUser\n"
                + "values (?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, number);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void updateInfor(int id, String name, String email, String address, String number) {
        String query = "UPDATE [InformationUser]\n"
                + "   SET [name] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[phone] = ?\n"
                + " WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, number);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Infor getInfor(String id) {
        String query = "select * from InformationUser where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Infor(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //menu
    //count to list product
    public int countProduct() {
        String query = "select count(*) from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }

        return 0;
    }
    
    ///buy by price
    public int countProductByPrice(int price) {
        String query = "select count(*) from Product where price < ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, price);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }

        return 0;
    }

    //pagging product
    public List<Product> PaggingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "order by id \n"
                + "offset ? row fetch next 6 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> PaggingProductByPrice(int price, int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where price < ? "
                + "order by price asc\n"
                + "offset ? row fetch next 6 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, price);
            ps.setInt(2, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //add to cart
    public void insertIntoCart(int id, String image, float price, String pName, String uName, int quanity) {
        String query = "insert into Cart values (?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, image);
            ps.setFloat(3, price);
            ps.setString(4, pName);
            ps.setString(5, uName);
            ps.setInt(6, quanity);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // list user add to cart
    public List<ProductCart> listCart(String user) {
        List<ProductCart> list = new ArrayList<>();
        String query = "select * from Cart where userName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductCart(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    //delete records into card with each account other
    public void deleteProductCart(int id, String userName) {
        String query = "delete from Cart where id = ? and userName=?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, userName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //when user click add to cart 1 product more one times ->> quanity ++
    public void updateQuanity(int id, int quanity) {
        String query = "update Cart set quanity=? where id =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quanity);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //check in the cart that exist or not
    public ProductCart getItemCartByName(int id, String userName) {
        String query = "select * from Cart where id = ? and userName =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setString(2, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductCart(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //user view list Order
    public List<MyOrder> loadAllOrderOfUser(String userName) {
        String query = "select * from Orders\n"
                + "where userName = ?";
        List<MyOrder> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MyOrder(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDate(7)));

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    //ADMIN
    //admin getAllOrder
    public List<MyOrder> loadAllOrder() {
        String query = "select * from Orders";
        List<MyOrder> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new MyOrder(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDate(7)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    //admin delete MHD order of customer
    public void deleteOrder(int mhd) {
        String query = "delete from Orders where MDH = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, mhd);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //get allAccount of User
    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account\n"
                + "except select * from Account where isAdmin = 1";// khac isadmin =1
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    //admin delete Account of customer
    public void deleteAccount(int id) {
        String query = "delete from Account where userID=?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //load order of user
    public void MyOrder(String username, String name, float money, String address, String phone) {
        String query = "insert into [Orders] values (?,?,?,?,?,getdate())";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, name);
            ps.setFloat(3, money);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //manager Order
    public void DeleteCartCheckOut(String userName) {
        String query = "delete from Cart where userName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.login("admin", "admin"));
    }
}
