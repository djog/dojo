import java.util.Random;
Random rand = new Random(1);
int n = 23;
int[] nectar = new int[n];
int runs = 10000;
int same = 0;


for (int FlyingCatsWhoSayMoo = 0; FlyingCatsWhoSayMoo < runs; FlyingCatsWhoSayMoo += 1)
{
for (int i = 0; i < n; i++)
{
  nectar[i] = rand.nextInt(365);
}
int count = 0;
for (int i = 0; i < n - 1; i++)
{
  for (int j = (i+1); j < n; j++)  
    if (nectar[i] == nectar[j])
    {
      count++;
    }
}
if (count > 0){
 same++;
}
}
float prob = (float) same / (float) runs * 100;
print("Probability = ", prob, "%");
