//
//  main.swift
//  Sherlock and the Valid String
//
//  Created by Ieva on 2021-01-28.
//

import Foundation

class Validator {
    func isValid(_ string: String) -> Bool {
        // Complete the isValid function
        return true
    }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = Validator().isValid(s) ? "YES" : "NO"

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
