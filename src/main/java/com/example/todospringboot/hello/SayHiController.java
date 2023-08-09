package com.example.todospringboot.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHiController {

    @RequestMapping("say-hi")
    @ResponseBody
    public String sayHi() {
        return "Hi, whatcha doin?";
    }

    @RequestMapping("say-hi-jsp")
    public String sayHiJSP() {
        return "welcome";
    }

}
