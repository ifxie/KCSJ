package utils;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ResponseJson {
    public static void responseJSON(HttpServletResponse response, String json){
        try {
            response.setContentType("application/json;charset=UTF-8");
            response.getWriter().write(json);
        } catch (IOException e) {
        }
    }

}
