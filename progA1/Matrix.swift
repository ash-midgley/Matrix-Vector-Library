//
//  Matrix.swift
//  progA1
//
//  Created by Ashley Midgley on 8/18/16.
//  Copyright © 2016 Ashley Midgley. All rights reserved.
//

import Foundation

public class Matrix<T: MatrixData>: MatrixToVector {
    
    var mat = [[T]]()
    let rowCount: Int
    let columnCount: Int
    
    public var description: String{
        var s: String = ""
        for r in 0...(rows-1){
            s += "["
            for c in 0...(columns-1){
                if(c != (columns-1)){
                    s += "\(mat[r][c]), "
                }else{
                    s += "\(mat[r][c])"
                }
            }
            if(r != (rows-1)){
                s += "]\n"
            }else{
                s += "]"
            }
        }
        return s
    }

    // Returns the number of rows in the matrix
    public var rows: Int {
        get{
            return rowCount
        }
    }
    
    // Returns the number of columns in the matrix
    public var columns: Int {
        get{
            return columnCount
        }
    }
    
    // Returns a matrix that is a transpose of the current matrix
    public var transpose: Matrix<T> {
        get{
            let t = Matrix<T>(rows: columnCount, columns: rowCount)
            for r in 0...(rowCount-1){
                for c in 0...(columnCount-1){
                    t[c, r] = mat[r][c]
                }
            }
            return t
        }
    }
    
    public var vectorview: Vector<T>{
        get{
            assert(self.rows == 1 || self.columns == 1, "Attempted convert of a non single-row or non single-column Matrix")
            if(self.rows == 1){
                return self.row(0)
            }else{
                return self.column(0)
            }
        }
    }
    
    public var matStringArray: [String] {
        var result: [String] = [String]()
        for r in 0...(rowCount-1){
            for c in 0...(columnCount-1){
                result.append("\(self[r,c])")
            }
        }
        return result
    }
    
    init(rows: Int, columns: Int){
        assert(rows > 0 && columns > 0, "ERROR: row and column values must be greater than 0")
        mat = Array(count: rows, repeatedValue: Array(count: columns, repeatedValue: T.init()))
        rowCount = rows
        columnCount = columns
    }
    
    // Returns/sets the element value at the given row and column index
    public subscript(row: Int, column: Int) -> T {
        get{
            return mat[row][column]
        }set(newObject){
            mat[row][column] = newObject
        }
    }
    
    // Returns a new object that is a copy of the current matrix
    public func copy() -> Matrix<T>{
        let copy = Matrix(rows: rowCount, columns: columnCount)
        for r in 0...(rows-1){
            for c in 0...(columns-1){
                copy[r, c] = mat[r][c]
            }
        }
        return copy
    }
    
    public func row(index: Int) -> Vector<T>{
        let vec: Vector<T> = Vector<T>(size: self.columns)
        for i in 0...(vec.size-1){
            vec[i] = mat[index][i]
        }
        return vec
    }
    
    public func column(index: Int) -> Vector<T>{
        let vec: Vector<T> = Vector<T>(size: self.rows)
        var i: Int = 0
        for r in 0...(rows-1){
            for c in 0...(columns-1){
                if(c == index){
                    vec[i] = mat[r][c]
                    i += 1
                }
            }
        }
        return vec
    }
    
    // Matrix and Matrix operations
    func multiply(rhs: Matrix<T>) -> Matrix<T>{
        assert(self.rows == rhs.columns, "Matrix A must have the same number of rows as Matrix B's columns")
        let result: Matrix = Matrix(rows: self.rows, columns: rhs.columns)
        
        let len: Int = self.columns-1
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                var val: T = T.init()
                for i in 0...len{
                    val = val + (mat[r][i]*rhs[i,c])
                }
                result[r, c] = val
            }
        }
        return result
    }
    
    func add(rhs: Matrix<T>) -> Matrix<T>{
        assert(self.rows == rhs.rows && self.columns == rhs.columns, "Matrix A must be of same size as Matrix B")
        let result: Matrix = Matrix(rows: self.rows, columns: self.columns)
        
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                let val: T = mat[r][c] + rhs[r, c]
                result[r, c] = val
            }
        }
        return result
    }
    
    func subtract(rhs: Matrix<T>) -> Matrix<T>{
        assert(self.rows == rhs.rows && self.columns == rhs.columns, "Matrix A must be of same size as Matrix B")
        let result: Matrix = Matrix(rows: self.rows, columns: self.columns)
        
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                let val: T = mat[r][c] - rhs[r, c]
                result[r, c] = val
            }
        }
        return result
    }
    
    // Matrix and scalar operations
    func multiply(rhs: T) -> Matrix<T>{
        let result: Matrix = Matrix(rows: self.rows, columns: self.columns)
        
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                let val: T = mat[r][c] * rhs
                result[r, c] = val
            }
        }
        return result
    }
    
    func add(rhs: T) -> Matrix<T>{
        let result: Matrix = Matrix(rows: self.rows, columns: self.columns)
        
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                let val: T = mat[r][c] + rhs
                result[r, c] = val
            }
        }
        return result
    }
    
    func subtract(rhs: T) -> Matrix<T>{
        let result: Matrix = Matrix(rows: self.rows, columns: self.columns)
        
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                let val: T = mat[r][c] - rhs
                result[r, c] = val
            }
        }
        return result
    }
    
    func divide(rhs: T) -> Matrix<T>{
        let result: Matrix = Matrix(rows: self.rows, columns: self.columns)
        
        for r in 0...(result.rows-1){
            for c in 0...(result.columns-1){
                let val: T = mat[r][c] / rhs
                result[r, c] = val
            }
        }
        return result
    }
}

// Matrix and Matrix operators
public func *<T: MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T>{
    return lhs.multiply(rhs)
}

public func +<T: MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T>{
    return lhs.add(rhs)
}

public func -<T: MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T>{
    return lhs.subtract(rhs)
}

// Matrix and scalar operators
public func +<T: MatrixData>(lhs: Matrix<T>, rhs:T) -> Matrix<T>{
    return lhs.add(rhs)
}

public func -<T: MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T>{
    return lhs.subtract(rhs)
}

public func *<T: MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T>{
    return lhs.multiply(rhs)
}

public func /<T: MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T>{
    return lhs.divide(rhs)
}
