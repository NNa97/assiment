package Controller;


import dal.PageViewDBContext;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.ServletRequestAttributeListener;
import jakarta.servlet.ServletRequestEvent;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author USER
 */
import dal.PageViewDBContext;
import jakarta.servlet.ServletContextEvent;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequestAttributeEvent;
import jakarta.servlet.ServletRequestListener;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class hewhe implements ServletContextListener,ServletRequestListener
{

   
   
  public void requestInitialized(ServletRequestEvent sre){
     int viewCount = 0;     
      PageViewDBContext pDB = new PageViewDBContext();
        int views = pDB.getViews();
         viewCount = views;
            viewCount++;
            
           
            pDB.updateViews(viewCount);
        
        }
  
  
   
    
  
    
 
    
}
