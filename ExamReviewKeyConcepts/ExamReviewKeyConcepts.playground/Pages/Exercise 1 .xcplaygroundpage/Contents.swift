//: [Previous](@previous) / [Next](@next)
//: # Exercise 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Blur](Blur.png "Blur")
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

//background
canvas.fillColor = Color(hue: 190, saturation: 100, brightness: 80, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

//text
canvas.textColor = Color(hue: 170, saturation: 100, brightness: 5, alpha: 100)
canvas.drawText(message: "blur", size: 200, x: 10, y: 305)

//loop to draw streak
canvas.textColor = Color(hue: 170, saturation: 100, brightness: 5, alpha: 15)
for x in stride(from: 325, to: -50, by: -6){
    canvas.drawText(message: "blur", size: 200, x: 10, y: x)
}

//upper text
canvas.textColor = Color(hue: 170, saturation: 100, brightness: 5, alpha: 100)
canvas.drawText(message: "saturday", size: 10, x: 22, y: 570)
canvas.drawText(message: "october 16 1993 /8 pm", size: 10, x: 22, y: 560)
canvas.drawText(message: "mandela hall", size: 10, x: 145, y: 570)
canvas.drawText(message: "at university of sussex", size: 10, x: 145, y: 560)
canvas.drawText(message: "special guest", size: 10, x: 268, y: 570)
canvas.drawText(message: "special guest", size: 10, x: 268, y: 560)


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
