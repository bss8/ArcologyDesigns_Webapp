package com.arcologydesigns.rest;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonRawValue;
import jdk.nashorn.internal.objects.annotations.Getter;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

/**
 * Created by VZ9YFG on 4/19/2017.
 */
@RestController
public class BaseConversion {


  private JSONObject convertedValues;
  private JSONObject jsonObject;

  @RequestMapping("/convertBases")
  public String convertBases(
      @RequestParam(value="numToConvert", defaultValue = "5") String numToConvert,
      @RequestParam(value="fromThisBase", defaultValue = "10") String fromThisBase,
      @RequestParam(value="toTheseBases", defaultValue = "2") String toTheseBases) {

    JSONArray jsonArray = new JSONArray();
    convertedValues = new JSONObject();

    System.out.println("numToConvert: " + numToConvert);
    System.out.println("fromThisBase: " + fromThisBase);
    System.out.println("toTheseBases: " + toTheseBases);

    int number = Integer.parseInt(numToConvert);



    String stringToBases[] = toTheseBases.split(",");

    for (String base : stringToBases) {
      int intBase = Integer.parseInt(base);
      System.out.println("int base: " + intBase);
      switch (intBase) {
        case 2: String binary = Integer.toBinaryString(number);

                convertedValues.put("base2", binary);
                System.out.println(convertedValues.toString());
                break;
        case 3:
                convertedValues.put("base3", asBase3(number));
                System.out.println(convertedValues.toString());
                break;

        default: return null;

      }

    }

    System.out.println("converted values: " + convertedValues.toString());
    jsonArray.put(convertedValues);
    jsonObject = new JSONObject();
    jsonObject.put("jsonbasedata", jsonArray);
    System.out.println("converted values: " + jsonObject.toString());

    return getJson();
  }

  public static long asBase3(int num) {
    long ret = 0, factor = 1;
    while (num > 0) {
      ret += num % 3 * factor;
      num /= 3;
      factor *= 10;
    }
    return ret;
  }

//  @Getter
//  public JSONObject getConvertedBases() {
//    return convertedValues;
//  }

  @JsonRawValue
  @JsonInclude(JsonInclude.Include.NON_NULL)
  @JsonProperty(value = "jsonbasedata")
  public String getJson() {
    return jsonObject.toString();
  }

}
