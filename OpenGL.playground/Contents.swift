//: Playground - noun: a place where people can play

import UIKit
import GLKit
import OpenGLES
import XCPlayground


let frame = CGRect(x: 0, y: 0, width: 400, height: 300)
class TriangleView: GLKView { // ERROR: Use of undeclared type 'GLKView'
    override func drawRect(dirtyRect: CGRect) {
        glClearColor(1.0, 1.0, 1.1, 1.0)
    }
}

let instance = TriangleView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

XCPShowView("Triangle", view: instance)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.blueColor()

view
