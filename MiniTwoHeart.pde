import processing.pdf.*;

// Make file name with the currrent date/time - Via class github example
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
  translate(width/2, height/2); //Ensures that drawing is centered

  for (int i = 1; i <= 7; i++) {
    float scaleFactor = i * 0.2; // Scale factor to enlarge the hearts for each itteraition

    beginShape(); //When using bezier vertex, a begin shape is used
    vertex(0, -60 * scaleFactor); // This represents the bottom tip of the hearts multiplied by the scale factor
    
    //bezierVertex(x2, y2, x3, y3, x4, y4) - Via the processing documentation
    //A bezier curve is a curved defined by both control points and anchor points to create a unique curve shape
    //I used this sort of vertex to create the curve of the heart because it allowed me to edit the curviture
    //x2  (float)  the x-coordinate of the 1st control point
    //y2  (float)  the y-coordinate of the 1st control point
    //x3  (float)  the x-coordinate of the 2nd control point
    //y3  (float)  the y-coordinate of the 2nd control point
    //x4  (float)  the x-coordinate of the anchor point
    //y4  (float)  the y-coordinate of the anchor point
    bezierVertex(-120 * scaleFactor, -120 * scaleFactor, -180 * scaleFactor, 0, 0, 60 * scaleFactor); // Vector for the left side of each heart
    bezierVertex(180 * scaleFactor, 0, 120 * scaleFactor, -120 * scaleFactor, 0, -60 * scaleFactor); // Vector for the right side of each heart
    endShape(CLOSE);
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
