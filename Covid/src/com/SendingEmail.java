package com;

import java.util.Properties;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendingEmail {

    private String userEmail;
    private String myHash;

    public SendingEmail(String userEmail, String myHash) {
        this.userEmail = userEmail;
        this.myHash = myHash;
    }

    public void sendMail() {

        final String email = "coviddashboard.19@gmail.com";
        final String password = "covid-19dashboard";
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        });
        try {

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.addRecipient(MimeMessage.RecipientType.TO, new InternetAddress(userEmail));
            message.setSubject("Corona Email Verification Link");
            message.setText("Verification Link...");
            message.setText("Your Verification Link: " + "http://localhost:8080/COVID/ActivateAccountServlet?key1="
                    + userEmail + "&key2=" + myHash);
            Transport.send(message);
        } catch (Exception ex) {
            System.out.println("SendingMail...." + ex);
        }
    }
}
