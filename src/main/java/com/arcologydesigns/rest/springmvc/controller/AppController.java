package com.arcologydesigns.rest.springmvc.controller;

/**
 * Created by boris on 4/27/2017.
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("/")
public class AppController {

    @RequestMapping(value = { "/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model) {
        return "/";
    }

    @RequestMapping(value = { "/products"}, method = RequestMethod.GET)
    public String productsPage(ModelMap model) {
        return "products";
    }

    @RequestMapping(value = { "/contactus"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
        return "contactus";
    }

    @RequestMapping(value = { "/sitefeatures"}, method = RequestMethod.GET)
    public String siteFeaturesPage(ModelMap model) {
        return "sitefeatures";
    }

    @RequestMapping(value = { "/requestfeatures"}, method = RequestMethod.GET)
    public String requestFeaturesPage(ModelMap model) {
        return "requestfeatures";
    }

    @RequestMapping(value = { "/restexample"}, method = RequestMethod.GET)
    public String restExamplePage(ModelMap model) {
        return "restexample";
    }

}
