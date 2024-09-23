import processing.pdf.*;

// Make file name with the currrent date/time
String folder = "output";
String fileName = folder + "/" + "drawing-" + getDateString() + ".pdf";

void setup() {
  size(600,600,PDF,fileName); //Establishes file output type and name
  background(255);
  stroke(0);
  noLoop();
  noFill();
}

void draw() {
  translate(width/2, height/2); 

  for (int i = 1; i <= 7; i++) { // Adjust the loop count for the number of scales
    float scaleFactor = i * 0.1; // Adjust the scale factor for size increment

    float scaleWidth = width * scaleFactor; // Scale factor to enlarge the scale width for each itteraition
    float scaleHeight = height * scaleFactor;// Scale factor to enlarge the scale height for each itteraition

    //bezierVertex(x2, y2, x3, y3, x4, y4) - Via the processing documentation
    //A bezier curve is a curved defined by both control points and anchor points to create a unique curve shape
    //I used this sort of vertex to create the curve of the scale because it allowed me to edit the curviture
    //x2  (float)  the x-coordinate of the 1st control point
    //y2  (float)  the y-coordinate of the 1st control point
    //x3  (float)  the x-coordinate of the 2nd control point
    //y3  (float)  the y-coordinate of the 2nd control point
    //x4  (float)  the x-coordinate of the anchor point
    //y4  (float)  the y-coordinate of the anchor point
    
    beginShape();
    vertex(0, scaleHeight/2); //this represents the bottom of the scales that point down
    bezierVertex(-scaleWidth/2, scaleHeight/4, -scaleWidth * 3/4, -scaleHeight/4, -scaleWidth/2, -scaleHeight/2); 
    bezierVertex(-scaleWidth/4, -scaleHeight * 3/4, scaleWidth/4, -scaleHeight * 3/4, scaleWidth/2, -scaleHeight/2); 
    bezierVertex(scaleWidth * 3/4, -scaleHeight/4, scaleWidth/2, scaleHeight/4, 0, scaleHeight/2); 
    endShape();

    beginShape();
    vertex(0, -scaleHeight/2); //this represents the bottom of the scales that point up
    bezierVertex(-scaleWidth/2, -scaleHeight/4, -scaleWidth * 3/4, scaleHeight/4, -scaleWidth/2, scaleHeight/2); 
    bezierVertex(-scaleWidth/4, scaleHeight * 3/4, scaleWidth/4, scaleHeight * 3/4, scaleWidth/2, scaleHeight/2); 
    bezierVertex(scaleWidth * 3/4, scaleHeight/4, scaleWidth/2, -scaleHeight/4, 0, -scaleHeight/2); 
    endShape();
  }
  // Exit the window
  println("Saved to file: " + fileName);
  println("Finished saving.");
  exit();
}

// Generates a date string of the format year_month_day-hour_min_second for the PDF outputs
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
