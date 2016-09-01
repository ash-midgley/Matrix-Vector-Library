//
//  main.swift
//  progA1
//
//  Created by Ashley Midgley on 8/16/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

//MATRIX TESTING

var mTest: MatrixTest = MatrixTest()
mTest.runTests()

//VECTOR TESTING
/*
var mat1 = Matrix<Int>(rows: 1, columns: 3)
mat1[0, 0] = 1
mat1[0, 1] = 2
mat1[0, 2] = 3

print("\(mat1)\n\(mat1.vectorview)\n")

print("\(mat1.row(0))\n")
print("\(mat1.column(1))\n")

var vec1: Vector<Int> = Vector<Int>(size: 2)
vec1[0] = 1
vec1[1] = 2
var vec2: Vector<Int> = Vector<Int>(size: 2)
vec2[0] = 3
vec2[1] = 6

print("\(vec1 + vec2)\n")

var vec3: Vector<Int> = Vector<Int>(size: 4)
vec3[0] = 3
vec3[1] = 6
vec3[2] = 9
vec3[3] = 12

var mat2: Matrix<Int> = vec3.matrixview
print("\(mat2.transpose)\n")

var F = Matrix<Fraction>(rows: 1, columns: 2)
F[0,0] = Fraction(num: 3, den: 4)
F[0,1] = Fraction(num: -1, den: 2)

var C = Matrix<Complex>(rows: 1, columns: 2)
C[0,0] = Complex(real: 5, imag: 2)
C[0,1] = Complex(real: -1, imag: 2)

print("\(F)")
print("\(C)")
 */
