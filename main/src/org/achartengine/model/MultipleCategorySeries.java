package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class MultipleCategorySeries
  implements Serializable
{
  private String a;
  private List<String> b = new ArrayList();
  private List<String[]> c = new ArrayList();
  private List<double[]> d = new ArrayList();

  public MultipleCategorySeries(String paramString)
  {
    this.a = paramString;
  }

  public void add(String paramString, String[] paramArrayOfString, double[] paramArrayOfDouble)
  {
    this.b.add(paramString);
    this.c.add(paramArrayOfString);
    this.d.add(paramArrayOfDouble);
  }

  public void add(String[] paramArrayOfString, double[] paramArrayOfDouble)
  {
    add(this.b.size(), paramArrayOfString, paramArrayOfDouble);
  }

  public void clear()
  {
    this.b.clear();
    this.c.clear();
    this.d.clear();
  }

  public int getCategoriesCount()
  {
    return this.b.size();
  }

  public String getCategory(int paramInt)
  {
    return (String)this.b.get(paramInt);
  }

  public int getItemCount(int paramInt)
  {
    return ((double[])this.d.get(paramInt)).length;
  }

  public String[] getTitles(int paramInt)
  {
    return (String[])this.c.get(paramInt);
  }

  public double[] getValues(int paramInt)
  {
    return (double[])this.d.get(paramInt);
  }

  public void remove(int paramInt)
  {
    this.b.remove(paramInt);
    this.c.remove(paramInt);
    this.d.remove(paramInt);
  }

  public XYSeries toXYSeries()
  {
    return new XYSeries(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.MultipleCategorySeries
 * JD-Core Version:    0.6.2
 */