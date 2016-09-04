//
//  VectorTest.swift
//  progA1
//
//  Created by Ashley Midgley on 8/27/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class VectorTest{
    
    var tests: [[Bool]] = [[Bool]]()
    
    var results: [[Bool]]{
        return self.tests
    }
    
    init(){
        runTests()
    }
    
    func runTests(){
        tests.append(t1())
        tests.append(t2())
        tests.append(t3())
        tests.append(t4())
        tests.append(t5())
        tests.append(t6())
        tests.append(t7())
        tests.append(t8())
        tests.append(t9())
        tests.append(t10())
        tests.append(t11())
        //tests.append(t12())
        //tests.append(t13())
    }
    
    func testCase(lhs: Vector<Int>, rhs: [Int]) -> Bool{
        for r in 0...(lhs.size-1){
            if(lhs[r] != rhs[r]){
                return false
            }
        }
        return true
    }
    
    func testCase(lhs: Vector<Double>, rhs: [Double]) -> Bool{
        for r in 0...(lhs.size-1){
            if(lhs[r] != rhs[r]){
                return false
            }
        }
        return true
    }

    func testCase(lhs: Vector<Float>, rhs: [Float]) -> Bool{
        for r in 0...(lhs.size-1){
            if(lhs[r] != rhs[r]){
                return false
            }
        }
        return true
    }
    
    func testCase(lhs: Vector<Fraction>, rhs: [Fraction]) -> Bool{
        for r in 0...(lhs.size-1){
            if(lhs[r] !== rhs[r]){
                return false
            }
        }
        return true
    }
    
    func testCase(lhs: Vector<Complex>, rhs: [Complex]) -> Bool{
        for r in 0...(lhs.size-1){
            if(lhs[r] !== rhs[r]){
                return false
            }
        }
        return true
    }
    
    func t1() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Int
        let vec1: Vector<Int> = Vector<Int>(size: 4)
        print("Int:      ", terminator: "")
        vec1[0] = 1
        vec1[1] = 2
        vec1[2] = 3
        vec1[3] = 4
        
        let result: [Int] = [1, 2, 3, 4]
        cases.append(testCase(vec1, rhs: result))
        
        
        //Double
        let vec2: Vector<Double> = Vector<Double>(size: 4)
        print("Double:   ", terminator: "")
        vec2[0] = 1.0
        vec2[1] = 2.45
        vec2[2] = 3.98
        vec2[3] = 4.25135324513
        
        let resultD: [Double] = [1.0, 2.45, 3.98, 4.25135324513]
        cases.append(testCase(vec2, rhs: resultD))
        
        //Float
        let vec3: Vector<Float> = Vector<Float>(size: 4)
        print("Float:    ", terminator: "")
        vec3[0] = 1.0
        vec3[1] = 2.45
        vec3[2] = 3.98
        vec3[3] = 4.25135324513
        
        let resultF: [Float] = [1.0, 2.45, 3.98, 4.25135]
        cases.append(testCase(vec3, rhs: resultF))
        
        //Fraction
        let vec4: Vector<Fraction> = Vector<Fraction>(size: 4)
        print("Fraction: ", terminator: "")
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        vec4[0] = f1
        vec4[1] = f2
        vec4[2] = f3
        vec4[3] = f4
        
        let resultFrac: [Fraction] = [f1, f2, f3, f4]
        cases.append(testCase(vec4, rhs: resultFrac))
        
        //Complex
        let vec5: Vector<Complex> = Vector<Complex>(size: 4)
        print("Complex:  ", terminator: "")
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        vec5[0] = c1
        vec5[1] = c2
        vec5[2] = c3
        vec5[3] = c4
        
        let resultComp: [Complex] = [c1, c2, c3, c4]
        cases.append(testCase(vec5, rhs: resultComp))
        
        return cases
    }
    
    func t2() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec1 = Vector<Int>(size: 5)
        print("Vector 1:\n\(vec1)\n")
        vec1[0]=1
        vec1[1]=2
        vec1[2]=3
        vec1[3]=4
        vec1[4]=5
        let result: [Int] = [1,2,3,4,5]
        cases.append(testCase(vec1, rhs: result))
        
        return cases
    }
    
    func t3() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec1 = Vector<Int>(size: 5)
        print("Vector 1:\n\(vec1)\n")
        vec1[0]=1
        vec1[1]=2
        vec1[2]=3
        vec1[3]=4
        vec1[4]=5
        let vec2 = vec1.copy()
        cases.append(testCase(vec1, rhs: vec2))
        
        return cases
    }
    
    func t4() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec3 = Vector<Int>(size: 3)
        vec3[0] = 5
        vec3[1] = 2
        vec3[2] = 1
        let vec4 = Vector<Int>(size: 3)
        vec4[0] = 0
        vec4[1] = 2
        vec4[2] = 2
        let dot = vec3.dot(vec4)
        if (dot == 6) {
            cases.append(true)
        }else {
            cases.append(false)
        }
        
        return cases
    }
    
    func t5() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 2
        vec6[1] = 2
        vec6[2] = 6
        let vec7 = vec5.multiply(vec6)
        let result: [Int] = [24]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
    
    func t6() -> [Bool]{
        var cases: [Bool] = [Bool]()
    
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 2
        vec6[1] = 2
        vec6[2] = 6
        let vec7 = vec5.add(vec6)
        let result: [Int] = [3, 4, 9]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
    
    func t7() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=6
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 0
        vec6[1] = 2
        vec6[2] = 3
        let vec7 = vec5.subtract(vec6)
        let result: [Int] = [1, 0, 3]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
    
    func t8() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5.multiply(3)
        let result: [Int] = [18]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
    
    func t9() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5.add(3)
        let result: [Int] = [4, 5, 6]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
    
    func t10() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5.subtract(1)
        let result: [Int] = [0, 1, 2]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
    
    func t11() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=6
        vec5[1]=18
        vec5[2]=30
        let vec7 = vec5.divide(3)
        let result: [Int] = [18]
        cases.append(testCase(vec7, rhs: result))
        
        return cases
    }
        
        /*print("OPERATORS:\n")
        
        print("\(vec2)\n*")
        print("\(vec4)\n=")
        print("\(vec2*vec4)\n")
        
        print("\(vec2)\n+")
        print("\(vec4)\n=")
        print("\(vec2+vec4)\n")
        
        print("\(vec2)\n-")
        print("\(vec4)\n=")
        print("\(vec2-vec4)\n")
        
        print("SCALAR OPERATORS:\n")
        
        print("\(vec2)\n*")
        print("\(6)\n=")
        print("\(vec2*6)\n")
        
        print("\(vec2)\n+")
        print("\(3)\n=")
        print("\(vec2+3)\n")
        
        print("\(vec2)\n-")
        print("\(1)\n=")
        print("\(vec2-1)\n")
        
        print("\(vec2)\n/")
        print("\(4)\n=")
        print("\(vec2/4)\n")*/

}