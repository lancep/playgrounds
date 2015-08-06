// Playground - noun: a place where people can play

import Foundation

struct Read {}
struct Write {}

struct FileHandle<A> {
    let handle: NSFileHandle
}

func openForReading(path: String) -> FileHandle<Read>? {
    return NSFileHandle(forReadingAtPath: path).map { FileHandle(handle: $0) }
}

func openForWriting(path: String) -> FileHandle<Write>? {
    return NSFileHandle(forWritingAtPath: path).map { FileHandle(handle: $0) }
}

openForWriting("/Users/lanceparker/Desktop/blah.txt")

openForReading("/Users/lanceparker/Desktop/blah.txt")

