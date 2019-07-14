import java.util.Random;
import java.math.BigDecimal;



Random rand = new Random(1);
int n = 100;
int[] nectar = new int[n];
int runs = 100000;
int same = 0;


for (int times = 0; times < runs; times += 1)
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

BigDecimal sameBD = BigDecimal.valueOf(same);
BigDecimal runsBD = BigDecimal.valueOf(runs);

BigDecimal resultBD = sameBD.divide(runsBD);
resultBD = resultBD.multiply(BigDecimal.valueOf(100));

//while(true)
//{
println("Probability = ", resultBD.toString(), "%");
//}
