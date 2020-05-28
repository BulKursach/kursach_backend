package ru.itis.kursach.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin(origins = "http://5.53.125.224::3000")
public abstract class AbstractController {

    protected final static String DEFAULT_DISEASE = "ВИЧ";

    protected final static String DEFAULT_DISTRICT = "российская федерация";
}