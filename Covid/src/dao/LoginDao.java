package dao;

import bean.LoginBean;
import com.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

    public LoginDao() {
    }

    public String LoginCheck(LoginBean bean) {
        Connection con = MyConnection.getConnection();
        String email = bean.getEmail();
        String newpwd = bean.getNewpwd();

        try {
            String sqlQuery = "select * from coviduser where email=? and password=? and active=1 ";
            PreparedStatement pst = con.prepareStatement(sqlQuery);
            pst.setString(1, email);
            pst.setString(2, newpwd);

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String dbemail = rs.getString("email");
                String dbpassword = rs.getString("password");
                if (dbemail.equalsIgnoreCase(email) && dbpassword.equalsIgnoreCase(newpwd)) {
                    return "success_user";
                }
                return "error";
            }
        } catch (Exception ex) {
            System.out.println("From LoginDao " + ex);
        }
        return "error";
    }
}
