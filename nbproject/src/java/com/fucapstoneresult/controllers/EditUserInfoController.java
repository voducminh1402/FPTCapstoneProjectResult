/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fucapstoneresult.controllers;

import com.fucapstoneresult.dao.StudentDAO;
import com.fucapstoneresult.dao.TeamDAO;
import com.fucapstoneresult.dao.UserDAO;
import com.fucapstoneresult.models.StudentDTO;
import com.fucapstoneresult.models.TeamDTO;
import com.fucapstoneresult.models.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "EditUserInfoController", urlPatterns = {"/EditUserInfoController"})
public class EditUserInfoController extends HttpServlet {

    private static final String SUCCESS = "user-info.jsp";
    private static final String FAIL = "error.html";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = SUCCESS;
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String page = request.getParameter("page");
            int role = Integer.parseInt(request.getParameter("role"));
            int status = Integer.parseInt(request.getParameter("status"));

            UserDTO user = new UserDTO(id, name, "", status, "", email, "", "", role);
            if (page.equals("student")) {
                StudentDAO studentDao = new StudentDAO();
                StudentDTO student = studentDao.getStudent(id);
                student.setStudentName(name);
                studentDao.updateStudent(student);
            }

            UserDAO dao = new UserDAO();
            if (!dao.updateUserByAdmin(user)) {

                url = FAIL;
            }
            user = dao.searchUserByID(id);
            request.setAttribute("USER_DETAIL", user);
            request.setAttribute("PAGE", page);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
