package com.codeup.adlister.models;

public class Category {
    private long id;
    private String title;


    public Category(long id, String title) {
        this.id = id;
        this.title = title;
    }

    public Category(String title) {
        this.title = title;

    }



    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

}