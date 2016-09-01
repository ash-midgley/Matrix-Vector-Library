//
//  Fraction.swift
//  prog2.1
//
//  Created by Ashley Midgley on 7/24/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

final class Fraction{
    
    // STORED PROPERTIES
    
    internal let num: Int; // Numerator
    internal let den: Int; // Denominator
    
    var decimal: Float{
        get{
            return Float(self.num)/Float(self.den);
        }
    }
    
    var description: String{
        if(self.den == 1){
            return "\(self.num)"
        }else if(self.num == 0){
            return "0"
        }else{
            return "\(self.num)/\(self.den)"
        }
    }
    
    //Default initialiser
    init(){
        self.num = 0
        self.den = 0
    }
   
    //Custom initialiser
    init(num : Int, den : Int){
        
        assert(den != 0, "Denominator cannot be zero")
        
        var num = num;
        var den = den;
        
        if(den < 0) {
            // If the denominator is negative
            // multiply the numerator and
            // denominator by -1 - this
            // ensures the denominator is
            // always positive, and numerator
            // carries the appropriate sign
            num = -num;
            den = -den;
        }
        
        // Find greatest common denominator
        for gcd in (1...den).reverse() {
            if(num%gcd == 0 && den%gcd==0) {
                // Common denominator found,
                // divide numerator and denominator
                num /= gcd;
                den /= gcd;
                break;
            }
        }
        
        self.num = num
        self.den = den
    }
    
    //Convenience initialiser
    convenience init(num : Int){
        self.init(num: num, den: 1);
    }
    
    //METHODS
    
    func add(f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    
    func subtract(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    func multiply(f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    func divide(f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    //STATIC METHODS
    
    static func add(f1: Fraction, to f2: Fraction) -> Fraction {
        return Fraction(num: f1.num*f2.den + f1.den*f2.num,
                        den: f1.den*f2.den)
    }
    
    static func subtract(f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }

    static func multiply(f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    static func divide(f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
    //OVERLOADING METHODS
    
    func add(x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    
    func subtract(x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    
    func multiply(x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }

    func divide(x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
}

//OPERATOR OVERLOADING
    
func +(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.add(f2)
}
    
func -(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.subtract(f2)
}
    
func *(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.multiply(f2)
}
    
func /(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.divide(f2)
}
