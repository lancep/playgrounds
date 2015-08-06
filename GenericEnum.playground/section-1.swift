// Playground - noun: a place where people can play

import Foundation

enum Result<SuccessType, ErrorType> {
    case Success(result: SuccessType)
    case Error(error: ErrorType)
}

func networkCall(succeeds: Bool) -> Result<String, String> {
    if succeeds {
        return Result.Success(result: "Yay! Here's your data")
    } else {
        return Result.Error(error: "No Data 😞")
    }
}


var successfulCall = networkCall(true)
var unsuccessfulCall = networkCall(false)

switch successfulCall {
case .Success(let result):
    result
case .Error(let error):
    error
}
