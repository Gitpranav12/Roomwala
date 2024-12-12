package in.pg.room;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/adminRegForm")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10, // 10MB
                 maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AdminRegistration extends HttpServlet {

    private static final String SAVE_DIR = "uploadImages";

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String myname = req.getParameter("name1");
        String myphone = req.getParameter("phone1");
        String myemail = req.getParameter("email1");
        String mycity = req.getParameter("city1");
        String myroomtype = req.getParameter("Roomtype");
        String myroomrent = req.getParameter("Roomrent");
        String mystatus = req.getParameter("Roomstatus");
        String myarea = req.getParameter("Area");
        String mypass = req.getParameter("pass1");

        String appPath = req.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + SAVE_DIR;
        
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        String[] imagePaths = new String[4];
        Part[] fileParts = {
            req.getPart("image1"),
            req.getPart("image2"),
            req.getPart("image3"),
            req.getPart("image4")
        };

        for (int i = 0; i < fileParts.length; i++) {
            if (fileParts[i] != null && fileParts[i].getSize() > 0) {
                String fileName = extractFileName(fileParts[i]);
                String filePath = savePath + File.separator + fileName;
                fileParts[i].write(filePath);
                imagePaths[i] = SAVE_DIR + "/" + fileName;
            }
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Roomwala", "root", "admin@123");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO owner(ownerName, ownerPhone_no, ownerEmail, ownerCity, roomtype, roomrent, roomstatus, area, password, image1, image2, image3, image4) " +
                "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            );

            ps.setString(1, myname);
            ps.setString(2, myphone);
            ps.setString(3, myemail);
            ps.setString(4, mycity);
            ps.setString(5, myroomtype);
            ps.setString(6, myroomrent);
            ps.setString(7, mystatus);
            ps.setString(8, myarea);
            ps.setString(9, mypass);
            ps.setString(10, imagePaths[0]);
            ps.setString(11, imagePaths[1]);
            ps.setString(12, imagePaths[2]);
            ps.setString(13, imagePaths[3]);

            int count = ps.executeUpdate();
            if (count > 0) {
                resp.setContentType("text/html");
                out.print("<h3 style='color:green'>User registered successfully</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("/adminRegistration.jsp");
                rd.include(req, resp);
            } else {
                resp.setContentType("text/html");
                out.print("<h3 style='color:red'>User not registered successfully because some error</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("/adminRegistration.jsp");
                rd.include(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.setContentType("text/html");
            out.print("<h3 style='color:red'>Exception occurred: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/adminRegistration.jsp");
            rd.include(req, resp);
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
