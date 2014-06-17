package org.achartengine.chart;

import java.io.Serializable;

public class PieSegment
  implements Serializable
{
  private float a;
  private float b;
  private int c;
  private float d;

  public PieSegment(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.a = paramFloat2;
    this.b = (paramFloat3 + paramFloat2);
    this.c = paramInt;
    this.d = paramFloat1;
  }

  protected int getDataIndex()
  {
    return this.c;
  }

  protected float getEndAngle()
  {
    return this.b;
  }

  protected float getStartAngle()
  {
    return this.a;
  }

  protected float getValue()
  {
    return this.d;
  }

  public boolean isInSegment(double paramDouble)
  {
    if ((paramDouble >= this.a) && (paramDouble <= this.b))
      return true;
    double d1 = paramDouble % 360.0D;
    double d2 = this.a;
    for (double d3 = this.b; ; d3 -= 360.0D)
    {
      if (d3 <= 360.0D)
      {
        if ((d1 >= d2) && (d1 <= d3))
          break;
        return false;
      }
      d2 -= 360.0D;
    }
  }

  public String toString()
  {
    return "mDataIndex=" + this.c + ",mValue=" + this.d + ",mStartAngle=" + this.a + ",mEndAngle=" + this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.PieSegment
 * JD-Core Version:    0.6.2
 */