package by.gsu.epamlab.servlets;

import by.gsu.epamlab.constants.Constants;
import by.gsu.epamlab.constants.JSPConstants;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class DownloadFileServlet extends AbstractServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fileName = request.getParameter(JSPConstants.REQ_PARAM_FILE);
        String filePath = Constants.FILE_UPLOAD_ROOT;
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + fileName + "\"");
        ServletOutputStream out = response.getOutputStream();
        downloadFile(fileName, filePath, out);
    }

    private void downloadFile(String fileName, String filePath, ServletOutputStream out) {
        try {
            FileInputStream fileInputStream = new FileInputStream(filePath + fileName);
            int i;
            while ((i = fileInputStream.read()) != -1) {
                out.write(i);
            }
            fileInputStream.close();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

















