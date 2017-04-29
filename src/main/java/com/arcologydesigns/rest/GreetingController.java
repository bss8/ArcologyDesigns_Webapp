package com.arcologydesigns.rest;

/**
 * Created by Boris on 12/13/2015.
 */

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.concurrent.atomic.AtomicLong;

import com.arcologydesigns.dbconn.SQLDatabaseTest;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.net.ssl.HttpsURLConnection;

@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    //TODO: modify this to capture name and store locally to welcome users
    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(),
                String.format(template, name));
    } // end greeting()

    //TODO: separate out into it's own class
    @RequestMapping("/validateCaptcha")
    public String validateCaptcha(@RequestParam(value="userResponse") String userResponse) throws IOException {
        System.out.println("User reCaptcha response: %s" + userResponse);

        String url = "https://www.google.com/recaptcha/api/siteverify";
        URL obj = new URL(url);
        HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();

        //add request header
        con.setRequestMethod("POST");
        String USER_AGENT = "Mozilla/5.0";
        con.setRequestProperty("User-Agent", USER_AGENT);
        con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");

        String MY_SECRET = "6Lf-Bx0UAAAAAKgTlZF1oSxoZ_0lvFn0FW2XQU-_";
        String urlParameters = "secret=" + MY_SECRET + "&response=" + userResponse;

        // Send post request
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(urlParameters);
        wr.flush();
        wr.close();

        int responseCode = con.getResponseCode();
        System.out.println("\nSending 'POST' request to URL : " + url);
        System.out.println("Post parameters : " + urlParameters);
        System.out.println("Response Code : " + responseCode);

        BufferedReader in = new BufferedReader(
                new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuilder response = new StringBuilder();

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        //print result
        System.out.println(response.toString());

        JSONObject jObject  = new JSONObject(response.toString()); // json
        System.out.print(jObject.toString());
        Boolean isRecaptchaValidated = jObject.getBoolean("success");


        return isRecaptchaValidated.toString();
    }

    //TODO: separate out into it's own class
    @RequestMapping(value="/azureTest", method=RequestMethod.GET, produces="application/json")
    @ResponseBody
    public String azureTest() {
        SQLDatabaseTest.main(new String[]{"Test001"});
        JSONArray jsonArray = SQLDatabaseTest.getJsonArray();
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("arrayName", jsonArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return jsonObject.toString();
    } // end azureTest()


//    @RequestMapping(value = "/release", method = RequestMethod.GET)
//    public ModelAndView releaseRedirect() {
//
//        return new ModelAndView("release_notes");
//    }




} // end class