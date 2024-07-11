void main() {
  var circleSlot = new Slot<Circle>();
  circleSlot.insert(new Circle());
  // Produces an error
  // circleSlot.insert(new Square());
}

class Circle {}

class Square {}

class Slot<T> {
  insert(T shape) {}
}
