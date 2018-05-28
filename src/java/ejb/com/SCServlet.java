/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet({"/addDataServlet","/testDataServlet"})
public class SCServlet extends HttpServlet {


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
        
        String userPath = request.getServletPath();	
        SQLConnection sqlcon = new SQLConnection();
        Connection conn = sqlcon.getSQLConnection();
        Boolean dataMsg = true;
        PreparedStatement ps;
    
        try{
            /* TODO output your page here. You may use following sample code. */
            if(userPath.equals("/addDataServlet")){
                            
            if(request.getParameter("studentID")!=null){
            
                String studentID = request.getParameter("studentID");
                String password = request.getParameter("password");
                String studentName = request.getParameter("studentName");
                String studentEmail = request.getParameter("studentEmail");
                
                /**smartClassroom.setAttendanceid(Integer.parseInt(attendanceID));
                smartClassroom.setStudentid(studentID);
                smartClassroom.setCodeid(codeID);
                smartClassroom.setAttendancestatus(Integer.parseInt(attendanceStatus));*/
                
        try{
            ps = conn.prepareStatement("INSERT INTO student VALUES (?,?,?,?)");
            ps.setString(1,studentID);
            ps.setString(2,password);
            ps.setString(3,studentName);
            ps.setString(4,studentEmail);
            
            ps.executeUpdate();
            dataMsg = true;
            
            System.out.println("Insert Okay");
        }
        catch(SQLException e){
            System.out.println(e.toString());
            dataMsg = false;
        }
            }
            
            else if(request.getParameter("lecturerID")!=null){
            
                String lecturerID = request.getParameter("lecturerID");
                String password = request.getParameter("password");
                String name = request.getParameter("name");
                String ICNo = request.getParameter("ICNo");
                String email = request.getParameter("email");
                String phoneNo = request.getParameter("phoneNo");
                String address = request.getParameter("address");
                               
        try{
            ps = conn.prepareStatement("INSERT INTO lecturer VALUES (?,?,?,?,?,?,?)");
            ps.setString(1,lecturerID);
            ps.setString(2,password);
            ps.setString(3,name);
            ps.setString(4,ICNo);
            ps.setString(5,email);
            ps.setString(6,phoneNo);
            ps.setString(7,address);
            
            ps.executeUpdate();
            dataMsg = true;
            
            System.out.println("Insert Okay");
        }
        catch(SQLException e){
            System.out.println(e.toString());
            dataMsg = false;
        }
            }else {
                System.out.println("No data received");
            }
               
             
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }

               
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    else if(userPath.equals("/testDataServlet")){
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SCServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SCServlet at " + request.getContextPath() + "no requested data </h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
    catch(IOException | ServletException ex){
        System.out.println("ex");
    }
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
