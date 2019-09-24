package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/docker")
public class JenkinsMavenController {

	@GetMapping
	public String hello() {
		return "hello ahmed ";
	}

}
