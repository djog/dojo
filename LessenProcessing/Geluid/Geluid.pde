import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;

void setup()
{
  size(512, 200, P3D);
  
  minim = new Minim(this);
  
  // use the getLineOut method of the Minim object to get an AudioOutput object
  out = minim.getLineOut();
  
  // set the tempo of the sequencer
  // this makes the first argument of playNote 
  // specify the start time in quarter notes
  // and the duration becomes relative to the length of a quarter note
  // by default the tempo is 60 BPM (beats per minute).
  // at 60 BPM both start time and duration can be interpreted as seconds.
  // to retrieve the current tempo, use getTempo().
  out.setTempo( 60 );
  
  // pause the sequencer so our note play back will be rock solid
  // if you don't do this, then tiny bits of error can occur since 
  // the sequencer is running in parallel with you note queueing.
  
}

void draw()
{
  background(0);
  stroke(255);
  
  // draw the waveforms
  
 
  out.playNote( 0.0, 0.01, 200);
  out.playNote( 0.0, 0.02, 100);
  out.playNote( 0.0, 0.04, 50);
  
  out.pauseNotes(); 
  out.resumeNotes();
 
  out.playNote( 0.2, 0.1, 100);
  out.playNote( 0.2, 0.1, 100);
  out.playNote( 0.2, 0.1, 100);
  
  out.pauseNotes(); 
  out.resumeNotes();
  
  out.playNote( 0.4, 0.01, 200);
  out.playNote( 0.4, 0.02, 100);
  out.playNote( 0.4, 0.04, 50);
  
  out.pauseNotes(); 
  out.resumeNotes();
  
  out.playNote( 0.6, 0.1, 121);
  out.playNote( 0.6, 0.1, 121);
  out.playNote( 0.6, 0.1, 121);
  
  out.pauseNotes(); 
  out.resumeNotes();
  
  out.playNote( 0.8, 0.01, 200);
  out.playNote( 0.8, 0.02, 100);
  out.playNote( 0.8, 0.04, 50);
  
  out.pauseNotes(); 
  out.resumeNotes();
 
  out.playNote( 1.0, 0.1, 70);
  out.playNote( 1.0, 0.1, 70);
  out.playNote( 1.0, 0.1, 70);
  
  out.pauseNotes(); 
  out.resumeNotes();
  
  out.playNote( 1.2, 0.01, 200);
  out.playNote( 1.2, 0.02, 100);
  out.playNote( 1.2, 0.04, 50);
  
  out.pauseNotes(); 
  out.resumeNotes();
  
  out.playNote( 1.4, 0.1, 83);
  out.playNote( 1.4, 0.1, 83);
  out.playNote( 1.4, 0.1, 83);
  
  out.pauseNotes(); 
  out.resumeNotes();
  
  while (millis() % 1601 < 1600)
  {
  }
}
