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
        
        //Float
        let vec3: Vector<Float> = Vector<Float>(size: 4)
        vec3[0] = 1.0
        vec3[1] = 2.45
        vec3[2] = 3.98
        vec3[3] = 4.25135324513
        let resultF: [String] = ["1.0", "2.45", "3.98", "4.25135"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultF))
        
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
        
        //Float
        let vec3: Vector<Float> = Vector<Float>(size: 4)
        vec3[0] = 145.0
        vec3[1] = 2.45345
        vec3[2] = 333.98
        vec3[3] = 4.324513
        vec3[0] = 1.0
        vec3[1] = 2.45
        vec3[2] = 3.98
        vec3[3] = 4.25135324513
        let resultF: [String] = ["1.0", "2.45", "3.98", "4.25135"]
        cases.append(testCase(vec3.vecStringArray, rhs: resultF))
        
        //Fraction
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
        
        //Complex
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
        
        let vec1 = Vector<Int>(size: 5)
        vec1[0]=1
        vec1[1]=2
        vec1[2]=3
        vec1[3]=4
        vec1[4]=5
        let vec2 = vec1.copy()
        let result: [String] = ["1","2","3","4","5"]
        cases.append(testCase(vec2.vecStringArray, rhs: result))
        
        //Double
        let vec3: Vector<Double> = Vector<Double>(size: 4)
        vec3[0] = 1.0
        vec3[1] = 2.45
        vec3[2] = 3.98
        vec3[3] = 4.25135324513
        let vec4 = vec3.copy()
        let resultD: [String] = ["1.0", "2.45", "3.98", "4.25135324513"]
        cases.append(testCase(vec4.vecStringArray, rhs: resultD))
        
        //Float
        let vec5: Vector<Float> = Vector<Float>(size: 4)
        vec5[0] = 1.0
        vec5[1] = 2.45
        vec5[2] = 3.98
        vec5[3] = 4.25135324513
        let vec6 = vec5.copy()
        let resultF: [String] = ["1.0", "2.45", "3.98", "4.25135"]
        cases.append(testCase(vec6.vecStringArray, rhs: resultF))
        
        //Fraction
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
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)", "\(f4)"]
        cases.append(testCase(vec8.vecStringArray, rhs: resultFrac))
        
        //Complex
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
        let resultComp: [String] = ["\(c1)", "\(c2)", "\(c3)", "\(c4)"]
        cases.append(testCase(vec10.vecStringArray, rhs: resultComp))
        
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
        
        let vec7: Vector<Float> = Vector<Float>(size: 3)
        vec7[0] = 5.0
        vec7[1] = 2.0
        vec7[2] = 1.0
        let vec8: Vector<Float>  = Vector<Float>(size: 3)
        vec8[0] = 0.0
        vec8[1] = 2.0
        vec8[2] = 2.0
        let dotF = vec7.dot(vec8)
        if (dotF == 6) {
            cases.append(true)
        }else {
            cases.append(false)
        }
        
        let vec9: Vector<Fraction> = Vector<Fraction>(size: 3)
        let f1: Fraction = Fraction(num: 5, den: 1)
        let f2: Fraction = Fraction(num: 2, den: 1)
        let f3: Fraction = Fraction(num: 1, den: 1)
        vec9[0] = f1
        vec9[1] = f2
        vec9[2] = f3
        let vec11: Vector<Fraction>  = Vector<Fraction>(size: 3)
        let f4: Fraction = Fraction(num: 0, den: 1)
        let f5: Fraction = Fraction(num: 2, den: 1)
        let f6: Fraction = Fraction(num: 2, den: 1)
        vec11[0] = f4
        vec11[1] = f5
        vec11[2] = f6
        let dotFrac = vec9.dot(vec11)
        if (dotFrac === Fraction(num: 6, den: 1)) {
            cases.append(true)
        }else {
            cases.append(false)
        }
        
        let vec22: Vector<Complex> = Vector<Complex>(size: 3)
        let c1: Complex = Complex(real: 5, imag: 0.0)
        let c2: Complex = Complex(real: 2, imag: 0.0)
        let c3: Complex = Complex(real: 1, imag: 0.0)
        vec22[0] = c1
        vec22[1] = c2
        vec22[2] = c3
        let vec33: Vector<Complex> = Vector<Complex>(size: 3)
        let c4: Complex = Complex(real: 0, imag: 0.0)
        let c5: Complex = Complex(real: 2, imag: 0.0)
        let c6: Complex = Complex(real: 2, imag: 0.0)
        vec33[0] = c4
        vec33[1] = c5
        vec33[2] = c6
        let dotC = vec22.dot(vec33)
        if (dotC === Complex(real: 6, imag: 0.0)) {
            cases.append(true)
        }else {
            cases.append(false)
        }
        
        return cases
    }
    
    //Test 5 - Vector * Vector
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
        let vec7 = Vector<Int>(size: 1)
        vec7[0] = vec5*vec6
        let result: [String] = ["24"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 6 - Vector + Vector
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
        let vec7 = vec5+vec6
        let result: [String] = ["3", "4", "9"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 7 - Vector - Vector
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
        let vec7 = vec5-vec6
        let result: [String] = ["1", "0", "3"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 8 - Vector * Scalar
    func t8() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5*3
        let result: [String] = ["3" ,"6", "9"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 9 - Vector + Scalar
    func t9() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5+3
        let result: [String] = ["4", "5", "6"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 10 - Vector - Scalar
    func t10() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        let vec7 = vec5-1
        let result: [String] = ["0", "1", "2"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 11 - Vector / Scalar
    func t11() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=6
        vec5[1]=18
        vec5[2]=30
        let vec7 = vec5/3
        let result: [String] = ["2", "6", "10"]
        cases.append(testCase(vec7.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 12 - Matrixview
    func t12() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let vec5 = Vector<Int>(size: 3)
        vec5[0]=6
        vec5[1]=18
        vec5[2]=30
        let mat1: Matrix<Int> = vec5.matrixview
        let result: [String] = ["6", "18", "30"]
        cases.append(testCase(mat1.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 13 - Row access
    func t13() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
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
        
        return cases
    }
    
    //Test 14 - Column access
    func t14() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
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
        
        return cases
    }
}