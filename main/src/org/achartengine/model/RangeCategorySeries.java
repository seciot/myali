package org.achartengine.model;

import java.util.ArrayList;
import java.util.List;

public class RangeCategorySeries extends CategorySeries
{
  private List<Double> a = new ArrayList();

  public RangeCategorySeries(String paramString)
  {
    super(paramString);
  }

  public void add(double paramDouble1, double paramDouble2)
  {
    try
    {
      super.add(paramDouble1);
      this.a.add(Double.valueOf(paramDouble2));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void add(String paramString, double paramDouble1, double paramDouble2)
  {
    try
    {
      super.add(paramString, paramDouble1);
      this.a.add(Double.valueOf(paramDouble2));
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
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public double getMaximumValue(int paramInt)
  {
    return ((Double)this.a.get(paramInt)).doubleValue();
  }

  public double getMinimumValue(int paramInt)
  {
    return getValue(paramInt);
  }

  public void remove(int paramInt)
  {
    try
    {
      super.remove(paramInt);
      this.a.remove(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public XYSeries toXYSeries()
  {
    XYSeries localXYSeries = new XYSeries(getTitle());
    int i = getItemCount();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localXYSeries;
      localXYSeries.add(j + 1, getMinimumValue(j));
      localXYSeries.add(1.000001D + j, getMaximumValue(j));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.RangeCategorySeries
 * JD-Core Version:    0.6.2
 */