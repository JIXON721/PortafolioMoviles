int push(List<int> s, int top, int max, int value) {
  if (top >= max - 1) {
    print("OVERFLOW");
    return top;
  }
  s[++top] = value;
  return top;
}

int pop(List<int> s, int top) {
  if (top < 0) {
    print("UNDERFLOW");
    return -1;
  }
  int value = s[top];
  s[top] = 0;
  return value;
}

void main() {
  int max = 5, top = -1;
  var stack = List.filled(max, 0);

  for (int v in [15, 24, 38, 48, 55]) {
    top = push(stack, top, max, v);
  }

  if (pop(stack, top) != -1) top--;
  top = push(stack, top, max, 60);
  for (int i = 0; i <= top; i++) print(stack[i]);
}
