package com.arcologydesigns.javamail.controller;

import com.arcologydesigns.javamail.service.MailService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;

/**
 * Created by vz9yfg on 4/11/2017.
 */
@RestController
public class MailController {

  @RequestMapping("/sendEmail")
  public String sendEmail(@RequestParam(value="toField", defaultValue="arcologydesigns@gmail.com") String toField ,
      @RequestParam(value="ccField", defaultValue="-") String ccField,
      @RequestParam(value="subjectField", defaultValue="Test") String subjectField,
      @RequestParam(value="messageField", defaultValue="Test") String messageField)
      throws MessagingException {

      Boolean b1 = MailService.generateAndSendEmail(toField, ccField,
         subjectField, messageField);

    return b1.toString();
  }

}
