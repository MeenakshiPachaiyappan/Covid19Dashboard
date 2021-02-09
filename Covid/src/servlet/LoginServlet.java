package servlet;

import bean.LoginBean;
import dao.LoginDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String newpwd = DigestUtils.md5Hex(password);
            System.out.println("newpassword" + newpwd);
            LoginBean bean = new LoginBean();
            bean.setEmail(email);
            bean.setPassword(password);
            bean.setNewpwd(newpwd);
// bean.setAdmin(admin);
            LoginDao loginDAO = new LoginDao();
            String daoStr = loginDAO.LoginCheck(bean);
            System.out.println(daoStr);
            if (daoStr.equals("success_user")) {
                HttpSession session = request.getSession(true);
                session.setAttribute("session_user", email);
                request.setAttribute("loginInitial", true);
                request.getRequestDispatcher("about.jsp").forward(request, response);
            } else {
                request.setAttribute("loginFailed", true);
                request.getRequestDispatcher("login.jsp").forward(request, response);
               
            }
        } catch (Exception ex) {
            System.out.println("" + ex);
        }
    }

}
