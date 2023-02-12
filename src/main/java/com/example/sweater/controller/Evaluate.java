package com.example.sweater.controller;

import com.example.sweater.domain.Role;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Evaluate {
    public static void main(String[] args) {
        System.out.println("test");
        Role[] values = Role.values();
        List<String> collect = Arrays.stream(values)
                .map(f -> f.name())
                .collect(Collectors.toList());
        System.out.println(collect);
    }
}
