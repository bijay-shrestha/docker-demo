package com.bijay.dockerdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerController {

    @GetMapping("/demo")
    public String getDemo(){
        return "This is a demo docker app";
    }
}
