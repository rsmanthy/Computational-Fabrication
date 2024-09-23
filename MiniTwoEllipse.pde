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
void draw () {
   //Draw the ellipse, along with the miltiplyer to make it larger for each itteration
   for(int i = 0; i < 7; i++)
   {
     ellipse(300, 300, 100*i, 150);
     ellipse(300, 300, 150, 100*i);
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
