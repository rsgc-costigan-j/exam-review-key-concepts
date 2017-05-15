//: [Previous](@previous) / [Next](@next)
//: # Sequence, part 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 Attempt to reproduce this image:
 
 ![Panda](panda.png "Panda")
 */
// Create the canvas
let canvas = Canvas(width: 300, height: 300)

// Draw panda main body
canvas.fillColor = Color.white
canvas.borderColor = Color.black
canvas.defaultBorderWidth = 2
canvas.drawEllipse(centreX: canvas.width / 2, centreY: canvas.height / 2, width: 100, height: 100)

//drawing head
canvas.drawEllipse(centreX: 150, centreY: 200, width: 75, height: 75)
canvas.drawEllipse(centreX: 140, centreY: 215, width: 15, height: 20)
canvas.drawEllipse(centreX: 160, centreY: 215, width: 15, height: 20)

//setting parameters for drawing dark circles
canvas.fillColor = Color.black
canvas.drawShapesWithFill = true

//DRAWING LEGS
canvas.drawEllipse(centreX: 115, centreY: 110, width: 25, height: 25)
canvas.drawEllipse(centreX: 185, centreY: 110, width: 25, height: 25)

//DRAWING ARMS
canvas.drawEllipse(centreX: 195, centreY: 175, width: 25, height: 25)
canvas.drawEllipse(centreX: 105, centreY: 175, width: 25, height: 25)

//DRAWING EARS
canvas.drawEllipse(centreX: 120, centreY: 230, width: 20, height: 20)
canvas.drawEllipse(centreX: 180, centreY: 230, width: 20, height: 20)

//DRAWING EYES
canvas.drawEllipse(centreX: 161, centreY: 210, width: 10, height: 10)
canvas.drawEllipse(centreX: 140, centreY: 210, width: 10, height: 10)

//DRAWING smile
canvas.drawEllipse(centreX: 150, centreY: 190, width: 50, height: 10)

canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 150, centreY: 192, width: 50, height: 10)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
