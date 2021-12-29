//package com.example.javsvlet;
//
//import com.example.javsvlet.entity.Food;
//
//import java.util.HashMap;
//import java.util.Map;
//
//public class TestValidation {
//    public static void main(String[] args) {
//        Food food = new Food("sản phẩm 1", 10);
//        if(food.isValid()){
//            System.out.println("Hợp lệ");
//            System.out.println(food.toString());
//        }else {
//            HashMap<String, String> errors = food.getError();
//            for (Map.Entry<String, String> entry: errors.entrySet()) {
//                System.out.println(entry.getKey());
//                System.out.println(entry.getValue());
//        }
//        }
//    }
//}
