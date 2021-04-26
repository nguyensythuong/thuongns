/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.DAO;
import Entity.ProductCart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CartControlSub", urlPatterns = {"/CartControlSub"})
public class CartControlSub extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          HttpSession session = request.getSession();
        int quatity = 1, count = 0, total =0,quantitySub = 1;
        float sum = 0,tax = 0, discount = 0;
        DAO dao = new DAO();
        
        
        String userName = (String) session.getAttribute("user");
        // null
        String name = request.getParameter("pName");
        int id = Integer.parseInt(request.getParameter("sId"));
        float price = Float.parseFloat(request.getParameter("price"));
        String image = request.getParameter("img");
        
        
        ProductCart cartItems = dao.getItemCartByName(id, userName);
        //check in the cart have items or not
        //if not exist items --> insert 
        if(cartItems == null){
            dao.insertIntoCart(id,image,(float) price, name, userName, quatity);
        }//else update quatity in the cart
        else{
            quatity = cartItems.getQuanity()-1;
//            quantitySub = cartItems.getQuanity()-1;
            dao.updateQuanity(id, quatity);
            dao.updateQuanity(id, quantitySub);
        }
//        
        List<ProductCart> list = dao.listCart(userName);
//        
        if(list != null){
            for (ProductCart productCart : list) {
                count += productCart.getQuanity();
                sum = sum + Float.parseFloat(productCart.getPrice())* (float)(productCart.getQuanity());
            }
        }
//        
        if (sum >= 1000) {
            tax = (float) 0.05;
            request.setAttribute("mess", "Your order more than 1000$ will sale 5%");
        } else if (sum > 3000) {
            tax = (float) 0.1;
            request.setAttribute("mess", "Your order more than 3000$ will sale 10%");
        } else {
            tax = 0;
        }
        discount = tax*100;
        session.setAttribute("Tax", tax);
        session.setAttribute("discount", discount);
        session.setAttribute("listC", list);
        session.setAttribute("countProduct", count);
        session.setAttribute("Sum", sum);
        request.setAttribute("list", list);
//        session.setAttribute("listCountP", list);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
