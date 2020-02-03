package io;
import java.awt.*;
import java.io.FileInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

class ReadFromFileUsingScanner {

    int lineNumber;

    public static void main(String[] args) throws Exception {

        File file=new File("C:/Users/popob/Desktop/image.txt.txt");

        Scanner sc=new Scanner(file);

        while(sc.hasNextLine()){
            System.out.println(sc.nextLine());

        }
    }

    public void setLineNumber(int lineNumber) throws Exception {

        new FileReader("C:/Users/popob/Desktop/image.txt.txt");
        this.lineNumber = lineNumber;
    }
}