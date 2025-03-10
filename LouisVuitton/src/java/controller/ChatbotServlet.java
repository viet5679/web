import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import org.json.JSONObject;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONArray;

@WebServlet(name = "ChatbotServlet", urlPatterns = {"/chatbot"})
public class ChatbotServlet extends HttpServlet {

    private static final String API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent";
    private static final String API_KEY = "AIzaSyDM0nAapvSgcvC_8j-7s2FsdedjZSFiuvI"; // Thay API Key của bạn vào đây

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Chatbot API - Vui lòng sử dụng POST request</h2>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            // Đọc dữ liệu từ request
            BufferedReader reader = request.getReader();
            StringBuilder requestBody = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                requestBody.append(line);
            }
            reader.close();

            // Parse JSON request
            JSONObject jsonRequest = new JSONObject(requestBody.toString());
            if (!jsonRequest.has("text")) {
                throw new Exception("Trường 'text' không tồn tại trong yêu cầu.");
            }
            String userMessage = jsonRequest.getString("text");

            // Gọi Google Gemini API
            String botResponse = callGeminiAPI(userMessage);

            // Gửi phản hồi về client
            JSONObject jsonResponse = new JSONObject();
            jsonResponse.put("response", botResponse);
            response.getWriter().write(jsonResponse.toString());

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(" Lỗi xử lý request: " + e.getMessage());

            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            JSONObject errorResponse = new JSONObject();
            errorResponse.put("error", "Internal Server Error");
            errorResponse.put("message", e.getMessage());
            response.getWriter().write(errorResponse.toString());
        }
    }

    private String callGeminiAPI(String message) throws IOException {
        URL url = new URL(API_URL + "?key=" + API_KEY);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        conn.setDoOutput(true);

        // Tạo JSON request
        JSONObject requestBody = new JSONObject();
        JSONArray contentsArray = new JSONArray();
        JSONObject messageObject = new JSONObject();
        JSONArray partsArray = new JSONArray();
        partsArray.put(new JSONObject().put("text", message));

        messageObject.put("parts", partsArray);
        contentsArray.put(messageObject);
        requestBody.put("contents", contentsArray);


        // Gửi request đến Google API
        OutputStream os = conn.getOutputStream();
        os.write(requestBody.toString().getBytes("UTF-8"));
        os.close();

        // Đọc phản hồi từ API
        int responseCode = conn.getResponseCode();

        if (responseCode == 200) { // OK
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine);
            }
            br.close();


            JSONObject jsonResponse = new JSONObject(response.toString());
            JSONArray candidates = jsonResponse.getJSONArray("candidates");
            if (candidates.length() > 0) {
                JSONObject content = candidates.getJSONObject(0).getJSONObject("content");
                JSONArray parts = content.getJSONArray("parts");
                if (parts.length() > 0) {
                    return parts.getJSONObject(0).getString("text");
                }
            }
            return "Xin lỗi, tôi không thể trả lời ngay lúc này.";

        } else if (responseCode == 400) {
            // API trả về lỗi
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
            StringBuilder errorResponse = new StringBuilder();
            String errorLine;
            while ((errorLine = br.readLine()) != null) {
                errorResponse.append(errorLine);
            }
            br.close();

            JSONObject errorJson = new JSONObject(errorResponse.toString());
            String errorMessage = errorJson.getJSONObject("error").getString("message");
            return "Lỗi từ API: " + errorMessage;

        } else {
            // API trả về lỗi khác
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
            StringBuilder errorResponse = new StringBuilder();
            String errorLine;
            while ((errorLine = br.readLine()) != null) {
                errorResponse.append(errorLine);
            }
            br.close();

            return "Lỗi từ API: Mã trạng thái " + responseCode;
        }
    }
}
