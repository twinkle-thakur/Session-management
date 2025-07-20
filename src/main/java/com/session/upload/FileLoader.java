package com.session.upload;

import java.io.File;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class FileLoader
 *
 */
@WebListener
public class FileLoader implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public FileLoader() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	File folder = new File("D:\\image");
        String[] fileList = folder.list();
    	sce.getServletContext().setAttribute("files", fileList);
    }
	
}
