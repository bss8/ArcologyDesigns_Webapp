package com.arcologydesigns.rest;

import com.arcologydesigns.dbconn.MariaDbDao;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.*;

/**
 * Created by boris on 5/2/2017.
 */
@RestController
public class UserController {


    @RequestMapping(value = "/createNewUser", method = RequestMethod.POST,
            consumes = "application/json")
    public void insertNewUser(@RequestBody String postPayload) {
        System.out.println("can you see new user payload: " + postPayload);

        JSONObject jsonObject = new JSONObject(postPayload);

        MariaDbDao mariaDbDao = new MariaDbDao();
        String name = jsonObject.get("Name").toString();
        String email = jsonObject.get("Email").toString();
        String password = jsonObject.get("Password").toString();

        mariaDbDao.setNewUserName(name);
        mariaDbDao.setNewUserEmail(email);
        mariaDbDao.setNewUserPassword(password);

        mariaDbDao.connectMariaDb(true);
    }

    @RequestMapping(value = "/validateUser", method = RequestMethod.POST,
            consumes = "application/json")
    public String validateUser(@RequestBody String postPayload) {
        System.out.println("can you see existing user payload: " + postPayload);


        JSONObject jsonObject = new JSONObject(postPayload);

        MariaDbDao mariaDbDao = new MariaDbDao();
        String email = jsonObject.get("Email").toString();
        String password = jsonObject.get("Password").toString();
        mariaDbDao.setExistingUserEmail(email);
        mariaDbDao.setExistingUserPassword(password);

        mariaDbDao.setExistingUserEmail(email);
        mariaDbDao.setExistingUserPassword(password);

        Boolean isUserValid = mariaDbDao.connectMariaDb(false);


        return isUserValid.toString();
    }



}
