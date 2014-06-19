package com.chinaops.view;

public class Test {
	public static void print(Object a,Object b){
	  System.out.println(a.toString() + b.toString());
	}

	public static void swap(String a, String b) {
		String temp = a;
		a = b;
		b = temp;
		print(a, b);
	}

	public static void swap(Object[] obj) {
		Object temp = obj[0];
		obj[0] = obj[1];
		obj[1] = temp;
	}

	public static void main(String agrs[]){
		String a="A",b="B";
		Integer c=0;
		swap(a,b);
		print(a,b);
		Object[] objs=new Object[]{b,c};
		swap(objs);
		print(objs[0],objs[1]);
	}
}
