package com.chinaops.view;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

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
/*		String a="A",b="B";
		Integer c=0;
		swap(a,b);
		print(a,b);
		Object[] objs=new Object[]{b,c};
		swap(objs);
		print(objs[0],objs[1]);
		
		
		System.out.println("*******************************************************************");
		System.out.println("输出100以内的质数（素数）：");
		for(int i=2;i<100;i++){
			int sum = 0;
			for(int j=1;j<i;j++){
				if(i%j==0){
					sum++;
				}
			}
			if(sum<2){
				System.out.print(i+" , ");
			}
		}
		System.out.println();
		
		System.out.println("程序 输出n=10的斐波那契数列的值：");
		System.out.println(fun(10));
		
		System.out.println("递归 输出n=10的斐波那契数列的值：");
		System.out.println(fun1(10)); 
		
		int tmp1 = 1;
		int tmp2 = 1;
		int sum = 0;
		for(int i=0;i<=10;i++){
			if(i<2){
				System.out.print(1 + " , ");
			}else{
				sum = tmp1 + tmp2;
				tmp1 = tmp2;
				tmp2 = sum;
				System.out.print(sum + " , ");
			}
		}
		
//		System.err.println();
		System.out.println("输出n=10的斐波那契数列：");
		System.err.println(fun2(10));
*/		
//		“百鸡问题”：公鸡一只五钱，母鸡一只三钱，雏鸡三只一钱。百钱买百鸡，问公鸡、母鸡、雏鸡各几何？写出程序
		/**
		 * 5x + 3y + 1/3*z = 100;
		 * x + y + z = 100;
		 * if x=20 5x=100;公鸡最多20只 最少0只
		 * if y=33 3y=100;母鸡最多33只 最少0只
		 * 雏鸡 z = 100 -x - y
		 */
		/*int x,y,z;
		for(x=0;x<=20;x++){
			for(y=0;y<=33;y++){
				z = 100 - x -y;
				if((5*x + 3*y + z/3 == 100) && (z%3 == 0)){
					System.out.println("公鸡："+x + " 母鸡：" + y + " 雏鸡：" + z);
				}
			}
		}*/
		/**
		 * 马戏团有鸟和大象，它们共有36个头和100只脚，问分别有多少鸟和大象？
		 * 鸟     x  
		 * 大象 y
		 * x + y = 36
		 * 2x + 4y = 100
		 */
		/*for(int brid=0;brid<=36;brid++){
			for(int big = 0;big <=36;big++){
				if(2*brid + 4*big == 100 && big + brid == 36){
					System.out.println("鸟："+brid + "大象：" + big);
				}
			}
		}*/
		
		Calendar c = Calendar.getInstance();
        DateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        
        System.out.println(c.get(Calendar.DAY_OF_WEEK));
        c.set(Calendar.DAY_OF_WEEK,7);
        System.out.println("星期六：" + f.format(c.getTime()));
	}
	public static int fun(int n) {
		int sum = 0, tmp1=1, tmp2 = 1; 
		if (n < 2){
			return 1;
		}
		for(int i = 2; i <= n; i++) {
			sum = tmp1 + tmp2; 
			tmp2 = tmp1; 
			tmp1 = sum; 
		}
		return sum; 
	}
	public static int fun1(int n) {
		int sum = 0; 
		if (n < 2){
			return 1; 
		}
		for(int i = 2; i <= n; i++) {
			sum = fun1(i-2) + fun1(i-1); 
		}
		return sum; 
	}
	
	public static String fun2(int n){
		int tmp1 = 1;
		int tmp2 = 1;
		Integer sum = 0;
		String result = "";
		for(int i=0;i<=n;i++){
			if(i<2){
				result += "1 , ";
//				System.out.print(1 + " , ");
			}else{
				sum = tmp1 + tmp2;
				tmp1 = tmp2;
				tmp2 = sum;
				result = result + sum.toString() + " , ";
//				System.out.print(sum + " , ");
			}
		}
		return result;
	}
	
}
