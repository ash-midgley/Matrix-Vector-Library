//
//  TestMatrixVector.swift
//  progA1
//
//  Created by Ashley Midgley on 9/3/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class TestMatrixVector{
    let matrixTests: [[Bool]];
    let vectorTests: [[Bool]];

    init(){
        let mT: MatrixTest = MatrixTest()
        self.matrixTests = mT.results
        let vT: VectorTest = VectorTest()
        self.vectorTests = vT.results
    }
}