package com.amap.api.location.core;

import com.aps.o;

public class CoordinateConvert
{
  public static GeoPoint fromGpsToAMap(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = o.a(paramDouble2, paramDouble1);
    return new GeoPoint((int)(1000000.0D * arrayOfDouble[1]), (int)(1000000.0D * arrayOfDouble[0]));
  }

  public static double[] fromSeveralGpsToAMap(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    int i = arrayOfString.length;
    double[] arrayOfDouble1 = new double[i];
    for (int j = 0; j < i / 2; j++)
    {
      double[] arrayOfDouble2 = o.a(Double.parseDouble(arrayOfString[(j * 2)]), Double.parseDouble(arrayOfString[(1 + j * 2)]));
      arrayOfDouble1[(j * 2)] = arrayOfDouble2[0];
      arrayOfDouble1[(1 + j * 2)] = arrayOfDouble2[1];
    }
    return arrayOfDouble1;
  }

  public static double[] fromSeveralGpsToAMap(double[] paramArrayOfDouble)
  {
    int i = paramArrayOfDouble.length;
    double[] arrayOfDouble1 = new double[i];
    for (int j = 0; j < i / 2; j++)
    {
      double[] arrayOfDouble2 = o.a(paramArrayOfDouble[(j * 2)], paramArrayOfDouble[(1 + j * 2)]);
      arrayOfDouble1[(j * 2)] = arrayOfDouble2[0];
      arrayOfDouble1[(1 + j * 2)] = arrayOfDouble2[1];
    }
    return arrayOfDouble1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.CoordinateConvert
 * JD-Core Version:    0.6.2
 */