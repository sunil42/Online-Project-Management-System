package com.material;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazoom.upload.*;

/**
 *
 * @author ashwini
 */
public class UploadServlet extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String resPath = "D:/Material";
        String status = "no";

        PrintWriter out = res.getWriter();

        try {
            ResultSet rs1;
            MultipartFormDataRequest nreq = new MultipartFormDataRequest(req);

            String department = nreq.getParameter("dept");
            String year = nreq.getParameter("year");
            String semester = nreq.getParameter("sem");
            String subject = nreq.getParameter("sname");
          //  String filename = nreq.getParameter("efile");

            UploadBean upb = new UploadBean();
            upb.setFolderstore(resPath);
            upb.setOverwrite(false);
            upb.store(nreq, "efile");

            Vector history = upb.getHistory();

            ArrayList<String> filesName = new ArrayList<String>();

            for (int i = 0; i < history.size(); i++) {
                UploadParameters up = (UploadParameters) history.elementAt(i);
                filesName.add(up.getFilename());
            }

            System.out.println("material               " + filesName.get(0));

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineprojectmanagement", "root", "root");
            CallableStatement mycall=con.prepareCall("{call upload(?,?,?,?,?,?,?)}");
            System.out.println("========================");

            mycall.setString(1, department);
            mycall.setString(2, year);
            mycall.setString(3, semester);
            mycall.setString(4, subject);
            mycall.setString(5,filesName.get(0));
            mycall.setString(6, resPath + "/" + filesName.get(0));
            mycall.setString(7, status);

            System.out.println("hi---------------");
//            rs1=mycall.executeQuery();
//            rs1=mycall.getResultSet();
            
            int i = mycall.executeUpdate();

            if (i>0) {
                out.println("Successfully Uploaded ");
                
                RequestDispatcher rs = req.getRequestDispatcher("upload_material.jsp");
                rs.forward(req, res);
                
            } else {
                out.println("File Upload Failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
