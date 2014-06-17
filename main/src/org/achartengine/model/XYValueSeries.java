package org.achartengine.model;

import java.util.ArrayList;
import java.util.List;

public class XYValueSeries extends XYSeries
{
  private List<Double> a = new ArrayList();
  private double b = 1.7976931348623157E+308D;
  private double c = -1.797693134862316E+308D;

  public XYValueSeries(String paramString)
  {
    super(paramString);
  }

  private void a()
  {
    this.b = 1.7976931348623157E+308D;
    this.c = 1.7976931348623157E+308D;
    int i = getItemCount();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      a(getValue(j));
    }
  }

  private void a(double paramDouble)
  {
    this.b = Math.min(this.b, paramDouble);
    this.c = Math.max(this.c, paramDouble);
  }

  public void add(double paramDouble1, double paramDouble2)
  {
    try
    {
      add(paramDouble1, paramDouble2, 0.0D);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void add(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    try
    {
      super.add(paramDouble1, paramDouble2);
      this.a.add(Double.valueOf(paramDouble3));
      a(paramDouble3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void clear()
  {
    try
    {
      super.clear();
      this.a.clear();
      a();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public double getMaxValue()
  {
    return this.c;
  }

  public double getMinValue()
  {
    return this.b;
  }

  public double getValue(int paramInt)
  {
    try
    {
      double d = ((Double)this.a.get(paramInt)).doubleValue();
      return d;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void remove(int paramInt)
  {
    try
    {
      super.remove(paramInt);
      double d = ((Double)this.a.remove(paramInt)).doubleValue();
      if ((d == this.b) || (d == this.c))
        a();
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.XYValueSeries
 * JD-Core Version:    0.6.2
 */