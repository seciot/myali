package org.achartengine.renderer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DialRenderer extends DefaultRenderer
{
  private double a = 330.0D;
  private double b = 30.0D;
  private double c = 1.7976931348623157E+308D;
  private double d = -1.797693134862316E+308D;
  private double e = 1.7976931348623157E+308D;
  private double f = 1.7976931348623157E+308D;
  private List<DialRenderer.Type> g = new ArrayList();

  public double getAngleMax()
  {
    return this.b;
  }

  public double getAngleMin()
  {
    return this.a;
  }

  public double getMajorTicksSpacing()
  {
    return this.f;
  }

  public double getMaxValue()
  {
    return this.d;
  }

  public double getMinValue()
  {
    return this.c;
  }

  public double getMinorTicksSpacing()
  {
    return this.e;
  }

  public DialRenderer.Type getVisualTypeForIndex(int paramInt)
  {
    if (paramInt < this.g.size())
      return (DialRenderer.Type)this.g.get(paramInt);
    return DialRenderer.Type.NEEDLE;
  }

  public boolean isMaxValueSet()
  {
    return this.d != -1.797693134862316E+308D;
  }

  public boolean isMinValueSet()
  {
    return this.c != 1.7976931348623157E+308D;
  }

  public void setAngleMax(double paramDouble)
  {
    this.b = paramDouble;
  }

  public void setAngleMin(double paramDouble)
  {
    this.a = paramDouble;
  }

  public void setMajorTicksSpacing(double paramDouble)
  {
    this.f = paramDouble;
  }

  public void setMaxValue(double paramDouble)
  {
    this.d = paramDouble;
  }

  public void setMinValue(double paramDouble)
  {
    this.c = paramDouble;
  }

  public void setMinorTicksSpacing(double paramDouble)
  {
    this.e = paramDouble;
  }

  public void setVisualTypes(DialRenderer.Type[] paramArrayOfType)
  {
    this.g.clear();
    this.g.addAll(Arrays.asList(paramArrayOfType));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.DialRenderer
 * JD-Core Version:    0.6.2
 */