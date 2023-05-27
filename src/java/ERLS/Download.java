/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ERLS;

/**
 *
 * @author JAVA-JP
 */
import DBconnection.SQLconnection;
import static com.sun.org.apache.xerces.internal.xinclude.XIncludeHandler.BUFFER_SIZE;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java1
 */
public class Download extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String fileid = request.getParameter("fileid");
            String filename = request.getParameter("filename");
            String dkey = request.getParameter("dkey");

            Connection conn = SQLconnection.getconnection();
            Statement st = conn.createStatement();
            Statement st2 = conn.createStatement();

            ResultSet rs = st2.executeQuery(" Select * from request where fileid ='" + fileid + "' AND status='Approved' AND dkey='" + dkey + "'");

            if (rs.next()) {

                ResultSet rs1 = st.executeQuery(" Select * from do_files where fileid ='" + fileid + "' AND filename ='" + filename + "'  AND dkey='" + dkey + "'");
                if (rs1.next()) {

                    String file = rs1.getString("enc_data");

                    System.out.println("dkey-- " + dkey);

                    Decryption d1 = new Decryption();
                    String decrypted = d1.decrypt(file, dkey);

                    System.out.print("\nPlain Text             --------  " + file);
                    System.out.print("\nDecrypted Text             --------  " + decrypted);

                    System.out.println("filename,fileid==" + filename + fileid);

                    String is = decrypted;

                    response.setHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
                    out.write(is);
                    out.close();

                    response.sendRedirect("Download_file.jsp?download_success");
                } else {
                    // no file found
                    response.sendRedirect("Download_file.jsp?download_failed");
                }
            } else {
                // no file found
                response.sendRedirect("Download_file.jsp?download_failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.sendRedirect("download.jsp?download_failed");
        } catch (IOException ex) {
            ex.printStackTrace();
            response.sendRedirect("download.jsp?download_failed");
        }
    }
}    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
