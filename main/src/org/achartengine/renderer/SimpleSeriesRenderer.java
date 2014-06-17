package org.achartengine.renderer;

import java.io.Serializable;
import java.text.NumberFormat;

public class SimpleSeriesRenderer
  implements Serializable
{
  private int a = -16776961;
  private BasicStroke b;
  private boolean c = false;
  private double d;
  private int e;
  private double f;
  private int g;
  private boolean h = true;
  private boolean i;
  private boolean j = true;
  private NumberFormat k;

  public NumberFormat getChartValuesFormat()
  {
    return this.k;
  }

  public int getColor()
  {
    return this.a;
  }

  public int getGradientStartColor()
  {
    return this.e;
  }

  public double getGradientStartValue()
  {
    return this.d;
  }

  public int getGradientStopColor()
  {
    return this.g;
  }

  public double getGradientStopValue()
  {
    return this.f;
  }

  public BasicStroke getStroke()
  {
    return this.b;
  }

  public boolean isDisplayBoundingPoints()
  {
    return this.j;
  }

  public boolean isGradientEnabled()
  {
    return this.c;
  }

  public boolean isHighlighted()
  {
    return this.i;
  }

  public boolean isShowLegendItem()
  {
    return this.h;
  }

  public void setChartValuesFormat(NumberFormat paramNumberFormat)
  {
    this.k = paramNumberFormat;
  }

  public void setColor(int paramInt)
  {
    this.a = paramInt;
  }

  public void setDisplayBoundingPoints(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public void setGradientEnabled(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public void setGradientStart(double paramDouble, int paramInt)
  {
    this.d = paramDouble;
    this.e = paramInt;
  }

  public void setGradientStop(double paramDouble, int paramInt)
  {
    this.f = paramDouble;
    this.g = paramInt;
  }

  public void setHighlighted(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public void setShowLegendItem(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setStroke(BasicStroke paramBasicStroke)
  {
    this.b = paramBasicStroke;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.SimpleSeriesRenderer
 * JD-Core Version:    0.6.2
 */