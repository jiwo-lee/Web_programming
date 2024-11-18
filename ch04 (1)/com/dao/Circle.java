package ch04.com.dao;

public class Circle {
    private double radius;
    private final static double PI = 3.141592;   
    public Circle(){}

    public Circle(double r){
        this.radius = r;
    }  

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
    public double getArea(){
        return radius * radius * PI;
    }
   
    public double getPerimeter() {
        return 2 * radius * PI;
    }

    public void incRadius(double r) {
        this.radius = radius + r;
    }
}