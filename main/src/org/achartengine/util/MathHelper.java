package org.achartengine.util;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class MathHelper
{
  public static final double NULL_VALUE = 1.7976931348623157E+308D;
  private static final NumberFormat a = NumberFormat.getNumberInstance();

  public static List<Double> getLabels(double paramDouble1, double paramDouble2, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramInt <= 0)
      return localArrayList;
    a.setMaximumFractionDigits(5);
    double[] arrayOfDouble;
    int j;
    if (Math.abs(paramDouble1 - paramDouble2) < 1.000000011686097E-07D)
    {
      arrayOfDouble = new double[] { paramDouble1, paramDouble1, 0.0D };
      int i = 1 + (int)((arrayOfDouble[1] - arrayOfDouble[0]) / arrayOfDouble[2]);
      j = 0;
      if (j >= i)
        return localArrayList;
    }
    else
    {
      if (paramDouble1 <= paramDouble2)
        break label337;
    }
    for (int k = 1; ; k = 0)
    {
      while (true)
      {
        double d4 = Math.abs(paramDouble2 - paramDouble1) / paramInt;
        int m = (int)Math.floor(Math.log10(d4));
        double d5 = d4 * Math.pow(10.0D, -m);
        if (d5 > 5.0D)
          d5 = 10.0D;
        double d6;
        double d7;
        double d8;
        while (true)
        {
          d6 = d5 * Math.pow(10.0D, m);
          d7 = d6 * Math.ceil(paramDouble2 / d6);
          d8 = d6 * Math.floor(paramDouble1 / d6);
          if (k == 0)
            break label252;
          arrayOfDouble = new double[3];
          arrayOfDouble[0] = d8;
          arrayOfDouble[1] = d7;
          arrayOfDouble[2] = (d6 * -1.0D);
          break;
          if (d5 > 2.0D)
            d5 = 5.0D;
          else if (d5 > 1.0D)
            d5 = 2.0D;
        }
        label252: arrayOfDouble = new double[] { d7, d8, d6 };
        break;
        double d1 = arrayOfDouble[0] + j * arrayOfDouble[2];
        try
        {
          double d2 = a.parse(a.format(d1)).doubleValue();
          d1 = d2;
          label313: localArrayList.add(Double.valueOf(d1));
          j++;
        }
        catch (ParseException localParseException)
        {
          break label313;
        }
      }
      label337: double d3 = paramDouble2;
      paramDouble2 = paramDouble1;
      paramDouble1 = d3;
    }
  }

  public static double[] minmax(List<Double> paramList)
  {
    if (paramList.size() == 0)
      return new double[2];
    double d1 = ((Double)paramList.get(0)).doubleValue();
    int i = paramList.size();
    double d2 = d1;
    double d3 = d1;
    for (int j = 1; ; j++)
    {
      if (j >= i)
        return new double[] { d3, d2 };
      double d4 = ((Double)paramList.get(j)).doubleValue();
      d3 = Math.min(d3, d4);
      d2 = Math.max(d2, d4);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.util.MathHelper
 * JD-Core Version:    0.6.2
 */