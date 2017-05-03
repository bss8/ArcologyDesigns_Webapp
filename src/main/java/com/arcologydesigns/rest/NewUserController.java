package com.arcologydesigns.rest;

import com.arcologydesigns.dbconn.MariaDbDao;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequestWrapper;

/**
 * Created by boris on 5/2/2017.
 */
@RestController
public class NewUserController {

    @RequestMapping(value = "/createNewUser", method = RequestMethod.POST,
            consumes = "application/json")
    public void insertNewUser(@RequestBody String postPayload) {
        System.out.println("can you see this: " + postPayload);

        JSONObject jsonObject = new JSONObject(postPayload);

        MariaDbDao mariaDbDao = new MariaDbDao();
        String name = jsonObject.get("Name").toString();
        String email = jsonObject.get("Email").toString();
        String password = jsonObject.get("Password").toString();

        mariaDbDao.setNewUserName(name);
        mariaDbDao.setNewUserEmail(email);
        mariaDbDao.setNewUserPassword(password);

        mariaDbDao.connectMariaDb();


    }


}
