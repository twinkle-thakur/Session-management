package com.session.upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download.do")
public class DownloadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("filename");
        if (fileName == null || fileName.isEmpty()) {
            response.getWriter().println("Filename is missing.");
            return;
        }

        String path = request.getServletContext().getRealPath("/") + "image";
        File dir = new File("D:\\image");
        File file = new File(dir, fileName);

        if (!file.exists()) {
            response.getWriter().println("File not found.");
            return;
        }

        String mimeType = getServletContext().getMimeType(file.getName());
        if (mimeType == null) {
            mimeType = "application/octet-stream";
        }

        response.setContentType(mimeType);
        response.setContentLength((int) file.length());

        // Set content disposition
        String[] split = file.getName().split("\\.");
       String extension= file.getName().split("\\.")[1].toLowerCase();
       Set<String> set=Set.of("jpg","png");
        if (set.contains(extension)) {
            response.setHeader("Content-Disposition", "attachment;filename=\"" + file.getName() + "\"");
        } 

        // File download logic
        try (FileInputStream fileInputStream = new FileInputStream(file);
             ServletOutputStream outputStream = response.getOutputStream()) {

            byte[] buffer = new byte[4096];
            int bytesRead;

            while ((bytesRead = fileInputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
        }
    }
}
