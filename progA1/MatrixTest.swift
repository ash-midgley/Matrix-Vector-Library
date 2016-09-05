//
//  MatrixTest.swift
//  progA1
//
//  Created by Ashley Midgley on 8/27/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class MatrixTest{
    
    //Stores results from Vector testing: Rows = tests, columns = cases for test
    var tests: [[Bool]] = [[Bool]]()
    
    var results: [[Bool]]{
        return self.tests
    }
    
    init(){
        runTests()
    }
    
    //Stores output of test methods in results 2D Bool array
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
  
    //Compare the output produced with the correct result
    //Returns true if output is correct or false otherwise
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
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let result: [String] = ["1", "2", "3", "4"]
        cases.append(testCase(mat1.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat2[0, 0] = 1.0
        mat2[0, 1] = 2.45
        mat2[1, 0] = 3.98
        mat2[1, 1] = 4.25135324513
        let resultD: [String] = ["1.0", "2.45", "3.98", "4.25135324513"]
        cases.append(testCase(mat2.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
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
        
        //Case 4 - Complex
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
    
    //Test 2 - Subscript
    func t2() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1 = Matrix<Int>(rows: 2, columns: 1)
        mat1[0, 0] = 1
        mat1[1, 0] = 2
        mat1[1, 0] = 4
        mat1[0, 0] = 3
        let result: [String] = ["3", "4"]
        cases.append(testCase(mat1.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat2[0, 0] = 5.0
        mat2[0, 1] = 3.45
        mat2[1, 0] = 35.98
        mat2[1, 1] = 4.23455135324513
        mat2[0, 0] = 1.0
        mat2[0, 1] = 2.45
        mat2[1, 0] = 3.98
        mat2[1, 1] = 4.25135324513
        let resultD: [String] = ["1.0", "2.45", "3.98", "4.25135324513"]
        cases.append(testCase(mat2.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat4: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        mat4[0, 0] = f1
        mat4[0, 1] = f2
        mat4[1, 0] = f2
        mat4[1, 1] = f1
        mat4[0, 0] = f1
        mat4[0, 1] = f2
        mat4[1, 0] = f3
        mat4[1, 1] = f4
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)", "\(f4)"]
        cases.append(testCase(mat4.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat5: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        mat5[0, 0] = c4
        mat5[0, 1] = c4
        mat5[1, 0] = c4
        mat5[1, 1] = c4
        mat5[0, 0] = c1
        mat5[0, 1] = c2
        mat5[1, 0] = c3
        mat5[1, 1] = c4
        let resultComp: [String] = ["\(c1)", "\(c2)", "\(c3)", "\(c4)"]
        cases.append(testCase(mat5.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 3: Transpose of a Matrix
    func t3() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.transpose
        let result: [String] = ["1", "3", "2", "4"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat3[0, 0] = 1.2345
        mat3[0, 1] = 4.2341
        mat3[1, 0] = 156.56
        mat3[1, 1] = 23.8976
        let mat4: Matrix<Double> = mat3.transpose
        let resultD: [String] = ["1.2345", "156.56", "4.2341", "23.8976"]
        cases.append(testCase(mat4.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat7: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 3)
        let f1: Fraction = Fraction(num: 34, den: 2)
        let f2: Fraction = Fraction(num: 1, den: 2)
        let f3: Fraction = Fraction(num: 53, den: 69)
        mat7[0, 0] = f1
        mat7[0, 1] = f2
        mat7[0, 2] = f3
        let mat8: Matrix<Fraction> = mat7.transpose
        let resultFrac: [String] = ["\(f1)", "\(f2)", "\(f3)"]
        cases.append(testCase(mat8.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat9: Matrix<Complex> = Matrix<Complex>(rows: 3, columns: 2)
        let c1: Complex = Complex(real: 34, imag: 2)
        let c2: Complex = Complex(real: 1, imag: 2)
        let c3: Complex = Complex(real: 53, imag: 69)
        let c4: Complex = Complex(real: 85, imag: 100)
        let c5: Complex = Complex(real: 45, imag: 20)
        let c6: Complex = Complex(real: 16, imag: 8)
        mat9[0, 0] = c1
        mat9[0, 1] = c2
        mat9[1, 0] = c3
        mat9[1, 1] = c4
        mat9[2, 0] = c5
        mat9[2, 1] = c6
        let mat10: Matrix<Complex> = mat9.transpose
        let resultComp: [String] = ["\(c1)", "\(c3)", "\(c5)", "\(c2)", "\(c4)", "\(c6)"]
        cases.append(testCase(mat10.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 4: Copying a Matrix
    func t4() -> [Bool] {
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.copy()
        cases.append(testCase(mat1.matStringArray, rhs: mat2.matStringArray))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat3[0, 0] = 1.2345
        mat3[0, 1] = 4.2341
        mat3[1, 0] = 156.56
        mat3[1, 1] = 23.8976
        let mat4: Matrix<Double> = mat3.copy()
        cases.append(testCase(mat3.matStringArray, rhs: mat4.matStringArray))
        
        //Case 3 - Fraction
        let mat7: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 3)
        let f1: Fraction = Fraction(num: 34, den: 2)
        let f2: Fraction = Fraction(num: 1, den: 2)
        let f3: Fraction = Fraction(num: 53, den: 69)
        mat7[0, 0] = f1
        mat7[0, 1] = f2
        mat7[0, 2] = f3
        let mat8: Matrix<Fraction> = mat7.copy()
        cases.append(testCase(mat7.matStringArray, rhs: mat8.matStringArray))
        
        //Case 4 - Complex
        let mat9: Matrix<Complex> = Matrix<Complex>(rows: 3, columns: 2)
        let c1: Complex = Complex(real: 34, imag: 2)
        let c2: Complex = Complex(real: 1, imag: 2)
        let c3: Complex = Complex(real: 53, imag: 69)
        let c4: Complex = Complex(real: 85, imag: 100)
        let c5: Complex = Complex(real: 45, imag: 20)
        let c6: Complex = Complex(real: 16, imag: 8)
        mat9[0, 0] = c1
        mat9[0, 1] = c2
        mat9[1, 0] = c3
        mat9[1, 1] = c4
        mat9[2, 0] = c5
        mat9[2, 1] = c6
        let mat10: Matrix<Complex> = mat9.copy()
        cases.append(testCase(mat9.matStringArray, rhs: mat10.matStringArray))
        
        return cases
    }
    
    //Test 5: Matrix - Matrix multiplication
    func t5() -> [Bool] {
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
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
        
        //Case 2 - Double
        let mat4: Matrix<Double> = Matrix<Double>(rows: 2, columns: 3)
        mat4[0, 0] = 4.25
        mat4[0, 1] = 5.67
        mat4[0, 2] = 2.98
        mat4[1, 0] = 6.878
        mat4[1, 1] = 14.7
        mat4[1, 2] = 34.8
        let mat5: Matrix<Double> = Matrix<Double>(rows: 3, columns: 2)
        mat5[0, 0] = 12.6
        mat5[0, 1] = 4.235235
        mat5[1, 0] = 23.5
        mat5[1, 1] = 45.78
        mat5[2, 0] = 23.987
        mat5[2, 1] = 34.678
        let mat6: Matrix<Double> = mat4*mat5
        let resultD: [String] = ["258.27626", "380.91278875", "1266.8604", "1908.89034633"]
        cases.append(testCase(mat6.matStringArray, rhs: resultD))
    
        //Case 3 - Fraction 
        let mat7: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 3)
        let f1: Fraction = Fraction(num: 34, den: 8)
        let f2: Fraction = Fraction(num: 12, den: 7)
        let f3: Fraction = Fraction(num: 14, den: 7)
        let f4: Fraction = Fraction(num: 35, den: 5)
        let f5: Fraction = Fraction(num: 1, den: 2)
        let f6: Fraction = Fraction(num: 7, den: 9)
        mat7[0, 0] = f1
        mat7[0, 1] = f2
        mat7[0, 2] = f3
        let mat8: Matrix<Fraction> = Matrix<Fraction>(rows: 3, columns: 1)
        mat8[0, 0] = f4
        mat8[1, 0] = f5
        mat8[2, 0] = f6
        let mat9: Matrix<Fraction> = mat7*mat8
        let resultFrac: [String] = ["32 41/252"]
        cases.append(testCase(mat9.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat10: Matrix<Complex> = Matrix<Complex>(rows: 1, columns: 3)
        let c1: Complex = Complex(real: 34, imag: 8)
        let c2: Complex = Complex(real: 12, imag: 7)
        let c3: Complex = Complex(real: 14, imag: 7)
        let c4: Complex = Complex(real: 35, imag: 5)
        let c5: Complex = Complex(real: 1, imag: 2)
        let c6: Complex = Complex(real: 7, imag: 9)
        mat10[0, 0] = c1
        mat10[0, 1] = c2
        mat10[0, 2] = c3
        let mat11: Matrix<Complex> = Matrix<Complex>(rows: 3, columns: 1)
        mat11[0, 0] = c4
        mat11[1, 0] = c5
        mat11[2, 0] = c6
        let mat12: Matrix<Complex> = mat10*mat11
        let resultComp: [String] = ["1183.0+656.0i"]
        cases.append(testCase(mat12.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 6: Matrix - Matrix addition
    func t6() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
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
        
        //Case 2 - Double
        let mat4: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat4[0, 0] = 4.25
        mat4[0, 1] = 5.67
        mat4[1, 0] = 6.878
        mat4[1, 1] = 14.7
        let mat5: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat5[0, 0] = 12.6
        mat5[0, 1] = 4.235235
        mat5[1, 0] = 23.5
        mat5[1, 1] = 45.78
        let mat6: Matrix<Double> = mat4+mat5
        let resultD: [String] = ["16.85", "9.905235", "30.378", "60.48"]
        cases.append(testCase(mat6.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let f1: Fraction = Fraction(num: 34, den: 8)
        let f2: Fraction = Fraction(num: 12, den: 7)
        let f3: Fraction = Fraction(num: 14, den: 7)
        let f4: Fraction = Fraction(num: 35, den: 5)
        let f5: Fraction = Fraction(num: 1, den: 2)
        let f6: Fraction = Fraction(num: 7, den: 9)
        let f7: Fraction = Fraction(num: 134, den: 6)
        let f8: Fraction = Fraction(num: 8, den: 9)
        let mat7: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        mat7[0, 0] = f1
        mat7[0, 1] = f2
        mat7[1, 0] = f3
        mat7[1, 1] = f4
        let mat8: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        mat8[0, 0] = f5
        mat8[0, 1] = f6
        mat8[1, 0] = f7
        mat8[1, 1] = f8
        let mat9: Matrix<Fraction> = mat7+mat8
        let resultFrac: [String] = ["4 3/4", "2 31/63", "24 1/3", "7 8/9"]
        cases.append(testCase(mat9.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat10: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        let c1: Complex = Complex(real: 34, imag: 8)
        let c2: Complex = Complex(real: 12, imag: 7)
        let c3: Complex = Complex(real: 14, imag: 7)
        let c4: Complex = Complex(real: 35, imag: 5)
        let c5: Complex = Complex(real: 1, imag: 2)
        let c6: Complex = Complex(real: 7, imag: 9)
        let c7: Complex = Complex(real: 134, imag: 6)
        let c8: Complex = Complex(real: 8, imag: 9)
        mat10[0, 0] = c1
        mat10[0, 1] = c2
        mat10[1, 0] = c3
        mat10[1, 1] = c4
        let mat11: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        mat11[0, 0] = c5
        mat11[0, 1] = c6
        mat11[1, 0] = c7
        mat11[1, 1] = c8
        let mat12: Matrix<Complex> = mat10+mat11
        let resultComp: [String] = ["35.0+10.0i", "19.0+16.0i", "148.0+13.0i", "43.0+14.0i"]
        cases.append(testCase(mat12.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 7: Matrix - Matrix subtraction
    func t7() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
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
        
        //Case 2 - Double
        let mat4: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat4[0, 0] = 4.25
        mat4[0, 1] = 5.67
        mat4[1, 0] = 6.878
        mat4[1, 1] = 14.7
        let mat5: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        mat5[0, 0] = 12.6
        mat5[0, 1] = 4.235235
        mat5[1, 0] = 23.5
        mat5[1, 1] = 45.78
        let mat6: Matrix<Double> = mat4-mat5
        let resultD: [String] = ["-8.35", "1.434765", "-16.622", "-31.08"]
        cases.append(testCase(mat6.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let f1: Fraction = Fraction(num: 34, den: 8)
        let f2: Fraction = Fraction(num: 12, den: 7)
        let f3: Fraction = Fraction(num: 14, den: 7)
        let f4: Fraction = Fraction(num: 35, den: 5)
        let f5: Fraction = Fraction(num: 1, den: 2)
        let f6: Fraction = Fraction(num: 7, den: 9)
        let f7: Fraction = Fraction(num: 134, den: 6)
        let f8: Fraction = Fraction(num: 8, den: 9)
        let mat7: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        mat7[0, 0] = f1
        mat7[0, 1] = f2
        mat7[1, 0] = f3
        mat7[1, 1] = f4
        let mat8: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        mat8[0, 0] = f5
        mat8[0, 1] = f6
        mat8[1, 0] = f7
        mat8[1, 1] = f8
        let mat9: Matrix<Fraction> = mat7-mat8
        let resultFrac: [String] = ["3 3/4", "59/63", "-20 1/3", "6 1/9"]
        cases.append(testCase(mat9.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat10: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        let c1: Complex = Complex(real: 34, imag: 8)
        let c2: Complex = Complex(real: 12, imag: 7)
        let c3: Complex = Complex(real: 14, imag: 7)
        let c4: Complex = Complex(real: 35, imag: 5)
        let c5: Complex = Complex(real: 1, imag: 2)
        let c6: Complex = Complex(real: 7, imag: 9)
        let c7: Complex = Complex(real: 134, imag: 6)
        let c8: Complex = Complex(real: 8, imag: 9)
        mat10[0, 0] = c1
        mat10[0, 1] = c2
        mat10[1, 0] = c3
        mat10[1, 1] = c4
        let mat11: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        mat11[0, 0] = c5
        mat11[0, 1] = c6
        mat11[1, 0] = c7
        mat11[1, 1] = c8
        let mat12: Matrix<Complex> = mat10-mat11
        let resultComp: [String] = ["33.0+6.0i", "5.0-2.0i", "-120.0+1.0i", "27.0-4.0i"]
        cases.append(testCase(mat12.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 8 - Matrix - Scalar Addition
    func t8() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 5
        mat1[1, 1] = 25
        let s: Int = 2
        let mat2: Matrix<Int> = mat1+s
        let result: [String] = ["22", "12", "7", "27"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows:2, columns: 2)
        mat3[0, 0] = 20.45631
        mat3[0, 1] = 10.323235
        mat3[1, 0] = 5.673454
        mat3[1, 1] = 25.23515
        let sD: Double = 2.567
        let mat4: Matrix<Double> = mat3+sD
        let resultD: [String] = ["23.02331", "12.890235", "8.240454", "27.80215"]
        cases.append(testCase(mat4.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat5: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 2)
        let f1: Fraction = Fraction(num: 36, den: 96)
        let f2: Fraction = Fraction(num: 56, den: 32)
        let f3: Fraction = Fraction(num: 1, den: 2)
        mat5[0, 0] = f1
        mat5[0, 1] = f2
        let mat6: Matrix<Fraction> = mat5+f3
        
        let resultFrac: [String] = ["7/8", "2 1/4"]
        cases.append(testCase(mat6.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat7: Matrix<Complex> = Matrix<Complex>(rows: 1, columns: 2)
        let c1: Complex = Complex(real: 36, imag: 96)
        let c2: Complex = Complex(real: 56, imag: 32)
        let c3: Complex = Complex(real: 1, imag: 2)
        mat7[0, 0] = c1
        mat7[0, 1] = c2
        let mat8: Matrix<Complex> = mat7+c3
        
        let resultComp: [String] = ["37.0+98.0i", "57.0+34.0i"]
        cases.append(testCase(mat8.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 9 - Matrix - Scalar Subtraction
    func t9() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 5
        mat1[1, 1] = 25
        let s: Int = 2
        let mat2: Matrix<Int> = mat1-s
        let result: [String] = ["18", "8", "3", "23"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows:2, columns: 2)
        mat3[0, 0] = 20.45631
        mat3[0, 1] = 10.323235
        mat3[1, 0] = 5.673454
        mat3[1, 1] = 25.23515
        let sD: Double = 2.567
        let mat4: Matrix<Double> = mat3-sD
        let resultD: [String] = ["17.88931", "7.756235", "3.106454", "22.66815"]
        cases.append(testCase(mat4.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat5: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 2)
        let f1: Fraction = Fraction(num: 36, den: 96)
        let f2: Fraction = Fraction(num: 56, den: 32)
        let f3: Fraction = Fraction(num: 1, den: 2)
        mat5[0, 0] = f1
        mat5[0, 1] = f2
        let mat6: Matrix<Fraction> = mat5-f3
        let resultFrac: [String] = ["-1/8", "1 1/4"]
        cases.append(testCase(mat6.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat7: Matrix<Complex> = Matrix<Complex>(rows: 1, columns: 2)
        let c1: Complex = Complex(real: 36, imag: 96)
        let c2: Complex = Complex(real: 56, imag: 32)
        let c3: Complex = Complex(real: 1, imag: 2)
        mat7[0, 0] = c1
        mat7[0, 1] = c2
        let mat8: Matrix<Complex> = mat7-c3
        let resultComp: [String] = ["35.0+94.0i", "55.0+30.0i"]
        cases.append(testCase(mat8.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 10 - Matrix - Scalar Multiplication
    func t10() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 2
        mat1[0, 1] = 10
        mat1[1, 0] = 4
        mat1[1, 1] = 6
        let s: Int = 2
        let mat2: Matrix<Int> = mat1*s
        let result: [String] = ["4", "20", "8", "12"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows:2, columns: 2)
        mat3[0, 0] = 20.45631
        mat3[0, 1] = 10.323235
        mat3[1, 0] = 5.673454
        mat3[1, 1] = 25.23515
        let sD: Double = 2.567
        let mat4: Matrix<Double> = mat3*sD
        let resultD: [String] = ["52.51134777", "26.499744245", "14.563756418", "64.77863005"]
        cases.append(testCase(mat4.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat5: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 2)
        let f1: Fraction = Fraction(num: 36, den: 96)
        let f2: Fraction = Fraction(num: 56, den: 32)
        let f3: Fraction = Fraction(num: 1, den: 2)
        mat5[0, 0] = f1
        mat5[0, 1] = f2
        let mat6: Matrix<Fraction> = mat5*f3
        let resultFrac: [String] = ["3/16", "7/8"]
        cases.append(testCase(mat6.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat7: Matrix<Complex> = Matrix<Complex>(rows: 1, columns: 2)
        let c1: Complex = Complex(real: 36, imag: 96)
        let c2: Complex = Complex(real: 56, imag: 32)
        let c3: Complex = Complex(real: 1, imag: 2)
        mat7[0, 0] = c1
        mat7[0, 1] = c2
        let mat8: Matrix<Complex> = mat7*c3
        let resultComp: [String] = ["-156.0+168.0i", "-8.0+144.0i"]
        cases.append(testCase(mat8.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 11 - Matrix - Scalar Division
    func t11() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 100
        mat1[1, 1] = 30
        let s: Int = 2
        let mat2: Matrix<Int> = mat1/s
        let result: [String] = ["10", "5", "50", "15"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows:2, columns: 2)
        mat3[0, 0] = 20.45631
        mat3[0, 1] = 10.323235
        mat3[1, 0] = 5.673454
        mat3[1, 1] = 25.23515
        let sD: Double = 2.567
        let mat4: Matrix<Double> = mat3/sD
        let resultD: [String] = ["7.96895597974289", "4.02151733541099", "2.21014959096221", "9.83059992208804"]
        cases.append(testCase(mat4.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat5: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 2)
        let f1: Fraction = Fraction(num: 36, den: 96)
        let f2: Fraction = Fraction(num: 56, den: 32)
        let f3: Fraction = Fraction(num: 1, den: 2)
        mat5[0, 0] = f1
        mat5[0, 1] = f2
        let mat6: Matrix<Fraction> = mat5/f3
        let resultFrac: [String] = ["3/4", "3 1/2"]
        cases.append(testCase(mat6.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat7: Matrix<Complex> = Matrix<Complex>(rows: 1, columns: 2)
        let c1: Complex = Complex(real: 36, imag: 96)
        let c2: Complex = Complex(real: 56, imag: 32)
        let c3: Complex = Complex(real: 1, imag: 2)
        mat7[0, 0] = c1
        mat7[0, 1] = c2
        let mat8: Matrix<Complex> = mat7/c3
        let resultComp: [String] = ["45.6+4.8i", "24.0-16.0i"]
        cases.append(testCase(mat8.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 12 - Matrix to Vector view
    func t12() -> [Bool]{
        var cases: [Bool] = [Bool]()
        
        //Case 1 - Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 1, columns: 3)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[0, 2] = 3
        let mat2: Matrix<Int> = mat1.vectorview
        let result: [String] = ["1", "2", "3"]
        cases.append(testCase(mat2.matStringArray, rhs: result))
        
        //Case 2 - Double
        let mat3: Matrix<Double> = Matrix<Double>(rows: 3, columns: 1)
        mat3[0, 0] = 1.4563
        mat3[1, 0] = 2.98755241
        mat3[2, 0] = 3.124352354
        let mat4: Matrix<Double> = mat3.vectorview
        let resultD: [String] = ["1.4563", "2.98755241", "3.124352354"]
        cases.append(testCase(mat4.matStringArray, rhs: resultD))
        
        //Case 3 - Fraction
        let mat5: Matrix<Fraction> = Matrix<Fraction>(rows: 1, columns: 3)
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 1, den: 3)
        let f3: Fraction = Fraction(num: 1, den: 4)
        mat5[0, 0] = f1
        mat5[0, 1] = f2
        mat5[0, 2] = f3
        let mat6: Matrix<Fraction> = mat5.vectorview
        let resultFrac: [String] = ["1/2", "1/3", "1/4"]
        cases.append(testCase(mat6.matStringArray, rhs: resultFrac))
        
        //Case 4 - Complex
        let mat7: Matrix<Complex> = Matrix<Complex>(rows: 3, columns: 1)
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 1, imag: 3)
        let c3: Complex = Complex(real: 1, imag: 4)
        mat7[0, 0] = c1
        mat7[1, 0] = c2
        mat7[2, 0] = c3
        let mat8: Matrix<Complex> = mat7.vectorview
        let resultComp: [String] = ["1.0+2.0i", "1.0+3.0i", "1.0+4.0i"]
        cases.append(testCase(mat8.matStringArray, rhs: resultComp))
        
        return cases
    }
    
    //Test 13 - Access Matrix rows
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
        let row: Vector<Int> = mat1.row(2)
        let result: [String] = ["7", "8", "9"]
        cases.append(testCase(row.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 3, columns: 3)
        mat2[0, 0] = 1.234
        mat2[0, 1] = 2.345
        mat2[0, 2] = 3.456
        mat2[1, 0] = 4.567
        mat2[1, 1] = 5.13223523115
        mat2[1, 2] = 6.462346
        mat2[2, 0] = 7.23462346
        mat2[2, 1] = 8.2457245
        mat2[2, 2] = 9.245623
        let rowD: Vector<Double> = mat2.row(0)
        let resultD: [String] = ["1.234", "2.345", "3.456"]
        cases.append(testCase(rowD.vecStringArray, rhs: resultD))
        
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
        let rowF: Vector<Fraction> = mat3.row(1)
        let resultF: [String] = ["\(f4)", "\(f5)", "\(f6)"]
        cases.append(testCase(rowF.vecStringArray, rhs: resultF))
        
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
        let rowC: Vector<Complex> = mat4.row(0)
        let resultC: [String] = ["\(c1)", "\(c2)", "\(c3)"]
        cases.append(testCase(rowC.vecStringArray, rhs: resultC))
        
        return cases
    }
    
    //Test 14 - Access Matrix columns
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
        let col: Vector<Int> = mat1.column(2)
        let result: [String] = ["3", "6", "9"]
        cases.append(testCase(col.vecStringArray, rhs: result))
        
        //Case 2 - Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 3, columns: 3)
        mat2[0, 0] = 1.234
        mat2[0, 1] = 2.345
        mat2[0, 2] = 3.456
        mat2[1, 0] = 4.567
        mat2[1, 1] = 5.13223523115
        mat2[1, 2] = 6.462346
        mat2[2, 0] = 7.23462346
        mat2[2, 1] = 8.2457245
        mat2[2, 2] = 9.245623
        let rowD: Vector<Double> = mat2.column(0)
        let resultD: [String] = ["1.234", "4.567", "7.23462346"]
        cases.append(testCase(rowD.vecStringArray, rhs: resultD))
        
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
        let rowF: Vector<Fraction> = mat3.column(1)
        let resultF: [String] = ["\(f2)", "\(f5)", "\(f8)"]
        cases.append(testCase(rowF.vecStringArray, rhs: resultF))
        
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
        let rowC: Vector<Complex> = mat4.column(2)
        let resultC: [String] = ["\(c3)", "\(c6)", "\(c9)"]
        cases.append(testCase(rowC.vecStringArray, rhs: resultC))
        
        return cases
    }
}