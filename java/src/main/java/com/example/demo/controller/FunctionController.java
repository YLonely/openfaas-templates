package com.example.demo.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FunctionController {
    @PostMapping("/")
    public String handle(@RequestParam(name = "input") String input) {
        return input;
    }
}
