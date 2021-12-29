//package com.example.javsvlet;
//
//import com.example.javsvlet.entity.Food;
//import com.example.javsvlet.repository.JpaRepository;
//
//public class testPage {
//    public static void main(String[] args) {
//        JpaRepository<Food> foodJpaRepository = new JpaRepository<>(Food.class);
//        int totalRecord = foodJpaRepository.countData();
//        int limit = 5;
//        int totalPage = (int) Math.ceil((float)totalRecord / (float) limit);
//        System.out.println("total record: " + totalRecord);
//        System.out.println("limit: " + limit);
//        System.out.println("total pages: " + totalPage);
//    }
//}
