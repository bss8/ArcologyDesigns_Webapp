package com.arcologydesigns.rest;

/**
 * Created by Boris on 12/13/2015.
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    // Currently, this will return the literal "index.jsp" on a separate view
    //TODO: capture via get call using JS and display as dynamic var on front end
    @RequestMapping(value="/helloWorld", method = RequestMethod.GET)
    // The below @ResponseBody sets the return string "helloWorld" as the return value. This is not what I intend to do.
    //@ResponseBody
    public String hello(ModelMap model) {

        model.addAttribute("name", "Hello World!");
        return "index.jsp";
    }
}