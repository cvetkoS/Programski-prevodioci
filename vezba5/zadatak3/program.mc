int abs(int i) {
  int res;
  if(i < 0)
    res = 0 - i;
  else 
    res = i;
  return res;
}

int main() 
{

  int k;
  do 
  {
     k=1;
  }
  while (k==0);

  return abs(-5);
}
