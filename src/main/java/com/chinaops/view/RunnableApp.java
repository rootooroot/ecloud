package com.chinaops.view;

import java.text.NumberFormat;
import java.util.Scanner;

public class RunnableApp {
    public static void main(String[] args) {
    	/*
        RunnableA a = new RunnableA();
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
        new Thread(a).start();// 实例化线程并启动
       */ 
    	/*
    	Scanner g=new Scanner(System.in); //不要在循环内建立变量和实例            
    	int n ,finish;   //新加变量finish        
        for(int i=0;i<100;i++) {          
            System.out.print("输入数字：");        
            n = g.nextInt();
            finish = n;
            long result=1;
	        do
	            result*=n--;
	        while(n>=1);
	            System.out.println(finish+"! = "+result);//输出时用变量finish            
        }
        g.close();//需要关闭流        
//        new One().gett(3);
        */
        Scanner m = new Scanner(System.in);
        int n ,y;
        for(int j=0;j<10;j++){
        	System.out.print("请输入数字：");
        	int count = 1;
        	n = m.nextInt();
        	y = n;
        	/*do{
        		count *= n--;
        	}while(n>=1);*/
        	/*while(n>=1){
        		count *= n--;
        	}*/
        	for(;1<=n;n--){
        		count *= n;
        	}
        	System.out.println(y +"! = "+count);
        }
        m.close();
    }
}

// 创建线程A
class RunnableA implements Runnable {
    int i = 1;
    NumberFormat formatter = NumberFormat.getNumberInstance();
    
    public synchronized void run() {
        formatter.setMinimumIntegerDigits(3);//设置小数点前至少三位数值
        formatter.setMinimumFractionDigits(3);//设置小数点后至少三位数值
        while (i < 1000) {
            try {
                System.out.println(formatter.format(i));
                i++;
                Thread.sleep(10);                    
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

}
