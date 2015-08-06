// Playground - noun: a place where people can play

import UIKit

var sourceRect = CGRect(x: 0, y: 0, width: 100, height: 100)

let (nextRect, remainingRect) = sourceRect.rectsByDividing(250, fromEdge: .MinXEdge)
println("Remaining rect: \(remainingRect)")
