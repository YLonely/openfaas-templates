package com.example.demo.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FunctionController {
    @PostMapping("/")
    public String handle(@RequestBody String input) {
        return input;
    }
}
