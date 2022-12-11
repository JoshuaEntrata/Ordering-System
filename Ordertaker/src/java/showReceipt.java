/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JOSHUA KYLE
 */
public class showReceipt extends HttpServlet {
    
    String file1;
    String file2;
    String file3;
    String file4;
    
    public void init(ServletConfig config) throws ServletException{
            file1 = config.getInitParameter("file1");
            file2 = config.getInitParameter("file2");
            file3 = config.getInitParameter("file3");
            file4 = config.getInitParameter("file4");
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String choice="";
        
        Cookie cookies[] = request.getCookies(); 
        
        for(Cookie c : cookies)
            if(c.getName().equals("choice"))
                choice = (String) c.getValue();
        
        
            PrintWriter out = response.getWriter();
            String order = choice;
            String fileName = "";
            
            
            
            if (order.equals("MEAL SET A")) {
                fileName = file1;
            } else if (order.equals("MEAL SET B")) {
                fileName = file2;
            } else if (order.equals("MEAL SET C")) {
                fileName = file3;
            } else if (order.equals("MEAL SET D")) {
                fileName = file4;
            }
            
            String filePath = request.getServletContext().getRealPath(File.separator);
            System.out.println(filePath);
            File pdfFile = new File(filePath+fileName);
            
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition","attachment; filename=\"" + fileName + "\"");
            
            //FileInputStream inputStream = new FileInputStream(filePath + fileName);
            FileInputStream inputStream = new FileInputStream(pdfFile);
            
            int in;
            while((in = inputStream.read()) != -1)
                out.write(in);
            
            inputStream.close();
            out.close();   
    }


}
