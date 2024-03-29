float getAngle(PVector p1, PVector p2) {
  PVector a = PVector.sub(p2,p1);
  float aa = abs(degrees(atan2(a.x,a.y)) - 180);
  return aa;
}

String setOnOff(boolean _b) {
  String s;
  if (_b) {
    s = "ON";
  } else {
    s = "OFF";
  }
  return s;
}

void rotateXYZ(float _x, float _y, float _z) {
  rotateX(radians(_x));
  rotateY(radians(_y));
  rotateZ(radians(_z));
}

float rounder(float _val, float _places) {
  _val *= pow(10,_places);
  _val = round(_val);
  _val /= pow(10,_places);
  return _val;
}

//Tween movement.  start, end, ease (more = slower).
float tween(float v1, float v2, float e) {
    v1 += (v2-v1)/e;
    return v1;
}

PVector tween3D(PVector v1, PVector v2, PVector e) {
    v1.x += (v2.x-v1.x)/e.x;
    v1.y += (v2.y-v1.y)/e.y;
    v1.z += (v2.z-v1.z)/e.z;
    return v1;
}
  
float shake(float v1, float s) {
    v1 += random(s) - random(s);
    return v1;
}

float boundary(float v1, float vMin, float vMax) {
    if (v1<vMin) {
      v1 = vMin;
    } else if (v1>vMax) {
      v1=vMax;
    } 
    return v1;
}

float gravity(float v1, float v2, float v3) { //y pos, floor num, gravity num
    if (v1<v2) v1 += v3;
    if (v1>v2) v1 = v2;
    return v1;
}

boolean hitDetect(PVector p1, PVector p2, float dist) {
  if (p1.dist(p2) < dist) {
    return true;
  } else {
    return false;
  }
}

//-------------------------------
float angle(float x1, float y1, float x2, float y2) {
  return tan(abs(x1-x2)/abs(y1-y2));
}
//-------------------------------


//Easy randomizer.  range,threshold
boolean rollDice(float v1, float v2) {
  float rollDiceNum;
  rollDiceNum = random(v1);
  if (rollDiceNum<v2) {
    return true;
  } else {
    return false;
  }
}

/*
PVector pointAlongLine(PVector p1, PVector p2, float ratio) {
  float x = p1.x + (p2.x - p1.x) * ratio;
  float y = p1.y + (p2.y - p1.y) * ratio;
  float z = p1.z + (p2.z - p1.z) * ratio;
  return new PVector(x,y,z);
}

PVector[] pointsAlongLine(PVector p1, PVector p2, int steps) {
  PVector[] p = new PVector[steps];
  for (int i=0; i<steps; i++) {
    p[i] = pointAlongLine(p1, p2, float(i)/float(steps));
  }
  return p;
}
*/

float getDist(PVector p1, PVector p2) {
  return dist(p1.x, p1.y, p1.z, p2.x, p2.y, p2.z);
}

float[] normalizeRgb(color c) {
  float[] returns = { red(c)/255.0, green(c)/255.0, blue(c)/255.0 };
  return returns;
}

float[] normalizeRgba(color c) {
  float[] returns = { red(c)/255.0, green(c)/255.0, blue(c)/255.0, alpha(c)/255.0 };
  return returns;
}

//---   END   ---
