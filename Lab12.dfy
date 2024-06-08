//
method Caller()
{
  var result := Triple(18);
  assert result < 100;
}

method Triple(x: int) returns (r: int)
  ensures r == 3 * x
{
  var y := 2 * x;
  r := x + y;
}

//method Triple(x: int) returns (r: int)
  //requires x % 2 == 0
  //ensures r == 3 * x
//{
  //var y := x / 2;
  //r := 6 * y;
//}

//stronger Precondition 1: x % 4 == 0
method Triple(x: int) returns (r: int)
  requires x % 4 == 0
  ensures r == 3 * x
{
  var y := x / 2;
  r := 6 * y;
}
//Stronger Precondition 2: x % 8 == 0
method Triple(x: int) returns (r: int)
  requires x % 8 == 0
  ensures r == 3 * x
{
  var y := x / 2;
  r := 6 * y;
}
