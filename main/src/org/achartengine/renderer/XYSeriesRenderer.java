package org.achartengine.renderer;

import android.graphics.Paint.Align;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.chart.PointStyle;

public class XYSeriesRenderer extends SimpleSeriesRenderer
{
  private boolean a = false;
  private List<XYSeriesRenderer.FillOutsideLine> b = new ArrayList();
  private PointStyle c = PointStyle.POINT;
  private float d = 1.0F;
  private float e = 1.0F;
  private boolean f;
  private int g = 100;
  private float h = 10.0F;
  private Paint.Align i = Paint.Align.CENTER;
  private float j = 5.0F;
  private float k = 10.0F;
  private Paint.Align l = Paint.Align.CENTER;
  private int m = -3355444;

  public void addFillOutsideLine(XYSeriesRenderer.FillOutsideLine paramFillOutsideLine)
  {
    this.b.add(paramFillOutsideLine);
  }

  public int getAnnotationsColor()
  {
    return this.m;
  }

  public Paint.Align getAnnotationsTextAlign()
  {
    return this.l;
  }

  public float getAnnotationsTextSize()
  {
    return this.k;
  }

  public float getChartValuesSpacing()
  {
    return this.j;
  }

  public Paint.Align getChartValuesTextAlign()
  {
    return this.i;
  }

  public float getChartValuesTextSize()
  {
    return this.h;
  }

  public int getDisplayChartValuesDistance()
  {
    return this.g;
  }

  public XYSeriesRenderer.FillOutsideLine[] getFillOutsideLine()
  {
    return (XYSeriesRenderer.FillOutsideLine[])this.b.toArray(new XYSeriesRenderer.FillOutsideLine[0]);
  }

  public float getLineWidth()
  {
    return this.e;
  }

  public float getPointStrokeWidth()
  {
    return this.d;
  }

  public PointStyle getPointStyle()
  {
    return this.c;
  }

  public boolean isDisplayChartValues()
  {
    return this.f;
  }

  @Deprecated
  public boolean isFillBelowLine()
  {
    return this.b.size() > 0;
  }

  public boolean isFillPoints()
  {
    return this.a;
  }

  public void setAnnotationsColor(int paramInt)
  {
    this.m = paramInt;
  }

  public void setAnnotationsTextAlign(Paint.Align paramAlign)
  {
    this.l = paramAlign;
  }

  public void setAnnotationsTextSize(float paramFloat)
  {
    this.k = paramFloat;
  }

  public void setChartValuesSpacing(float paramFloat)
  {
    this.j = paramFloat;
  }

  public void setChartValuesTextAlign(Paint.Align paramAlign)
  {
    this.i = paramAlign;
  }

  public void setChartValuesTextSize(float paramFloat)
  {
    this.h = paramFloat;
  }

  public void setDisplayChartValues(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setDisplayChartValuesDistance(int paramInt)
  {
    this.g = paramInt;
  }

  @Deprecated
  public void setFillBelowLine(boolean paramBoolean)
  {
    this.b.clear();
    if (paramBoolean)
    {
      this.b.add(new XYSeriesRenderer.FillOutsideLine(XYSeriesRenderer.FillOutsideLine.Type.BOUNDS_ALL));
      return;
    }
    this.b.add(new XYSeriesRenderer.FillOutsideLine(XYSeriesRenderer.FillOutsideLine.Type.NONE));
  }

  @Deprecated
  public void setFillBelowLineColor(int paramInt)
  {
    if (this.b.size() > 0)
      ((XYSeriesRenderer.FillOutsideLine)this.b.get(0)).setColor(paramInt);
  }

  public void setFillPoints(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public void setLineWidth(float paramFloat)
  {
    this.e = paramFloat;
  }

  public void setPointStrokeWidth(float paramFloat)
  {
    this.d = paramFloat;
  }

  public void setPointStyle(PointStyle paramPointStyle)
  {
    this.c = paramPointStyle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.XYSeriesRenderer
 * JD-Core Version:    0.6.2
 */