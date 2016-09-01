//
//  MatrixTest.swift
//  progA1
//
//  Created by Ashley Midgley on 8/27/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class MatrixTest{

    init(){}
    
    func runTests(){
        print("***** Matrix Testing *****\n")
        
        //Test 1: setting and printing Matrix with different type values
        print("***** TEST 1: Type values ******\n")
        let mat1: Matrix<Int> = Matrix<Int>(rows: 2, columns: 2)
        print("Int:\n\(mat1)\n")
        mat1[0, 0] = 1
        mat1[0, 1] = 2
        mat1[1, 0] = 3
        mat1[1, 1] = 4
        print("\(mat1)\n")
        
        let mat2: Matrix<Double> = Matrix<Double>(rows: 2, columns: 2)
        print("Double:\n\(mat2)\n")
        mat2[0, 0] = 1.0
        mat2[0, 1] = 2.45
        mat2[1, 0] = 3.98
        mat2[1, 1] = 4.25135324513
        print("\(mat2)\n")
        
        let mat3: Matrix<Float> = Matrix<Float>(rows: 2, columns: 2)
        print("Float:\n\(mat3)\n")
        mat3[0, 0] = 1.0
        mat3[0, 1] = 2.45
        mat3[1, 0] = 3.98
        mat3[1, 1] = 4.25135324513
        print("\(mat3)\n")
        
        //Test 2: Transpose of a matrix
        print("***** TEST 2: Transpose of a Matrix *****\n")
        print("Transpose of Matrix 1:\n\(mat1.transpose)\n")
        
        //Test 3: Copying a Matrix
        print("***** TEST 3: Copying a Matrix *****\n")
        let mat4 = mat1.copy()
        print("Matrix 1 COPY:\n\(mat4)\n")
        
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
    }
}