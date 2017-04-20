package com.arcologydesigns.rest;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

/**
 * Created by VZ9YFG on 4/19/2017.
 */
@Controller
public class BaseConversion {

  @RequestMapping("/convertBases")
  public JSONArray convertBases(
      @RequestParam(value="numToConvert") int numToConvert,
      @RequestParam(value="fromThisBase") float fromThisBase,
      @RequestParam(value="toTheseBases") String toTheseBases) {

    System.out.println("numToConvert: " + numToConvert);
    System.out.println("fromThisBase: " + fromThisBase);
    System.out.println("toTheseBases: " + toTheseBases);

    JSONArray convertedValues = null;

    String stringToBases[] = toTheseBases.split(",");
    ArrayList<Integer> intToBases = new ArrayList<>();

    for (String base : stringToBases) {
      intToBases.add(Integer.parseInt(base));
    }


    return convertedValues;
  }

}
