package servlet;

import com.MyConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ActivateAccountServlet", urlPatterns = {"/ActivateAccountServlet"})
public class ActivateAccountServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        System.out.println("account activate");
        String email = request.getParameter("key1");
        String hash = request.getParameter("key2");
        Connection con = MyConnection.getConnection();
        try {
            PreparedStatement pst = con.prepareStatement(
                    "SELECT email,hash,active FROM coviduser WHERE email=? AND hash=? AND active='0'");
            pst.setString(1, email);
            pst.setString(2, hash);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                PreparedStatement pst1 = con
                        .prepareStatement("UPDATE coviduser SET active='1' WHERE email=? AND hash=?");
                pst1.setString(1, email);
                pst1.setString(2, hash);
                int i = pst1.executeUpdate();
                if (i == 1) {
                    response.sendRedirect("login.jsp");
                } else {
                    response.sendRedirect("register.jsp");
                }
            }
        } catch (Exception ex) {
            System.out.println("ActivateAccount File :: ");
        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
// TODO Auto-generated method stub
    }
}
