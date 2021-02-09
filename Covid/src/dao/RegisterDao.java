package dao;

import bean.RegisterBean;
import com.MyConnection;
import com.SendingEmail;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterDao {

    public RegisterDao() {
    }

    public String RegisterUser(RegisterBean rb) {
        String name = rb.getName();
        String email = rb.getEmail();
        String password = rb.getPassword();
        String myhash = rb.getMyhash();
       
        Connection con = MyConnection.getConnection();
        try {
            
            String sqlQuery = "insert into coviduser (name,email,password,hash,active) values (?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sqlQuery);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setNString(3, password);
            pst.setString(4, myhash);
            pst.setString(5, "0");
            int i = pst.executeUpdate();
            System.out.println(i);
            if (i != 0) {
                SendingEmail se = new SendingEmail(email, myhash);
                se.sendMail();
                return "SUCCESS";
            }
        } catch (Exception ex) {
            System.out.println("RegisterDAO File" + ex);
        }
        return "error";
    }
}
