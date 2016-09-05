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
        tests.append(t12())
        tests.append(t13())
        tests.append(t14())
    }
    
    func testCase(lhs: [String], rhs: [String]) -> Bool{
        if(lhs.count == rhs.count){
            for c in 0...(lhs.count-1){
                if(lhs[c] != rhs[c]){
                    return false
                }
            }
        }else{
            return false
        }
        return true
    }
    
    //Test 1 - Type values
    func t1() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Int
        let vec1: Vector<Int> = Vector<Int>(size: 4)
        vec1[0] = 1
        vec1[1] = 2
        vec1[2] = 3
        vec1[3] = 4
        let result: [String] = ["1", "2", "3", "4"]
        cases.append(testCase(vec1.vecStringArray, rhs: result))
        
        
        //Double
        let vec2: Vector<Double> = Vector<Double>(size: 4)
        vec2[0] = 1.0
        vec2[1] = 2.45
        vec2[2] = 3.98
        vec2[3] = 4.25135324513
        let resultD: [String] = ["1.0", "2.45", "3.98", "4.25135324513"]
        cases.append(testCase(vec2.vecStringArray, rhs: resultD))
        
        //Fraction
        let vec4: Vector<Fraction> = Vector<Fraction>(size: 4)
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        vec4[0] = f1
        vec4[1] = f2
        vec4[2] = f3
        vec4[3] = f4
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)", "\(f4)"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Complex
        let vec5: Vector<Complex> = Vector<Complex>(size: 4)
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        vec5[0] = c1
        vec5[1] = c2
        vec5[2] = c3
        vec5[3] = c4
        let resultComp: [String] = ["\(c1)", "\(c2)", "\(c3)", "\(c4)"]
        cases.append(testCase(vec5.vecStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 2 - Subscript
    func t2() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec1 = Vector<Int>(size: 5)
        vec1[0]=1
        vec1[1]=20
        vec1[2]=43
        vec1[3]=41
        vec1[4]=2
        vec1[0]=1
        vec1[1]=2
        vec1[2]=3
        vec1[3]=4
        vec1[4]=5
        let result: [String] = ["1","2","3","4","5"]
        cases.append(testCase(vec1.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec2: Vector<Double> = Vector<Double>(size: 4)
        vec2[0] = 5.0
        vec2[1] = 3.45
        vec2[2] = 35.98
        vec2[3] = 4.23455135324513
        vec2[0] = 1.0
        vec2[1] = 2.45
        vec2[2] = 3.98
        vec2[3] = 4.25135324513
        let resultD: [String] = ["1.0", "2.45", "3.98", "4.25135324513"]
        cases.append(testCase(vec2.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec4: Vector<Fraction> = Vector<Fraction>(size: 4)
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        vec4[0] = f1
        vec4[1] = f2
        vec4[2] = f2
        vec4[3] = f1
        vec4[0] = f1
        vec4[1] = f2
        vec4[2] = f3
        vec4[3] = f4
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)", "\(f4)"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec5: Vector<Complex> = Vector<Complex>(size: 4)
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        vec5[0] = c4
        vec5[1] = c4
        vec5[2] = c4
        vec5[3] = c4
        vec5[0] = c1
        vec5[1] = c2
        vec5[2] = c3
        vec5[3] = c4
        let resultComp: [String] = ["\(c1)", "\(c2)", "\(c3)", "\(c4)"]
        cases.append(testCase(vec5.vecStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 3 - Copy
    func t3() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec1 = Vector<Int>(size: 5)
        vec1[0]=1
        vec1[1]=2
        vec1[2]=3
        vec1[3]=4
        vec1[4]=5
        let vec2 = vec1.copy()
        cases.append(testCase(vec1.vecStringArray, rhs: vec2.vecStringArray))
        
        //Case 2 - Double
        let vec3: Vector<Double> = Vector<Double>(size: 4)
        vec3[0] = 1.0
        vec3[1] = 2.45
        vec3[2] = 3.98
        vec3[3] = 4.25135324513
        let vec4 = vec3.copy()
        cases.append(testCase(vec3.vecStringArray, rhs: vec4.vecStringArray))
        
        //Case 3 - Fraction
        let vec7: Vector<Fraction> = Vector<Fraction>(size: 4)
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        vec7[0] = f1
        vec7[1] = f2
        vec7[2] = f3
        vec7[3] = f4
        let vec8 = vec7.copy()
        cases.append(testCase(vec7.vecStringArray, rhs: vec8.vecStringArray))
        
        //Case 4 - Complex
        let vec9: Vector<Complex> = Vector<Complex>(size: 4)
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        vec9[0] = c1
        vec9[1] = c2
        vec9[2] = c3
        vec9[3] = c4
        let vec10 = vec9.copy()
        cases.append(testCase(vec9.vecStringArray, rhs: vec10.vecStringArray))
        
        return cases
    }
    
    //Test 4 - Dot product
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
        
        //Case 2 - Double
        let vec5: Vector<Double> = Vector<Double>(size: 3)
        vec5[0] = 5.0
        vec5[1] = 2.0
        vec5[2] = 1.0
        let vec6: Vector<Double>  = Vector<Double>(size: 3)
        vec6[0] = 0.0
        vec6[1] = 2.0
        vec6[2] = 2.0
        let dotD = vec5.dot(vec6)
        if (dotD == 6) {
            cases.append(true)
        }else {
            cases.append(false)
        }
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: 5, den: 3)
        let f2: Fraction = Fraction(num: 2, den: 9)
        let f3: Fraction = Fraction(num: 7, den: 4)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec11: Vector<Fraction>  = Vector<Fraction>(size: 3)
        let f4: Fraction = Fraction(num: -1, den: 2)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 2, den: 3)
        vec11[0] = f4
        vec11[1] = f5
        vec11[2] = f6
        let dotFrac: Vector<Fraction> = Vector<Fraction>(size: 1)
        dotFrac[0] = vec9.dot(vec11)
        let resultFrac: [String] = ["7/9"]
        cases.append(testCase(dotFrac.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 5, imag: 4)
        let c2: Complex = Complex(real: 2, imag: 1)
        let c3: Complex = Complex(real: 1, imag: 3)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec33: Vector<Complex> = Vector<Complex>(size: 3)
        let c4: Complex = Complex(real: 0, imag: 7)
        let c5: Complex = Complex(real: 2, imag: 0.0)
        let c6: Complex = Complex(real: 2, imag: 2)
        vec33[0] = c4
        vec33[1] = c5
        vec33[2] = c6
        let dotC: Vector<Complex> = Vector<Complex>(size: 1)
        dotC[0] = vec22.dot(vec33)
        let resultC: [String] = ["-28.0+45.0i"]
        cases.append(testCase(dotC.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 5 - Vector * Vector
    func t5() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 2
        vec6[1] = 2
        vec6[2] = 6
        let vec7: Vector<Int> = Vector<Int>(size: 1)
        vec7[0] = vec5*vec6
        let result: [String] = ["24"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec2: Vector<Double>  = Vector<Double>(size: 3)
        vec2[0] = 2.04
        vec2[1] = 2.2340
        vec2[2] = 6.33333333330
        let vec3: Vector<Double> = Vector<Double>(size: 1)
        vec3[0] = vec1*vec2
        let resultD: [String] = ["26.7022693332319"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec11: Vector<Fraction>  = Vector<Fraction>(size: 3)
        let f4: Fraction = Fraction(num: -1, den: 2)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 2, den: 3)
        vec11[0] = f4
        vec11[1] = f5
        vec11[2] = f6
        let vec4: Vector<Fraction> = Vector<Fraction>(size: 1)
        vec4[0] = vec9*(vec11)
        let resultFrac: [String] = ["2 7/60"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec33: Vector<Complex> = Vector<Complex>(size: 3)
        let c4: Complex = Complex(real: -4, imag: 7)
        let c5: Complex = Complex(real: 2, imag: -2)
        let c6: Complex = Complex(real: 6, imag: 10)
        vec33[0] = c4
        vec33[1] = c5
        vec33[2] = c6
        let vec44: Vector<Complex> = Vector<Complex>(size: 1)
        vec44[0] = vec22*vec33
        let resultC: [String] = ["-9.0+55.0i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 6 - Vector + Vector
    func t6() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 2
        vec6[1] = 2
        vec6[2] = 6
        let vec7 = vec5+vec6
        let result: [String] = ["3", "4", "9"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec2: Vector<Double>  = Vector<Double>(size: 3)
        vec2[0] = 2.04
        vec2[1] = 2.2340
        vec2[2] = 6.33333333330
        let vec3: Vector<Double> = vec1+vec2
        let resultD: [String] = ["3.1634","4.534", "9.3763333333"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec11: Vector<Fraction>  = Vector<Fraction>(size: 3)
        let f4: Fraction = Fraction(num: -1, den: 2)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 2, den: 3)
        vec11[0] = f4
        vec11[1] = f5
        vec11[2] = f6
        let vec4: Vector<Fraction> = vec9+vec11
        let resultFrac: [String] = ["-9/10","2 2/3", "1 13/24"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec33: Vector<Complex> = Vector<Complex>(size: 3)
        let c4: Complex = Complex(real: -4, imag: 7)
        let c5: Complex = Complex(real: 2, imag: -2)
        let c6: Complex = Complex(real: 6, imag: 10)
        vec33[0] = c4
        vec33[1] = c5
        vec33[2] = c6
        let vec44: Vector<Complex> = vec22+vec33
        let resultC: [String] = ["-3.0+14.0i","14.0-1.0i", "14.0+13.0i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 7 - Vector - Vector
    func t7() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=6
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 0
        vec6[1] = 2
        vec6[2] = 3
        let vec7 = vec5-vec6
        let result: [String] = ["1", "0", "3"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec2: Vector<Double>  = Vector<Double>(size: 3)
        vec2[0] = 2.04
        vec2[1] = 2.2340
        vec2[2] = 6.33333333330
        let vec3: Vector<Double> = vec1-vec2
        let resultD: [String] = ["-0.9166", "0.0659999999999998", "-3.2903333333"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec11: Vector<Fraction>  = Vector<Fraction>(size: 3)
        let f4: Fraction = Fraction(num: -1, den: 2)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 2, den: 3)
        vec11[0] = f4
        vec11[1] = f5
        vec11[2] = f6
        let vec4: Vector<Fraction> = vec9-vec11
        let resultFrac: [String] = ["1/10", "-1 1/3", "5/24"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec33: Vector<Complex> = Vector<Complex>(size: 3)
        let c4: Complex = Complex(real: -4, imag: 7)
        let c5: Complex = Complex(real: 2, imag: -2)
        let c6: Complex = Complex(real: 6, imag: 10)
        vec33[0] = c4
        vec33[1] = c5
        vec33[2] = c6
        let vec44: Vector<Complex> = vec22-vec33
        let resultC: [String] = ["5.00.0i", "10.0+3.0i", "2.0-7.0i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 8 - Vector * Scalar
    func t8() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5*3
        let result: [String] = ["3" ,"6", "9"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec3: Vector<Double> = vec1*2
        let resultD: [String] = ["2.2468", "4.6", "6.086"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        let f4: Fraction = Fraction(num: 5, den: 2)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec4: Vector<Fraction> = vec9*f4
        let resultFrac: [String] = ["-1", "1 2/3", "2 3/16"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        let c4: Complex = Complex(real: 5, imag: 13)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec44: Vector<Complex> = vec22*c4
        let resultC: [String] = ["-86.0+48.0i", "47.0+161.0i", "1.0+119.0i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 9 - Vector + Scalar
    func t9() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5+3
        let result: [String] = ["4", "5", "6"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec3: Vector<Double> = vec1+2.54534354
        let resultD: [String] = ["3.66874354", "4.84534354", "5.58834354"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        let f4: Fraction = Fraction(num: 5, den: 2)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec4: Vector<Fraction> = vec9+f4
        let resultFrac: [String] = ["2 1/10", "3 1/6", "3 3/8"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        let c4: Complex = Complex(real: 5, imag: 13)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec44: Vector<Complex> = vec22+c4
        let resultC: [String] = ["6.0+20.0i", "17.0+14.0i", "13.0+16.0i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 10 - Vector - Scalar
    func t10() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5-1
        let result: [String] = ["0", "1", "2"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec3: Vector<Double> = vec1-2.54534354
        let resultD: [String] = ["-1.42194354", "-0.24534354", "0.49765646"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        let f4: Fraction = Fraction(num: 5, den: 2)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec4: Vector<Fraction> = vec9-f4
        let resultFrac: [String] = ["-2 9/10", "-1 5/6", "-1 5/8"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        let c4: Complex = Complex(real: 5, imag: 13)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec44: Vector<Complex> = vec22-c4
        let resultC: [String] = ["-4.0-6.0i", "7.0-12.0i", "3.0-10.0i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 11 - Vector / Scalar
    func t11() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=6
        vec5[1]=18
        vec5[2]=30
        let vec7 = vec5/3
        let result: [String] = ["2", "6", "10"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0] = 1.1234
        vec1[1] = 2.3
        vec1[2] = 3.043
        let vec3: Vector<Double> = vec1/2.54534354
        let resultD: [String] = ["0.44135496146033", "0.90361083439448", "1.19551642133148"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        let f4: Fraction = Fraction(num: 5, den: 2)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec4: Vector<Fraction> = vec9/f4
        let resultFrac: [String] = ["-4/25", "4/15", "7/20"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        let c4: Complex = Complex(real: 5, imag: 13)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec44: Vector<Complex> = vec22/c4
        let resultC: [String] = ["0.494845+0.113402i", "0.376289-0.778351i", "0.407216-0.458763i"]
        cases.append(testCase(vec44.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 12 - Matrixview
    func t12() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=6
        vec5[1]=18
        vec5[2]=30
        let mat1: Matrix<Int> = vec5.matrixview
        let result: [String] = ["6", "18", "30"]
        cases.append(testCase(mat1.matStringArray, rhs: result))
        
        //Case 2 - Double
        let vec1: Vector<Double> = Vector<Double>(size: 3)
        vec1[0]=6.65312
        vec1[1]=18.684321
        vec1[2]=30.6548441
        let mat2: Matrix<Double> = vec1.matrixview
        let resultD: [String] = ["6.65312", "18.684321", "30.6548441"]
        cases.append(testCase(mat2.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let mat3: Matrix<Fraction> = vec9.matrixview
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)"]
        cases.append(testCase(mat3.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let mat4: Matrix<Complex> = vec22.matrixview
        let resultC: [String] = ["\(c1)", "\(c2)", "\(c3)"]
        cases.append(testCase(mat4.matStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 13 - Row access
    func t13() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 3, columns: 3)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[0, 2] = 3
        mat1[1, 0] = 4
        mat1[1, 1] = 5
        mat1[1, 2] = 6
        mat1[2, 0] = 7
        mat1[2, 1] = 8
        mat1[2, 2] = 9
        let vec1: Vector<Int> = mat1.row(2)
        let result: [String] = ["7", "8", "9"]
        cases.append(testCase(vec1.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 3, columns: 3)
        mat2[0, 0] = 1.45212
        mat2[0, 1] = 2453.453
        mat2[0, 2] = 34564.466
        mat2[1, 0] = 4.456867
        mat2[1, 1] = 5.0245054
        mat2[1, 2] = 6.45678
        mat2[2, 0] = 7876.65
        mat2[2, 1] = 8.4567667867
        mat2[2, 2] = 786789.453456789
        let vec2: Vector<Double> = mat2.row(1)
        let resultD: [String] = ["4.456867", "5.0245054", "6.45678"]
        cases.append(testCase(vec2.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat3: Matrix<Fraction> = Matrix<Fraction>(rows: 3, columns: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        let f4: Fraction = Fraction(num: -3, den: 2)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 9, den: 2)
        let f7: Fraction = Fraction(num: -2, den: 11)
        let f8: Fraction = Fraction(num: 6, den: 13)
        let f9: Fraction = Fraction(num: 1, den: -8)
        mat3[0, 0] = f1
        mat3[0, 1] = f2
        mat3[0, 2] = f3
        mat3[1, 0] = f4
        mat3[1, 1] = f5
        mat3[1, 2] = f6
        mat3[2, 0] = f7
        mat3[2, 1] = f8
        mat3[2, 2] = f9
        let vec3: Vector<Fraction> = mat3.row(1)
        let resultFrac: [String] = ["\(f4)", "\(f5)", "\(f6)"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat4: Matrix<Complex> = Matrix<Complex>(rows: 3, columns: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        let c4: Complex = Complex(real: 10, imag: -7)
        let c5: Complex = Complex(real: 2, imag: 7)
        let c6: Complex = Complex(real: -3, imag: 13)
        let c7: Complex = Complex(real: 0, imag: 27)
        let c8: Complex = Complex(real: 2, imag: 45)
        let c9: Complex = Complex(real: 0, imag: 1)
        mat4[0, 0] = c1
        mat4[0, 1] = c2
        mat4[0, 2] = c3
        mat4[1, 0] = c4
        mat4[1, 1] = c5
        mat4[1, 2] = c6
        mat4[2, 0] = c7
        mat4[2, 1] = c8
        mat4[2, 2] = c9
        let vec4: Vector<Complex> = mat4.row(0)
        let resultC: [String] = ["\(c1)", "\(c2)", "\(c3)"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 14 - Column access
    func t14() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 3, columns: 3)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[0, 2] = 3
        mat1[1, 0] = 4
        mat1[1, 1] = 5
        mat1[1, 2] = 6
        mat1[2, 0] = 7
        mat1[2, 1] = 8
        mat1[2, 2] = 9
        let vec1: Vector<Int> = mat1.column(2)
        let result: [String] = ["3", "6", "9"]
        cases.append(testCase(vec1.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 3, columns: 3)
        mat2[0, 0] = 1.45212
        mat2[0, 1] = 2453.453
        mat2[0, 2] = 34564.466
        mat2[1, 0] = 4.456867
        mat2[1, 1] = 5.0245054
        mat2[1, 2] = 6.45678
        mat2[2, 0] = 7876.65
        mat2[2, 1] = 8.4567667867
        mat2[2, 2] = 786789.453456789
        let vec2: Vector<Double> = mat2.column(1)
        let resultD: [String] = ["2453.453", "5.0245054", "8.4567667867"]
        cases.append(testCase(vec2.vecStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat3: Matrix<Fraction> = Matrix<Fraction>(rows: 3, columns: 3)
        let f1: Fraction = Fraction(num: -2, den: 5)
        let f2: Fraction = Fraction(num: 2, den: 3)
        let f3: Fraction = Fraction(num: 7, den: 8)
        let f4: Fraction = Fraction(num: -3, den: 2)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 9, den: 2)
        let f7: Fraction = Fraction(num: -2, den: 11)
        let f8: Fraction = Fraction(num: 6, den: 13)
        let f9: Fraction = Fraction(num: 1, den: -8)
        mat3[0, 0] = f1
        mat3[0, 1] = f2
        mat3[0, 2] = f3
        mat3[1, 0] = f4
        mat3[1, 1] = f5
        mat3[1, 2] = f6
        mat3[2, 0] = f7
        mat3[2, 1] = f8
        mat3[2, 2] = f9
        let vec3: Vector<Fraction> = mat3.column(1)
        let resultFrac: [String] = ["\(f2)", "\(f5)", "\(f8)"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat4: Matrix<Complex> = Matrix<Complex>(rows: 3, columns: 3)
        let c1: Complex = Complex(real: 1, imag: 7)
        let c2: Complex = Complex(real: 12, imag: 1)
        let c3: Complex = Complex(real: 8, imag: 3)
        let c4: Complex = Complex(real: 10, imag: -7)
        let c5: Complex = Complex(real: 2, imag: 7)
        let c6: Complex = Complex(real: -3, imag: 13)
        let c7: Complex = Complex(real: 0, imag: 27)
        let c8: Complex = Complex(real: 2, imag: 45)
        let c9: Complex = Complex(real: 0, imag: 1)
        mat4[0, 0] = c1
        mat4[0, 1] = c2
        mat4[0, 2] = c3
        mat4[1, 0] = c4
        mat4[1, 1] = c5
        mat4[1, 2] = c6
        mat4[2, 0] = c7
        mat4[2, 1] = c8
        mat4[2, 2] = c9
        let vec4: Vector<Complex> = mat4.column(0)
        let resultC: [String] = ["\(c1)", "\(c4)", "\(c7)"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultC))
        
        return cases
    }
}