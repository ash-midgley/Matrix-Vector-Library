//
//  MatrixTest.swift
//  progA1
//
//  Created by Ashley Midgley on 8/27/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class MatrixTest{
    
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
    
    //Test 1: setting and printing Matrix with different type values
    func t1() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let result: [String] = ["1", "2", "3", "4"]
        cases.append(testCase(mat1.matStringArray, rhs: result))
        
        //Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat2[0, 0] = 1.0
        mat2[0, 1] = 2.45
        mat2[1, 0] = 3.98
        mat2[1, 1] = 4.25135324513
        let resultD: [String] = ["1.0", "2.45", "3.98", "4.25135324513"]
        cases.append(testCase(mat2.matStringArray, rhs: resultD))
        
        //Float
        let mat3: Matrix<Float> = Matrix<Float>(rows: 2, columns: 2)
        mat3[0, 0] = 1.0
        mat3[0, 1] = 2.45
        mat3[1, 0] = 3.98
        mat3[1, 1] = 4.25135324513
        let resultF: [String] = ["1.0", "2.45", "3.98", "4.25135"]
        cases.append(testCase(mat3.matStringArray, rhs: resultF))
        
        //Fraction
        let mat4: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        mat4[0, 0] = f1
        mat4[0, 1] = f2
        mat4[1, 0] = f3
        mat4[1, 1] = f4
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)", "\(f4)"]
        cases.append(testCase(mat4.matStringArray, rhs: resultFrac))
        
        //Complex
        let mat5: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        mat5[0, 0] = c1
        mat5[0, 1] = c2
        mat5[1, 0] = c3
        mat5[1, 1] = c4
        let resultComp: [String] = ["\(c1)", "\(c2)", "\(c3)", "\(c4)"]
        cases.append(testCase(mat5.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 2: Transpose of a matrix
    func t2() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.transpose
        let result: [String] = ["1", "3", "2", "4"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 3: Copying a Matrix
    func t3() -> [Bool] {
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.copy()
        cases.append(testCase(mat1.matStringArray, rhs: mat2.matStringArray))
        
        return cases
    }
    
    //Test 4: Matrix - Matrix multiplication
    func t4() -> [Bool] {
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 3)
        mat1[0, 0] = 2
        mat1[0, 1] = 3
        mat1[0, 2] = 2
        mat1[1, 0] = 1
        mat1[1, 1] = 5
        mat1[1, 2] = 3
        let mat2: Matrix<Int> = Matrix<Int>(rows: 3, columns: 2)
        mat2[0, 0] = 1
        mat2[0, 1] = 2
        mat2[1, 0] = 3
        mat2[1, 1] = 4
        mat2[2, 0] = 5
        mat2[2, 1] = 6
        let mat3: Matrix<Int> = mat1*mat2
        let result: [String] = ["21", "28", "31", "40"]
        cases.append(testCase(mat3.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 5: Matrix - Matrix addition
    func t5() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case1
        let mat1 = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 4
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 2
        let mat2 = Matrix<Int>(rows: 2, columns: 2)
        mat2[0, 0] = 5
        mat2[0, 1] = 1
        mat2[1, 0] = 7
        mat2[1, 1] = 6
        let mat3: Matrix<Int> = mat1+mat2
        let result: [String] = ["9", "3", "10", "8"]
        cases.append(testCase(mat3.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 6: Matrix - Matrix subtraction
    func t6() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1 = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 5
        mat1[0, 1] = 1
        mat1[1, 0] = 7
        mat1[1, 1] = 6
        let mat2 = Matrix<Int>(rows: 2, columns: 2)
        mat2[0, 0] = 4
        mat2[0, 1] = 2
        mat2[1, 0] = 3
        mat2[1, 1] = 2
        let mat3: Matrix<Int> = mat1-mat2
        let result: [String] = ["1", "-1", "4", "4"]
        cases.append(testCase(mat3.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 7 - Matrix - Scalar Addition
    func t7() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 5
        mat1[1, 1] = 25
        let s: Int = 2
        let mat2: Matrix<Int> = mat1+s
        let result: [String] = ["22", "12", "7", "27"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 8 - Matrix - Scalar Subtraction
    func t8() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 5
        mat1[1, 1] = 25
        let s: Int = 2
        let mat2: Matrix<Int> = mat1-s
        let result: [String] = ["18", "8", "3", "23"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 9 - Matrix - Scalar Multiplication
    func t9() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 2
        mat1[0, 1] = 10
        mat1[1, 0] = 4
        mat1[1, 1] = 6
        let s: Int = 2
        let mat2: Matrix<Int> = mat1*s
        let result: [String] = ["4", "20", "8", "12"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 10 - Matrix - Scalar Division
    func t10() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 100
        mat1[1, 1] = 30
        let s: Int = 2
        let mat2: Matrix<Int> = mat1/s
        let result: [String] = ["10", "5", "50", "15"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 11 - Matrix to Vector view
    func t11() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
        let mat1: Matrix<Int> = Matrix<Int>(rows: 1, columns: 3)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[0, 2] = 3
        let mat2: Matrix<Int> = mat1.vectorview
        let result: [String] = ["1", "2", "3"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        return cases
    }
    
    //Test 12 - Access Matrix rows
    func t12() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
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
        let row: Vector<Int> = mat1.row(2)
        let result: [String] = ["7", "8", "9"]
        cases.append(testCase(row.vecStringArray, rhs: result))
        
        return cases
    }
    
    //Test 13 - Access Matrix columns
    func t13() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1
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
        let col: Vector<Int> = mat1.column(2)
        let result: [String] = ["3", "6", "9"]
        cases.append(testCase(col.vecStringArray, rhs: result))
        
        return cases
    }
}