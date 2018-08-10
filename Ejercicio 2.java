/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package suma;


import java.util.Scanner;

/**
 *
 * @author Capacitacion6
 */
public class Suma {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        int X = 0;
        int Y = 0;
        int suma = 0;
        int resta = 0;
        int multi = 0;
        int division = 0;
        
        System.out.println("Ingrese el primer numero: ");
        
        X = leer.nextInt ();
        
        System.out.println("Ingrese el segundo numero: ");
        
        Y = leer.nextInt();
        suma = X + Y;
        resta = X - Y;
        multi = X * Y;
        division = X / Y;
        
        System.out.println("La Suma es: " + suma);
        System.out.println("la Resta es: " + resta);
        System.out.println("La Multiplicacion es: " + multi);
        System.out.println("la Divicion es: " + division);
    }
    
}
