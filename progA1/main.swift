//
//  main.swift
//  progA1
//
//  Created by Ashley Midgley on 8/16/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

var tests: TestMatrixVector = TestMatrixVector()

//MATRIX TESTING

print("***** Matrix Testing *****\n")

var matTests: Int = 0
var matPasses: Int = 0
var matFails: Int = 0

let mTNames: [String] = ["TEST 1 - Type values", "TEST 2 - Transpose of a Matrix", "TEST 3 - Copying a Matrix", "TEST 4 - Matrix * Matrix", "TEST 5 - Matrix + Matrix", "TEST 6 - Matrix - Matrix", "TEST 7 - Matrix + Scalar", "TEST 8 - Matrix - Scalar", "TEST 9 - Matrix * Scalar", "TEST 10 - Matrix / Scalar", "TEST 11 - Matrix vectorview", "TEST 12 - Matrix row access", "TEST 13 - Matrix column access"]
let mTResults: [[Bool]] = tests.matrixTests

for t in 0...(mTResults.count-1){
    print("\(mTNames[t])")
    for c in 0...(mTResults[t].count-1){
        let result: String;
        if(mTResults[t][c]){
            result = "PASSED"
            matPasses += 1
        }else{
            result = "FAILED"
            matFails += 1
        }
        print("Case \(c+1): \(result)")
        matTests += 1
    }
    print()
}

print("Tests ran on Matrix class: \(matTests)")
print("Passes: \(matPasses), Fails: \(matFails).\n")

//VECTOR TESTING

print("***** Vector Testing *****\n")

var vecTests: Int = 0
var vecPasses: Int = 0
var vecFails: Int = 0

var vTest: VectorTest = VectorTest()
let vTNames: [String] = ["TEST 1 - Type values", "TEST 2 - Copying a Vector"]
let vTResults: [[Bool]] = tests.vectorTests
/*
for t in 0...(vTResults.count-1){
    print("\(vTNames[t])")
    for c in 0...(vTResults[t].count-1){
        let result: String;
        if(vTResults[t][c]){
            result = "PASSED"
            vecPasses += 1
        }else{
            result = "FAILED"
            vecFails += 1
        }
        print("Case \(c+1): \(result)")
        vecTests += 1
    }
    print()
}
*/
print("Tests ran on Vector class: \(vecTests)")
print("Passes: \(vecPasses), Fails: \(vecFails).\n")

