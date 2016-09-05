//
//  Complex.swift
//  prog3.3
//
//  Created by Ashley Midgley on 8/9/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

/**
 Represents a complex number
 
 */
final class Complex : CustomStringConvertible {
    
    // STORED PROPERTIES
    
    var real: Float;   // Real part of the number
    var imag: Float;   // Imaginary part of the number
    
    // COMPUTED PROPERTIES
    
    /**
     - returns: Float Magnitude of the complex number
     */
    var magnitude: Float {
        return pow(self.real, 2)+pow(self.imag, 2)
    }
    
    /**
     - returns: String String representation of a complex number
     */
    var description: String {
        var result = "\(self.real)"
        if(self.imag > 0){
            result += "+\(self.imag)i"
        }else if(self.imag == 0){
            result += "+\(self.imag)i"
        }else{
            result += "\(self.imag)i"
        }
        return result
    }
    
    // INITIALISERS
    
    
    /**
     Designated initialiser
     
     Real and imaginary parts are passed in the arguments of the initialiser.
     
     - parameter real Real part of the numerator
     - parameter imag Imaginary part of the number
     */
    init(real : Float, imag : Float) {
        self.real = real
        self.imag = imag
    }
    
    /**
     Default initialiser
     
     Sets complex number to 0
     */
    convenience init() {
        self.init(real: 0, imag: 0);
    }
    
    // METHODS
    
    /**
     Adds two complex numbers.
     
     - parameter c1: Complex number to add to
     - parameter c2: Complex number to be added
     
     - returns: The result of c1 + c2.
     */
    static func add(c1: Complex, to c2: Complex) -> Complex {
        return Complex(real: c1.real+c2.real, imag: c1.imag+c2.imag)
    }
    
    /**
     Subtract a complex number from a complex number.
     
     - parameter c1: Complex number to subtract
     - parameter c2: Complex number to subtract from
     
     - returns: The result of c2 - c1.
     */
    static func subtract(c1: Complex, from c2: Complex) -> Complex {
        return Complex(real: c1.real-c2.real, imag: c1.imag-c2.imag)
    }
    
    /**
     Multiply a complex number by a complex number.
     
     - parameter c1: Complex number to multiply
     - parameter c2: Complex number to multiply by
     
     - returns: The result of c1*c2.
     */
    static func multiply(c1: Complex, by c2: Complex) -> Complex {
        return Complex(real: c1.real*c2.real, imag: c1.imag*c2.imag)
    }
    
    /**
     Divide a complex number by a complex number.
     
     - parameter c1: Complex number to divide
     - parameter c2: Complex number to divide by
     
     - returns: The result of c1/c2.
     */
    static func divide(c1: Complex, by c2: Complex) -> Complex {
        return Complex(real: c1.real/c2.real, imag: c1.imag/c2.imag)
    }
    
    //OVERLOADING METHODS
    
    //Complex - Complex
    
    func add(x: Complex) -> Complex {
        return Complex(real: self.real+x.real,
                       imag: self.imag+x.imag)
    }
    
    func subtract(x: Complex) -> Complex {
        return Complex(real: self.real-x.real,
                       imag: self.imag-x.imag)
    }
    
    func multiply(x: Complex) -> Complex {
        let f1 = self.real * x.real
        let f2 = self.real * x.imag
        let f3 = self.imag * x.real
        let f4 = -1*(self.imag * x.imag)
        return Complex(real: f1+f4,
                       imag: f2+f3)
    }
    
    func divide(x: Complex) -> Complex {
        var conj: Complex;
        conj = Complex(real: x.real, imag: -(x.imag))
        var numerator: Complex;
        numerator = Complex(real:self.real, imag:self.imag).multiply(conj)
        let denominator = (x.real*x.real) + (x.imag*x.imag)
        return Complex(real: numerator.real/denominator,
                       imag: numerator.imag/denominator)
    }
    
    //Complex - Float
    
    func add(x: Float) -> Complex {
        return Complex(real: self.real+x,
                       imag: self.imag)
    }
    
    func subtract(x: Float) -> Complex {
        return Complex(real: self.real-x,
                       imag: self.imag)
    }
    
    func multiply(x: Float) -> Complex {
        return Complex(real: self.real*x,
                       imag: self.imag*x)
    }
    
    func divide(x: Float) -> Complex {
        return Complex(real: self.real/x,
                       imag: self.imag/x)
    }
    
    func copy() -> Complex{
        let x: Complex = Complex(real: self.real, imag: self.imag)
        return x
    }
}

/**
 + operator between two Complex numbers
 */
func +(c1: Complex, c2: Complex) -> Complex {
    return c1.add(c2)
}

/**
 - operator between two Complex numbers
 */
func -(c1: Complex, c2: Complex) -> Complex {
    return c1.subtract(c2)
}

/**
 * operator between two Complex numbers
 */
func *(c1: Complex, c2: Complex) -> Complex {
    return c1.multiply(c2)
}

/**
 / operator between two Complex numbers
 */
func /(c1: Complex, c2: Complex) -> Complex {
    return c1.divide(c2)
}

/**
 + operator between a Complex number and a Float
 */
func +(c: Complex, x: Float) -> Complex {
    return c.add(x)
}

/**
 - operator between a Complex number and a Float
 */
func -(c: Complex, x: Float) -> Complex {
    return c.subtract(x)
}

/**
 * operator between a Complex number and a Float
 */
func *(c: Complex, x: Float) -> Complex {
    return c.multiply(x)
}

/**
 / operator between a Complex number and a Float
 */
func /(c: Complex, x: Float) -> Complex {
    return c.divide(x)
}