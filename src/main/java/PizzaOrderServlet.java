import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name= "PizzaOrderServlet" , urlPatterns="/pizza-order")
public class PizzaOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");
        String[] toppings = request.getParameterValues("toppings");
        String address = request.getParameter("address");

        System.out.println("Crust: " + crust);
        System.out.println("Sauce: " + sauce);
        System.out.println("Size: " + size);
        System.out.println("Toppings: ");
        if (toppings != null) {
            for (String topping : toppings) {
                System.out.println("- " + topping);
            }
        }
        System.out.println("Address: " + address);

        response.sendRedirect("thank-you.jsp");
    }
}
