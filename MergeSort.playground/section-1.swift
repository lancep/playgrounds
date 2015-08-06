// Playground - noun: a place where people can play

func mergeSort<T: Comparable>(inout array: [T]) {
    func merge(var left: [T], var right: [T]) -> [T] {
        var mergedValues = [T]()
        
        while let leftValue? = left.first, let rightValue? = right.first {
            mergedValues.append(leftValue < rightValue ? left.removeAtIndex(0) : right.removeAtIndex(0))
        }
        
        if !left.isEmpty {
            mergedValues += left
        } else if !right.isEmpty {
            mergedValues += right
        }
        
        return mergedValues
    }
    
    if array.count <= 1 {
        return
    }
    
    var leftSlice = [T](array[0..<array.count / 2])
    var rightSlice = [T](array[array.count / 2...array.endIndex - 1])
    
    mergeSort(&leftSlice)
    mergeSort(&rightSlice)
    array = merge(leftSlice, rightSlice)
}


var array = [50, 10, 14, 1, 100, 7, 7, 87]
mergeSort(&array)
array
