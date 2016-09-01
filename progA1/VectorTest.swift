//
//  VectorTest.swift
//  progA1
//
//  Created by Ashley Midgley on 8/27/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class VectorTest{
    
    init(){}
    
    func runTests(){
        print("***** Vector Testing *****\n")
        let vec1 = Vector<Int>(size: 5)
        print("Vector 1:\n\(vec1)\n")
        vec1[0]=1
        vec1[1]=2
        vec1[2]=3
        vec1[3]=4
        vec1[4]=5
        print("CHANGES APPLIED:\n\(vec1)\n")
        
        let vec2 = vec1.copy()
        print("Vector 1 COPY:\n\(vec2)\n")
        
        let vec3 = Vector<Int>(size: 3)
        vec3[0] = 5
        vec3[1] = 2
        vec3[2] = 1
        print("Vector 3:\n\(vec3)\n")
        let vec4 = Vector<Int>(size: 3)
        vec4[0] = 2
        vec4[1] = 2
        vec4[2] = 2
        print("Vector 4:\n\(vec4)\n")
        let dot = vec3.dot(vec4)
        print("DOT PRODUCT of 3 and 4 = \(dot)\n")
        
        let vec5 = Vector<Int>(size: 3)
        
        vec5[0]=1
        vec5[1]=2
        vec5[2]=3
        print("Vector 5:\n\(vec5)\n")
        let vec6 = Vector<Int>(size: 3)
        vec6[0] = 2
        vec6[1] = 2
        vec6[2] = 6
        print("Vector 6:\n\(vec6)\n")
        
        print("\(vec5)\n*")
        print("\(vec6)\n=")
        
        let vec7 = vec5.multiply(vec6)
        print("\(vec7)\n")
        
        print("\(vec5)\n+")
        print("\(vec6)\n=")
        print("\(vec5.add(vec6))\n")
    }
}