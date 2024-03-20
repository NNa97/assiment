
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
public class hewhe implements ServletContextListener,ServletRequestAttributeListener
{
   
  public void requestInitialized(ServletRequestEvent sre){
      ServletContext context = sre.getServletContext();
        PageViewDBContext pDB = new PageViewDBContext();
        int views = pDB.getViews();
        context.setAttribute("viewCount", views);
  }
  
  public void requestDestroyed(ServletRequestEvent sre){
      ServletContext context = sre.getServletContext();
        Integer viewCount = (Integer) context.getAttribute("viewCount");
        if (viewCount != null) {
            viewCount++;
            PageViewDBContext pDB = new PageViewDBContext();
            pDB.updateViews(viewCount);
        }
    } 
  
    
  public void attributeAdded(ServletRequestAttributeListener srae){
     
  }
    
}
