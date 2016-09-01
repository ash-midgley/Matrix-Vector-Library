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
        

        /*
        
        //Test 4: Matrix - Matrix multiplication
        print("***** TEST 4: Matrix - Matrix multiplication *****\n")
        let mat5: Matrix<Int> = Matrix<Int>(rows: 2, columns: 3)
        mat5[0, 0] = 2
        mat5[0, 1] = 3
        mat5[0, 2] = 2
        mat5[1, 0] = 1
        mat5[1, 1] = 5
        mat5[1, 2] = 3
        let mat6: Matrix<Int> = Matrix<Int>(rows: 3, columns: 2)
        mat6[0, 0] = 1
        mat6[0, 1] = 2
        mat6[1, 0] = 3
        mat6[1, 1] = 4
        mat6[2, 0] = 5
        mat6[2, 1] = 6
        
        print("\(mat5)\n*")
        print("\(mat6)\n=")
        print("\(mat5*mat6)\n")
        
        //Test 5: Matrix - Matrix addition
        print("***** TEST 5: Matrix - Matrix addition *****\n")
        
        let mat7 = Matrix<Int>(rows: 2, columns: 2)
        mat7[0, 0] = 4
        mat7[0, 1] = 2
        mat7[1, 0] = 3
        mat7[1, 1] = 2
        let mat8 = Matrix<Int>(rows: 2, columns: 2)
        mat8[0, 0] = 5
        mat8[0, 1] = 1
        mat8[1, 0] = 7
        mat8[1, 1] = 6
        
        print("\(mat7)\n+")
        print("\(mat8)\n=")
        print("\(mat7+mat8)\n")
        
        //Test 6: Matrix - Matrix subtraction
        print("***** TEST 6: Matrix - Matrix subtraction *****\n")
        
        print("\(mat8)\n-")
        print("\(mat7)\n=")
        print("\(mat8-mat7)\n")
 */
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
            for c in 0...(mat1.columns-1){
                if(mat1[r,c] != result[i]){
                    print("FAILED")
                    failFlag = true
                }
                i += 1
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
            for c in 0...(mat2.columns-1){
                if(mat2[r,c] != resultD[i]){
                    print("FAILED")
                    failFlag = true
                }
                i += 1
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
        for r in 0...(mat2.rows-1){
            for c in 0...(mat2.columns-1){
                if(mat3[r,c] != resultF[i]){
                    print("FAILED")
                    failFlag = true
                }
                i += 1
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
            for c in 0...(mat4.columns-1){
                if(mat4[r,c] !== resultFrac[i]){
                    print("FAILED")
                    failFlag = true
                }
                i += 1
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
            for c in 0...(mat5.columns-1){
                if(mat5[r,c] !== resultComp[i]){
                    print("FAILED")
                    failFlag = true
                }
                i += 1
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        
        print()
    }
    
    //Test 2: Transpose of a matrix
    func t2(){
        print("TEST 2 - Transpose of a Matrix")
        
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        print("Transpose 1: ", terminator: "")
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.transpose
        
        let result: [Int] = [1, 2, 3, 4]
        var i: Int = 0
        for r in 0...(mat2.rows-1){
            for c in 0...(mat2.columns-1){
                if(mat2[r,c] != result[i]){
                    print("FAILED")
                    failFlag = true
                }
                i += 1
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        print()
    }
    
    func t3(){
        //Test 3: Copying a Matrix
        print("TEST 3: Copying a Matrix")
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        let mat2: Matrix<Int> = mat1.copy()
        print("Copy 1: ", terminator: "")
        
        for r in 0...(mat1.rows-1){
            for c in 0...(mat1.columns-1){
                if(mat1[r,c] != mat2[r,c]){
                    print("FAILED")
                    failFlag = true
                }
            }
        }
        if(!failFlag){
            print("PASSED")
        }
        print()
    }
    
    func t4(){
        
    }
    
    func t5(){
        
    }
    
    func t6(){
        
    }
}