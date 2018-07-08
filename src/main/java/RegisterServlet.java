import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet(urlPatterns = "/reg/regist.do" )
public class RegisterServlet extends HttpServlet {

    //private static final long serialVersionUID = 3398560501558431737L;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 获得 当前请求 对应的 会话对象
        HttpSession session = request.getSession();

        // 从请求中获得 URI ( 统一资源标识符 )
        String username = request.getParameter("username");
        System.out.println("hello : " + username);


        // 建立 uri 和 相应的 验证码 的关联 ( 存储到当前会话对象的属性中 )
        session.setAttribute("username", username);

        request.getRequestDispatcher("/success.jsp").forward(request,response);
    }

}