package com.example.javsvlet.entity;

import com.example.javsvlet.annotation.Column;
import com.example.javsvlet.annotation.Entity;
import com.example.javsvlet.annotation.ForeignKey;
import com.example.javsvlet.annotation.Id;
import com.example.javsvlet.util.SQLDataTypes;

import java.util.Date;
import java.util.HashMap;

@Entity(tableName = "food")
public class Food {
    @Id(autoIncrement = true)
    @Column(columnName = "id",columnType = SQLDataTypes.INTEGER)
    private int id;
    @Column(columnName = "food_name",columnType = SQLDataTypes.VARCHAR255)
    private String name;
    @Column(columnName = "price",columnType = SQLDataTypes.DOUBLE)
    private double price;
    @Column(columnName = "description",columnType = SQLDataTypes.TEXT)
    private String description;
    @Column(columnName = "thumbnail",columnType = SQLDataTypes.VARCHAR255)
    private String thumbnail;
    @Column(columnName = "status",columnType = SQLDataTypes.INTEGER)
    private int status;
    @Column(columnName = "created_at",columnType = SQLDataTypes.DATE)
    private Date created_at;
    @Column(columnName = "updated_at", columnType = SQLDataTypes.DATE)
    private Date updated_at;

    @Column(columnName = "categoryId", columnType = SQLDataTypes.INTEGER)
    @ForeignKey(referenceColumn = "id",referenceTable = "categories")
    private int categoryId;

    public Food() {
        this.name = "";
        this.description = "";
        this.thumbnail = "";
        this.status = 0;
        this.price = 0;
    }

    public Food(int id, String name, double price, String description, String thumbnail, int status, Date created_at, Date updated_at, int categoryId) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.thumbnail = thumbnail;
        this.status = status;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.categoryId = categoryId;
    }

    public Food( String name, double price, String description, String thumbnail, int status, Date created_at, int categoryId) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.thumbnail = thumbnail;
        this.status = status;
        this.created_at = created_at;
        this.categoryId = categoryId;
    }

    public Food(String name, double price) {
        this.name = name;
        this.price = price;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public boolean isValid(){

        return getError().size() == 0;
    }
    public HashMap<String, String> getError(){
        HashMap<String, String> errors = new HashMap<>();
        if (name == null || name.length() == 0 || name.length() < 7){
            errors.put("name","Vui lòng nhập tên sản phẩm hơn 7 kí tự");
        }
        if(price == 0){
            errors.put("price", "Vui lòng nhập giá lớn hơn 0");
        }
        if (thumbnail == null || thumbnail.length() == 0 ){
            errors.put("thumbnail","Vui lòng thêm ảnh cho sản phẩm");
        }
        return errors;
    }
}
