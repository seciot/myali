package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CategorySeries
  implements Serializable
{
  private String a;
  private List<String> b = new ArrayList();
  private List<Double> c = new ArrayList();

  public CategorySeries(String paramString)
  {
    this.a = paramString;
  }

  public void add(double paramDouble)
  {
    try
    {
      add(this.b.size(), paramDouble);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void add(String paramString, double paramDouble)
  {
    try
    {
      this.b.add(paramString);
      this.c.add(Double.valueOf(paramDouble));
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
      this.b.clear();
      this.c.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getCategory(int paramInt)
  {
    try
    {
      String str = (String)this.b.get(paramInt);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getItemCount()
  {
    try
    {
      int i = this.b.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getTitle()
  {
    return this.a;
  }

  public double getValue(int paramInt)
  {
    try
    {
      double d = ((Double)this.c.get(paramInt)).doubleValue();
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
      this.b.remove(paramInt);
      this.c.remove(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void set(int paramInt, String paramString, double paramDouble)
  {
    try
    {
      this.b.set(paramInt, paramString);
      this.c.set(paramInt, Double.valueOf(paramDouble));
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
    XYSeries localXYSeries = new XYSeries(this.a);
    Iterator localIterator = this.c.iterator();
    int j;
    for (int i = 0; ; i = j)
    {
      if (!localIterator.hasNext())
        return localXYSeries;
      double d = ((Double)localIterator.next()).doubleValue();
      j = i + 1;
      localXYSeries.add(j, d);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.CategorySeries
 * JD-Core Version:    0.6.2
 */