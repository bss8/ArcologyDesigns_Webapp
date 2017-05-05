package com.arcologydesigns.rest;

import org.json.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.net.ssl.HttpsURLConnection;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

/**
 * Created by boris on 5/2/2017.
 */
@RestController
public class ValidateCaptchaController {


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

        //TODO: always remove before push
        String MY_SECRET = "";
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

}
