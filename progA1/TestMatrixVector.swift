//
//  TestMatrixVector.swift
//  progA1
//
//  Created by Ashley Midgley on 9/3/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class TestMatrixVector{
    
    //Stores the results for the matrix and vector tests
    //Rows = tests
    //Columns = cases for a given test
    let matrixTests: [[Bool]];
    let vectorTests: [[Bool]];

    //Stores the test results for the Matrix and Vector tests
    init(){
        let mT: MatrixTest = MatrixTest()
        self.matrixTests = mT.results
        let vT: VectorTest = VectorTest()
        self.vectorTests = vT.results
    }
}