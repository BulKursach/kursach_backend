package ru.itis.kursach.controllers;

public abstract class AbstractController {

    protected final static String DEFAULT_DISEASE = "ВИЧ";

    protected final static String DEFAULT_DISTRICT = "российская федерация";

    protected static Short getDefaultYear(String district, String disease) {
        return null;
    }
}
