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
  public int sendEmail(@RequestParam("toField") String toField ,
      @RequestParam("ccField") String ccField,
      @RequestParam("subjectField") String subjectField,
      @RequestParam("messageField") String messageField)
      throws MessagingException {

    MailService.generateAndSendEmail(toField, ccField,
        subjectField, messageField);

    return 1;
  }

}
