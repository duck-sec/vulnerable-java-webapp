import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import javax.servlet.ServletException;

@WebServlet("/execute")
public class CommandExecutorServlet extends HttpServlet {
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    String command = request.getParameter("command");

    if (command != null && !command.isEmpty()) {
        // Modify the command to include "ping -c 4" and the user-provided command
        String fullCommand = "ping -c 4 " + command;

        // Execute the command (handle security and sanitization here)
        String result = executeCommand(fullCommand);

        // Set the result as a request attribute
        request.setAttribute("result", result);

        // Forward the request to the execute.jsp page
        request.getRequestDispatcher("/execute.jsp").forward(request, response);
    } else {
        // Handle the case where no command is entered
        request.setAttribute("result", "Please enter a command.");
        request.getRequestDispatcher("/execute.jsp").forward(request, response);
    }
}

    private String executeCommand(String command) {
        try {
            Process process = new ProcessBuilder("/bin/bash", "-c", command).start();

            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("\n");
            }

            int exitCode = process.waitFor();

            if (exitCode == 0) {
                return output.toString();
            } else {
                return "Command execution failed with exit code " + exitCode;
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "Command execution failed: " + e.getMessage();
        }
    }
}
