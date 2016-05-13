package com.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;

@Controller
public class test2 {
    public static void main(String[] args) {

        List<Integer> redBallList = new ArrayList<Integer>();

        Integer redBallArry[] = new Integer[]{
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0};
        Integer BlueBallArry[] = new Integer[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

        System.out.println(redBallArry.length);
        for (int i = 0; i < 10000; i++) {

            while (redBallList.size() < 6) {

                int number = (int)(1 + Math.random() * (33));
                redBallArry[number - 1] += 1;
                if (!redBallList.contains(number)) {
                    redBallList.add(number);
                }

            }
            redBallList.sort(null);
            System.out.print("RED BALL：");
            redBallList.forEach(redBall -> {
                System.out.print((redBall < 10 ? "0" + redBall : redBall) + " ");
            });
            System.out.println();
            int blueBall = (int)(1 + Math.random() * (16));
            BlueBallArry[blueBall - 1] += 1;

            System.out.println("BLUE BALL：" + (blueBall < 10 ? "0" + blueBall : blueBall));
            redBallList.clear();// 清空选中的球

        }

        System.out.println("------------------------------------------");
        // List<Integer> listRedBall =new ArrayList<Integer>(Arrays.asList(redBallArry));

        for (int i = 0; i < redBallArry.length; i++) {

            if (redBallArry[i] > 2000) {
                System.err.println("红球：" + ((i + 1) < 10 ? "0" + (i + 1) : (i + 1)) + ":" + redBallArry[i]);
            } else {
                System.out.println("红球：" + ((i + 1) < 10 ? "0" + (i + 1) : (i + 1)) + ":" + redBallArry[i]);
            }
        }
        System.out.println("------------------------------------------");
        for (int j = 0; j < BlueBallArry.length; j++) {
            System.out.println("蓝球：" + ((j + 1) < 10 ? "0" + (j + 1) : (j + 1)) + ":" + BlueBallArry[j]);
        }

    }
}
