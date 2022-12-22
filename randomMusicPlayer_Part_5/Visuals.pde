void songBar(){
 rectMode(CENTER);
 fill(75);
 stroke(255, 0, 0);
 strokeWeight(2);
 rect(rwidth/2, rheight/2, barLength, barHeight);
 noStroke();
 fill(0, 255, 0);
 rectMode(CORNER);
 songPos = map(song.position(),0, song.length(), 0, barLength);
 rect(rwidth/2 - barLength/2, rheight/2 - barHeight/3, songPos,barHeight * .7);
}
void waveForm(){
 rectMode(CENTER);
  stroke(255);
  for(int i = 0; i < song.bufferSize() - 1; i++){
    float w1 = map(i, 0, song.bufferSize() - 1, 0, rwidth);
    line(w1, wave1H + song.left.get(i) * rheight/6, w1 + 1, wave1H + song.left.get(i + 1) * rheight/6);
    line(w1, wave2H + song.right.get(i) * rheight/6, w1 + 1, wave2H + song.right.get(i + 1) * rheight/6);
  }
}
