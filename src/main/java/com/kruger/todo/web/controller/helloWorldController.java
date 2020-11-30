package com.kruger.todo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/greeting")
public class helloWorldController {

    @GetMapping("/hi")
    public String greeting() {
        return "Never Stop Learning!";
    }
}
