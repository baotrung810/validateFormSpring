/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv29_spring_mvc_simpleform.controller;

import com.mycompany.jv29_spring_mvc_simpleform.enums.Gender;
import com.mycompany.jv29_spring_mvc_simpleform.model.User;
import javax.validation.Valid;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author AnhLe
 */
@Controller
public class UserController {

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String home(Model model) {
        return "home";
    }

    String[] countries = {"Viet Nam", "Lao", "Cambodia"};

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("countries", countries);
        model.addAttribute("genders", Gender.values());
      //  return "user-form";
      return "user_form_html";
    }

 /*   @RequestMapping(value = "/result", method = RequestMethod.POST)
    public String result(Model model,
            @ModelAttribute(value = "user") User u) {
        model.addAttribute("user", u);
        return "result";
    }*/
 @RequestMapping(value = "/result", method = RequestMethod.POST)
    public String result(Model model,
             @ModelAttribute(value = "user") @Valid User u,
            BindingResult result) { // BindingResult result dung kiem tra xem co loi hay k
        model.addAttribute("user", u);
        if(result.hasErrors()){
            model.addAttribute("countries",countries);
            model.addAttribute("genders",Gender.values());
           return  "user_form_html";
        }
        return "result";
    }
}
