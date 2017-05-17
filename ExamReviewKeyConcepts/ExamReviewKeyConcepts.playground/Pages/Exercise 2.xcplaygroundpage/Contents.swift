//: [Previous](@previous) / [Next](@next)
//: # Exercise 2
//: ## Your goal
//: Reproduce this image:
//:
//: ![Undertones](Undertones.png "Undertones")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.translate(byX: 15, byY: 350)


//making canvas
canvas.fillColor = Color(hue: 85, saturation: 5, brightness: 88, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 0, width: 500, height: 700)
//swirling text
for x in stride(from: 100, to: 0, by: -5){
canvas.textColor = Color(hue: 1, saturation: 0, brightness: 0, alpha: x)
canvas.drawText(message: "undertones", size: 70, x: 0, y: -30)
    canvas.rotate(by: Degrees(-5))

}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
