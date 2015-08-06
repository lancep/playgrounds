//: Playground - noun: a place where people can play

import Cocoa
import Foundation

func heapSort<T: Comparable>(var array: [T]) -> [T] {
    func siftDown(inout array: [T], start: Int, end: Int) {
        var root = start
        
        while root * 2 + 1 <= end {
            let child = root * 2 + 1
            var swap = root
            
            if array[swap] < array[child] {
                swap = child
            }
            if child+1 <= end && array[swap] < array[child+1] {
                swap = child + 1
            }
            if swap == root {
                return
            } else {
                Swift.swap(&array[root], &array[swap])
                
                root = swap
            }
        }
    }
    
    func heapify(inout array: [T], count: Int) {
        
        var start = Int(floorf(Float(array.count - 2) / 2.0))
        
        while start >= 0 {
            siftDown(&array, start, count - 1)
            start--
        }
    }
    
    var count = array.count
    heapify(&array, count)
    
    var end = count - 1
    while end > 0 {
        swap(&array[0], &array[end])
        end--
        
        siftDown(&array, 0, end)
    }
    return array
}


var array = [50, 10, 14, 1, 100, 7, 7, 87]
heapSort(array)
