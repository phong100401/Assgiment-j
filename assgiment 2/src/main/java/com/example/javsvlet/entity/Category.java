package com.example.javsvlet.entity;

import com.example.javsvlet.annotation.Column;
import com.example.javsvlet.annotation.Entity;
import com.example.javsvlet.annotation.Id;
import com.example.javsvlet.util.SQLDataTypes;

@Entity(tableName = "categories")
public class Category {
    @Id(autoIncrement = true)
    @Column(columnName = "id", columnType = SQLDataTypes.INTEGER)
    private int id;
    @Column(columnName = "category_name", columnType = SQLDataTypes.VARCHAR50)
    private String name;

    public Category() {
    }

    public Category(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Category(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
