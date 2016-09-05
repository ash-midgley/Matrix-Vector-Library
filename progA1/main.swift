//
//  main.swift
//  progA1
//
//  Created by Ashley Midgley on 8/16/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

var tests: TestMatrixVector = TestMatrixVector()
var type: [String] = ["(I)", "(D)", "(F)", "(C)"]

//MATRIX TESTING

print("***** Matrix Testing *****\n")

var matTests: Double = 0
var matPasses: Double = 0
var matFails: Double = 0

let mTNames: [String] = ["[Type values]", "[Subscript]", "[Transpose]", "[Copy]", "[Matrix * Matrix]", "[Matrix + Matrix]", "[Matrix - Matrix]", "[Matrix + Scalar]", "[Matrix - Scalar]", "[Matrix * Scalar]", "[Matrix / Scalar]", "[Vectorview]", "[Row access]", "[Column access]"]
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
        print("Case \(c+1) - \(type[c]): \(result)")
        matTests += 1
    }
    print()
}

print("Tests ran on Matrix class: \(Int(matTests))")
print("Passes: \(Int(matPasses)) - Fails: \(Int(matFails))\n")

//VECTOR TESTING

print("***** Vector Testing *****\n")

var vecTests: Double = 0
var vecPasses: Double = 0
var vecFails: Double = 0

var vTest: VectorTest = VectorTest()

let vTNames: [String] = ["[Type values]", "[Subscript]", "[Copy]", "[Dot Product]", "[Vector * Vector]", "[Vector + Vector]", "[Vector - Vector]", "[Vector * Scalar]", "[Vector + Scalar]", "[Vector - Scalar]", "[Vector / Scalar]", "[Matrixview]", "[Matrix Row]", "[Matrix Column]"]
let vTResults: [[Bool]] = tests.vectorTests

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
        print("Case \(c+1) - \(type[c]): \(result)")
        vecTests += 1
    }
    print()
}

print("Tests ran on Vector class: \(Int(vecTests))")
print("Passes: \(Int(vecPasses)) - Fails: \(Int(vecFails))\n")

//Tests COMPLETE

print("***** Testing COMPLETE *****\n")

let passes: Double = matPasses + vecPasses
let fails: Double =  matFails+vecFails
let ttests: Double = matTests+vecTests
let passPercent: Double = ((passes-fails)/ttests)*100

print("Total tests run: \(Int(matTests+vecTests))")
print("\(String(format: "%.1f", passPercent))% of tests PASSED")

