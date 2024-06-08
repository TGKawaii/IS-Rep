//1a)
method Triple1a(x: int, y: int) returns (z: int)
  requires x == y
  ensures z == 0
{
  z := x - y;
}

//b)
method Triple1b() returns (x: int)
  ensures x == 100
{
  x := 100;
}

//c)
method Triple1c(x: int) returns (x: int)
  requires 0 <= x < 100
  ensures 0 <= x <= 100
{
  x := x + 1;
}
//2)a)
method Triple2a(y: int) returns (x: int)
  requires true
  ensures y <= x
{
  x := 2 * y;
  assert y <= x; 
}
//b)
method Triple2b(x: int) returns (x: int)
  requires 0 <= x
  ensures 0 <= x
{
  x := x - 1;
  // assert 0 <= x; // This assertion will fail if x = 0.
}
//3)a)
method Triple3a(x: int) returns (x: int)
  requires 0 <= x < 100
  ensures 0 <= x < 200
{
  x := 2 * x;
}
//b)
method Triple3b(x: int, N: int) returns (x: int)
  requires 0 <= x < N
  ensures 0 < x <= N
{
  x := x + 1;
}
