package org.achartengine.renderer;

import android.graphics.Typeface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class DefaultRenderer
  implements Serializable
{
  public static final int BACKGROUND_COLOR = -16777216;
  public static final int NO_COLOR = 0;
  public static final int TEXT_COLOR = -3355444;
  private static final Typeface c = Typeface.create(Typeface.SERIF, 0);
  private float A = 1.0F;
  private boolean B = true;
  private boolean C = true;
  private boolean D = false;
  private float E = 1.5F;
  private boolean F = false;
  private float G = this.A;
  private boolean H = false;
  private int I = 15;
  private boolean J;
  private boolean K;
  private float L = 0.0F;
  private String a = "";
  private float b = 15.0F;
  private String d = c.toString();
  private int e = 0;
  private Typeface f;
  private int g;
  private boolean h;
  private boolean i = true;
  private int j = -3355444;
  private int k = -3355444;
  private boolean l = true;
  private boolean m = true;
  private int n = -3355444;
  private float o = 10.0F;
  private boolean p = true;
  private float q = 12.0F;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private List<SimpleSeriesRenderer> w = new ArrayList();
  private boolean x = true;
  private int y = 0;
  private int[] z = { 20, 30, 10, 20 };

  public void addSeriesRenderer(int paramInt, SimpleSeriesRenderer paramSimpleSeriesRenderer)
  {
    this.w.add(paramInt, paramSimpleSeriesRenderer);
  }

  public void addSeriesRenderer(SimpleSeriesRenderer paramSimpleSeriesRenderer)
  {
    this.w.add(paramSimpleSeriesRenderer);
  }

  public int getAxesColor()
  {
    if (this.k != -3355444)
      return this.k;
    return this.j;
  }

  public int getBackgroundColor()
  {
    return this.g;
  }

  public String getChartTitle()
  {
    return this.a;
  }

  public float getChartTitleTextSize()
  {
    return this.b;
  }

  public int getLabelsColor()
  {
    return this.n;
  }

  public float getLabelsTextSize()
  {
    return this.o;
  }

  public int getLegendHeight()
  {
    return this.y;
  }

  public float getLegendTextSize()
  {
    return this.q;
  }

  public int[] getMargins()
  {
    return this.z;
  }

  public float getOriginalScale()
  {
    return this.G;
  }

  public float getScale()
  {
    return this.A;
  }

  public int getSelectableBuffer()
  {
    return this.I;
  }

  public SimpleSeriesRenderer getSeriesRendererAt(int paramInt)
  {
    return (SimpleSeriesRenderer)this.w.get(paramInt);
  }

  public int getSeriesRendererCount()
  {
    return this.w.size();
  }

  public SimpleSeriesRenderer[] getSeriesRenderers()
  {
    return (SimpleSeriesRenderer[])this.w.toArray(new SimpleSeriesRenderer[0]);
  }

  public float getStartAngle()
  {
    return this.L;
  }

  public Typeface getTextTypeface()
  {
    return this.f;
  }

  public String getTextTypefaceName()
  {
    return this.d;
  }

  public int getTextTypefaceStyle()
  {
    return this.e;
  }

  public int getXAxisColor()
  {
    return this.k;
  }

  public int getYAxisColor()
  {
    return this.j;
  }

  public float getZoomRate()
  {
    return this.E;
  }

  public boolean isAntialiasing()
  {
    return this.x;
  }

  public boolean isApplyBackgroundColor()
  {
    return this.h;
  }

  public boolean isClickEnabled()
  {
    return this.H;
  }

  public boolean isDisplayValues()
  {
    return this.J;
  }

  public boolean isExternalZoomEnabled()
  {
    return this.F;
  }

  public boolean isFitLegend()
  {
    return this.r;
  }

  public boolean isInScroll()
  {
    return this.K;
  }

  public boolean isPanEnabled()
  {
    return this.B;
  }

  public boolean isShowAxes()
  {
    return this.i;
  }

  public boolean isShowCustomTextGridX()
  {
    return this.u;
  }

  public boolean isShowCustomTextGridY()
  {
    return this.v;
  }

  public boolean isShowGridX()
  {
    return this.s;
  }

  public boolean isShowGridY()
  {
    return this.t;
  }

  public boolean isShowLabels()
  {
    return this.l;
  }

  public boolean isShowLegend()
  {
    return this.p;
  }

  public boolean isShowTickMarks()
  {
    return this.m;
  }

  public boolean isZoomButtonsVisible()
  {
    return this.D;
  }

  public boolean isZoomEnabled()
  {
    return this.C;
  }

  public void removeAllRenderers()
  {
    this.w.clear();
  }

  public void removeSeriesRenderer(SimpleSeriesRenderer paramSimpleSeriesRenderer)
  {
    this.w.remove(paramSimpleSeriesRenderer);
  }

  public void setAntialiasing(boolean paramBoolean)
  {
    this.x = paramBoolean;
  }

  public void setApplyBackgroundColor(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setAxesColor(int paramInt)
  {
    setXAxisColor(paramInt);
    setYAxisColor(paramInt);
  }

  public void setBackgroundColor(int paramInt)
  {
    this.g = paramInt;
  }

  public void setChartTitle(String paramString)
  {
    this.a = paramString;
  }

  public void setChartTitleTextSize(float paramFloat)
  {
    this.b = paramFloat;
  }

  public void setClickEnabled(boolean paramBoolean)
  {
    this.H = paramBoolean;
  }

  public void setDisplayValues(boolean paramBoolean)
  {
    this.J = paramBoolean;
  }

  public void setExternalZoomEnabled(boolean paramBoolean)
  {
    this.F = paramBoolean;
  }

  public void setFitLegend(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }

  public void setInScroll(boolean paramBoolean)
  {
    this.K = paramBoolean;
  }

  public void setLabelsColor(int paramInt)
  {
    this.n = paramInt;
  }

  public void setLabelsTextSize(float paramFloat)
  {
    this.o = paramFloat;
  }

  public void setLegendHeight(int paramInt)
  {
    this.y = paramInt;
  }

  public void setLegendTextSize(float paramFloat)
  {
    this.q = paramFloat;
  }

  public void setMargins(int[] paramArrayOfInt)
  {
    this.z = paramArrayOfInt;
  }

  public void setPanEnabled(boolean paramBoolean)
  {
    this.B = paramBoolean;
  }

  public void setScale(float paramFloat)
  {
    this.A = paramFloat;
  }

  public void setSelectableBuffer(int paramInt)
  {
    this.I = paramInt;
  }

  public void setShowAxes(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public void setShowCustomTextGrid(boolean paramBoolean)
  {
    setShowCustomTextGridX(paramBoolean);
    setShowCustomTextGridY(paramBoolean);
  }

  public void setShowCustomTextGridX(boolean paramBoolean)
  {
    this.u = paramBoolean;
  }

  public void setShowCustomTextGridY(boolean paramBoolean)
  {
    this.v = paramBoolean;
  }

  public void setShowGrid(boolean paramBoolean)
  {
    setShowGridX(paramBoolean);
    setShowGridY(paramBoolean);
  }

  public void setShowGridX(boolean paramBoolean)
  {
    this.s = paramBoolean;
  }

  public void setShowGridY(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }

  public void setShowLabels(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public void setShowLegend(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  public void setShowTickMarks(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public void setStartAngle(float paramFloat)
  {
    this.L = paramFloat;
  }

  public void setTextTypeface(Typeface paramTypeface)
  {
    this.f = paramTypeface;
  }

  public void setTextTypeface(String paramString, int paramInt)
  {
    this.d = paramString;
    this.e = paramInt;
  }

  public void setXAxisColor(int paramInt)
  {
    this.k = paramInt;
  }

  public void setYAxisColor(int paramInt)
  {
    this.j = paramInt;
  }

  public void setZoomButtonsVisible(boolean paramBoolean)
  {
    this.D = paramBoolean;
  }

  public void setZoomEnabled(boolean paramBoolean)
  {
    this.C = paramBoolean;
  }

  public void setZoomRate(float paramFloat)
  {
    this.E = paramFloat;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.DefaultRenderer
 * JD-Core Version:    0.6.2
 */