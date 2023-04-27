package com.study.springboot.mytest;

import java.util.ArrayList;
import java.util.List;

public class gugugu {
	
	public static void main(String[] args) {
		
		List<Integer> table = new ArrayList<>();



		for (int j = 2; j<10; j++){
			for (int i = 1; i<10; i++) {
			System.out.println(j + "*" + i + "=" + j*i);
			int result = j * i;
			table.add(result);
			}
		}
		
		
		List<Integer> odd = new ArrayList<>();
		for (int i = 0; i<table.size(); i++){
			if(table.get(i) % 2 != 1){
				odd.add(table.get(i));
			}
		}
		System.out.println(odd);
	}
}
