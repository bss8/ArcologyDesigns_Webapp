package com.arcologydesigns.rest;

import com.arcologydesigns.dbconn.SQLDatabaseTest;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by boris on 5/2/2017.
 */
@RestController
public class AzureTestController {

    //TODO: separate out into it's own class
    @RequestMapping(value="/azureTest", method= RequestMethod.GET, produces="application/json")
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
}
