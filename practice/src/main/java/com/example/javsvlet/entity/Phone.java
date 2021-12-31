package com.example.javsvlet.entity;

import com.example.javsvlet.annotation.Column;
import com.example.javsvlet.annotation.Entity;
import com.example.javsvlet.annotation.Id;
import com.example.javsvlet.util.SQLDataTypes;

@Entity(tableName = "phones")
public class Phone {
    @Id(autoIncrement = true)
    @Column(columnName = "id", columnType = SQLDataTypes.INTEGER)
    private int id;
    @Column(columnName = "name", columnType = SQLDataTypes.VARCHAR50)
    private String name;
    @Column(columnName = "description", columnType = SQLDataTypes.VARCHAR255)
    private String description;
    @Column(columnName = "price", columnType = SQLDataTypes.DOUBLE)
    private double price;
    @Column(columnName = "brand", columnType = SQLDataTypes.VARCHAR50)
    private String brand;
    @Column(columnName = "status", columnType = SQLDataTypes.INTEGER)
    private int status;

    @Override
    public String toString() {
        return "Phone{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", brand='" + brand + '\'' +
                ", status=" + status +
                '}';
    }
    public Phone(){

    }

    public Phone(String name, String description, double price, String brand, int status) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.brand = brand;
        this.status = status;
    }

    public Phone(int id, String name, String description, double price, String brand, int status) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.brand = brand;
        this.status = status;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
