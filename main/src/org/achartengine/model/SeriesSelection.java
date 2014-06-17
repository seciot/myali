package org.achartengine.model;

public class SeriesSelection
{
  private int a;
  private int b;
  private double c;
  private double d;

  public SeriesSelection(int paramInt1, int paramInt2, double paramDouble1, double paramDouble2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramDouble1;
    this.d = paramDouble2;
  }

  public int getPointIndex()
  {
    return this.b;
  }

  public int getSeriesIndex()
  {
    return this.a;
  }

  public double getValue()
  {
    return this.d;
  }

  public double getXValue()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.SeriesSelection
 * JD-Core Version:    0.6.2
 */