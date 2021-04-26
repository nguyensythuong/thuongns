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
@WebServlet(name = "LoadProductCart", urlPatterns = {"/LoadProductCart"})
public class LoadProductCart extends HttpServlet {

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
        DAO dao = new DAO();

        float sum = 0;
        int count = 0;
        float tax = 0,discount =0;

        String userName = (String) session.getAttribute("user");

        List<ProductCart> list = dao.listCart(userName);
        if (list != null) {
            for (ProductCart cart : list) {
                count += cart.getQuanity();
                sum = sum + Float.parseFloat(cart.getPrice()) * (float) (cart.getQuanity());
            }
        }

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
