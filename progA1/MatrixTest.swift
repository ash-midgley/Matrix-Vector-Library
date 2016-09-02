//
//  MatrixTest.swift
//  progA1
//
//  Created by Ashley Midgley on 8/27/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class MatrixTest{
    
    var failFlag: Bool = false

    init(){}
    
    func runTests(){
        print("***** Matrix Testing *****\n")
        t1()
        t2()
        t3()
        t4()
        t5()
        t6()
        t7()
        t8()
        t9()
        t10()
        t11()
        t12()
        t13()
    }
    
    //Test 1: setting and printing Matrix with different type values
    func t1(){
        print("TEST 1 - Type values")
        
        //Int
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        print("Int:      ", terminator: "")
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        
        let result: [Int] = [1, 2, 3, 4]
        var i: Int = 0
        for r in 0...(mat1.rows-1){
            if(!failFlag){
                for c in 0...(mat1.columns-1){
                    if(mat1[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        
        //Double
        let mat2: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        print("Double:   ", terminator: "")
        mat2[0, 0] = 1.0
        mat2[0, 1] = 2.45
        mat2[1, 0] = 3.98
        mat2[1, 1] = 4.25135324513
        
        let resultD: [Double] = [1.0, 2.45, 3.98, 4.25135324513]
        i = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != resultD[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        
        //Float
        let mat3: Matrix<Float> = Matrix<Float>(rows: 2, columns: 2)
        print("Float:    ", terminator: "")
        mat3[0, 0] = 1.0
        mat3[0, 1] = 2.45
        mat3[1, 0] = 3.98
        mat3[1, 1] = 4.25135324513
        
        let resultF: [Float] = [1.0, 2.45, 3.98, 4.25135]
        i = 0
        for r in 0...(mat3.rows-1){
            if(!failFlag){
                for c in 0...(mat3.columns-1){
                    if(mat3[r,c] != resultF[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        
        //Fraction
        let mat4: Matrix<Fraction> = Matrix<Fraction>(rows: 2, columns: 2)
        print("Fraction: ", terminator: "")
        let f1: Fraction = Fraction(num: 1, den: 2)
        let f2: Fraction = Fraction(num: 3, den: 2)
        let f3: Fraction = Fraction(num: 5, den: 16)
        let f4: Fraction = Fraction(num: 4, den: 1)
        mat4[0, 0] = f1
        mat4[0, 1] = f2
        mat4[1, 0] = f3
        mat4[1, 1] = f4
        
        let resultFrac: [Fraction] = [f1, f2, f3, f4]
        i = 0
        for r in 0...(mat4.rows-1){
            if(!failFlag){
                for c in 0...(mat4.columns-1){
                    if(mat4[r,c] !== resultFrac[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        
        //Complex
        let mat5: Matrix<Complex> = Matrix<Complex>(rows: 2, columns: 2)
        print("Complex:  ", terminator: "")
        let c1: Complex = Complex(real: 1, imag: 2)
        let c2: Complex = Complex(real: 3, imag: 2)
        let c3: Complex = Complex(real: 5, imag: 16)
        let c4: Complex = Complex(real: 4, imag: 0)
        mat5[0, 0] = c1
        mat5[0, 1] = c2
        mat5[1, 0] = c3
        mat5[1, 1] = c4
        
        let resultComp: [Complex] = [c1, c2, c3, c4]
        i = 0
        for r in 0...(mat5.rows-1){
            if(!failFlag){
                for c in 0...(mat5.columns-1){
                    if(mat5[r,c] !== resultComp[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 2: Transpose of a matrix
    func t2(){
        print("TEST 2 - Transpose of a Matrix")
        
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.transpose
        
        let result: [Int] = [1, 3, 2, 4]
        var i: Int = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    func t3(){
        //Test 3: Copying a Matrix
        print("TEST 3 - Copying a Matrix")
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.copy()
        print("Copy 1: ", terminator: "")
        
        for r in 0...(mat1.rows-1){
            if(!failFlag){
                for c in 0...(mat1.columns-1){
                    if(mat1[r,c] != mat2[r,c]){
                        print("FAILED")
                        failFlag = true
                    }
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 4: Matrix - Matrix multiplication
    func t4(){
        print("TEST 4 - Matrix * Matrix")
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
        print("Case 1: ", terminator: "")
        
        let result: [Int] = [21, 28, 31, 40]
        var i: Int = 0
        for r in 0...(mat3.rows-1){
            if(!failFlag){
                for c in 0...(mat3.columns-1){
                    if(mat3[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 5: Matrix - Matrix addition
    func t5(){
        print("TEST 5 - Matrix + Matrix")
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
        print("Case 1: ", terminator: "")
        
        let result: [Int] = [9, 3, 10, 8]
        var i: Int = 0
        for r in 0...(mat3.rows-1){
            if(!failFlag){
                for c in 0...(mat3.columns-1){
                    if(mat3[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 6: Matrix - Matrix subtraction
    func t6(){
        print("TEST 6 - Matrix - Matrix")
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
        print("Case 1: ", terminator: "")
        
        let result: [Int] = [1, -1, 4, 4]
        var i: Int = 0
        for r in 0...(mat3.rows-1){
            if(!failFlag){
                for c in 0...(mat3.columns-1){
                    if(mat3[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 7 - Matrix - Scalar Addition
    func t7(){
        print("TEST 7 - Matrix + Scalar")
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 5
        mat1[1, 1] = 25
        let s: Int = 2
        
        let mat2: Matrix<Int> = mat1+s
        
        let result: [Int] = [22, 12, 7, 27]
        
        var i: Int = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 8 - Matrix - Scalar Subtraction
    func t8(){
        print("TEST 8 - Matrix - Scalar")
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 5
        mat1[1, 1] = 25
        let s: Int = 2
        
        let mat2: Matrix<Int> = mat1-s
        
        let result: [Int] = [18, 8, 3, 23]
        
        var i: Int = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 9 - Matrix - Scalar Multiplication
    func t9(){
        print("TEST 9 - Matrix * Scalar")
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 2
        mat1[0, 1] = 10
        mat1[1, 0] = 4
        mat1[1, 1] = 6
        let s: Int = 2
        
        let mat2: Matrix<Int> = mat1*s
        
        let result: [Int] = [4, 20, 8, 12]
        
        var i: Int = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 10 - Matrix - Scalar Division
    func t10(){
        print("TEST 10 - Matrix / Scalar")
        let mat1: Matrix<Int> = Matrix<Int>(rows:2, columns: 2)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 20
        mat1[0, 1] = 10
        mat1[1, 0] = 100
        mat1[1, 1] = 30
        let s: Int = 2
        
        let mat2: Matrix<Int> = mat1/s
        
        let result: [Int] = [10, 5, 50, 15]
        
        var i: Int = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 11 - Matrix to Vector view
    func t11(){
        print("TEST 11 - Matrix vectorview")
        let mat1: Matrix<Int> = Matrix<Int>(rows: 1, columns: 3)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[0, 2] = 3
         
        let mat2: Matrix<Int> = mat1.vectorview
        let result: [Int] = [1, 2, 3]

        var i: Int = 0
        for r in 0...(mat2.rows-1){
            if(!failFlag){
                for c in 0...(mat2.columns-1){
                    if(mat2[r,c] != result[i]){
                        print("FAILED")
                        failFlag = true
                    }
                    i += 1
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 12 - Access Matrix rows
    func t12(){
        print("TEST 12 - Matrix row access")
        let mat1: Matrix<Int> = Matrix<Int>(rows: 3, columns: 3)
        print("Case 1: ", terminator: "")
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
        let result: [Int] = [7, 8, 9]
        
        var i: Int = 0
        for c in 0...(row.size-1){
            if(row[c] != result[i]){
                print("FAILED")
                failFlag = true
            }
            i += 1
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
    
    //Test 13 - Access Matrix columns
    func t13(){
        print("TEST 13 - Matrix column access")
        let mat1: Matrix<Int> = Matrix<Int>(rows: 3, columns: 3)
        print("Case 1: ", terminator: "")
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[0, 2] = 3
        mat1[1, 0] = 4
        mat1[1, 1] = 5
        mat1[1, 2] = 6
        mat1[2, 0] = 7
        mat1[2, 1] = 8
        mat1[2, 2] = 9
        
        let row: Vector<Int> = mat1.column(2)
        let result: [Int] = [3, 6, 9]
        
        var i: Int = 0
        for c in 0...(row.size-1){
            if(row[c] != result[i]){
                print("FAILED")
                failFlag = true
            }
            i += 1
        }
        if(!failFlag){
            print("PASSED")
        }
        failFlag = false
        print()
    }
}