package org.achartengine.chart;

import android.graphics.RectF;

public class ClickableArea
{
  private RectF a;
  private double b;
  private double c;

  public ClickableArea(RectF paramRectF, double paramDouble1, double paramDouble2)
  {
    this.a = paramRectF;
    this.b = paramDouble1;
    this.c = paramDouble2;
  }

  public RectF getRect()
  {
    return this.a;
  }

  public double getX()
  {
    return this.b;
  }

  public double getY()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.ClickableArea
 * JD-Core Version:    0.6.2
 */