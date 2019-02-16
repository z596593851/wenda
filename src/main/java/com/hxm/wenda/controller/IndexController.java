package com.hxm.wenda.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Arrays;
import java.util.List;

//@Controller
public class IndexController {

    @RequestMapping(path = {"/","/index"},method = {RequestMethod.GET})
    public String index(Model model){
        model.addAttribute("name","xiaoming");
        List<String> colors = Arrays.asList(new String[]{"RED", "GREEN", "BLUE"});
        model.addAttribute("colors",colors);
        return "home2";
    }
}
