//
//  Vector.swift
//  progA1
//
//  Created by Ashley Midgley on 8/25/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class Vector<T: MatrixData>: Matrix<T>, VectorToMatrix {
    
    // Returns the size of the vector
    public var size: Int {
        get{
            return (super.rows*super.columns)
        }
    }
    
    // Convert Vector to Matrix
    public var matrixview: Matrix<T>{
        get{
            let mat: Matrix<T> = Matrix<T>(rows: 1, columns: self.size)
            for i in 0...(mat.columns-1){
                mat[0, i] = self[i]
            }
            return mat
        }
    }
    
    //convert contents of vector to string array
    public var vecStringArray: [String] {
        return super.matStringArray
    }
    
    //default initialiser
    init(size: Int){
        super.init(rows: 1, columns: size)
    }
    
    // Computes the dot product of the vector with another vector
    public func dot(v: Vector<T>) -> T{
        assert(v.size == self.size, "ERROR: Sizes of the two vectors does not match")
        var result = T.init()
        for i in 0...(v.size-1){
            result = result + (v[i]*self.mat[0][i])
        }
        return result
    }
    
    // Returns/sets the element value at the given index
    public subscript(index: Int) -> T {
        get{
            return self.mat[0][index]
        }set(newObject){
            self.mat[0][index] = newObject
        }
    }
    
    // Returns a new object instance that is a copy of the current vector
    public override func copy() -> Vector<T>{
        return super.copy().vectorview
    }
    
    // Vector and Vector operations
    func multiply(rhs: Vector<T>) -> T{
        var val: T = T.init()
        for i in 0...(self.size-1){
            val = val + (self[i]*rhs[i])
        }
        return val
    }
    
    func add(rhs: Vector<T>) -> Vector<T>{
        return super.add(rhs).vectorview
    }
    
    func subtract(rhs: Vector<T>) -> Vector<T>{
        return super.subtract(rhs).vectorview
    }
    
    // Vector and scalar operations
    override func multiply(rhs: T) -> Vector<T>{
        return super.multiply(rhs).vectorview
    }
    
    override func add(rhs: T) -> Vector<T>{
        return super.add(rhs).vectorview
    }
    
    override func subtract(rhs: T) -> Vector<T>{
        return super.subtract(rhs).vectorview
    }
    
    override func divide(rhs: T) -> Vector<T>{
        return super.divide(rhs).vectorview
    }
}

// Matrix and Matrix operators
public func *<T: MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> T{
    return lhs.multiply(rhs)
}

public func +<T: MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> Vector<T>{
    return lhs.add(rhs)
}

public func -<T: MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> Vector<T>{
    return lhs.subtract(rhs)
}

// Matrix and scalar operators
public func +<T: MatrixData>(lhs: Vector<T>, rhs:T) -> Vector<T>{
    return lhs.add(rhs)
}

public func -<T: MatrixData>(lhs: Vector<T>, rhs: T) -> Vector<T>{
    return lhs.subtract(rhs)
}

public func *<T: MatrixData>(lhs: Vector<T>, rhs: T) -> Vector<T>{
    return lhs.multiply(rhs)
}

public func /<T: MatrixData>(lhs: Vector<T>, rhs: T) -> Vector<T>{
    return lhs.divide(rhs)
}
