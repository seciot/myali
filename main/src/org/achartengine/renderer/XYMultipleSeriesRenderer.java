package org.achartengine.renderer;

import android.graphics.Color;
import android.graphics.Paint.Align;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class XYMultipleSeriesRenderer extends DefaultRenderer
{
  private Paint.Align A = Paint.Align.CENTER;
  private Paint.Align[] B;
  private float C = 0.0F;
  private float D = 0.0F;
  private float E = 2.0F;
  private Paint.Align[] F;
  private int G = -3355444;
  private int[] H = { -3355444 };
  private boolean I = true;
  private NumberFormat J;
  private float K = -1.0F;
  private double L = 0.0D;
  private double M = 0.0D;
  private String a = "";
  private String[] b;
  private float c = 12.0F;
  private double[] d;
  private double[] e;
  private double[] f;
  private double[] g;
  private int h = 5;
  private int i = 5;
  private XYMultipleSeriesRenderer.Orientation j = XYMultipleSeriesRenderer.Orientation.HORIZONTAL;
  private Map<Double, String> k = new HashMap();
  private Map<Integer, Map<Double, String>> l = new LinkedHashMap();
  private boolean m = true;
  private boolean n = true;
  private boolean o = true;
  private boolean p = true;
  private double q = 0.0D;
  private int r = 0;
  private double[] s;
  private double[] t;
  private float u;
  private float v;
  private Map<Integer, double[]> w = new LinkedHashMap();
  private float x = 3.0F;
  private int[] y;
  private int z;

  public XYMultipleSeriesRenderer()
  {
    this(1);
  }

  public XYMultipleSeriesRenderer(int paramInt)
  {
    this.z = paramInt;
    initAxesRange(paramInt);
  }

  public void addTextLabel(double paramDouble, String paramString)
  {
    addXTextLabel(paramDouble, paramString);
  }

  public void addXTextLabel(double paramDouble, String paramString)
  {
    try
    {
      this.k.put(Double.valueOf(paramDouble), paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void addYTextLabel(double paramDouble, String paramString)
  {
    addYTextLabel(paramDouble, paramString, 0);
  }

  public void addYTextLabel(double paramDouble, String paramString, int paramInt)
  {
    try
    {
      ((Map)this.l.get(Integer.valueOf(paramInt))).put(Double.valueOf(paramDouble), paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void clearTextLabels()
  {
    clearXTextLabels();
  }

  public void clearXTextLabels()
  {
    try
    {
      this.k.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void clearYTextLabels()
  {
    clearYTextLabels(0);
  }

  public void clearYTextLabels(int paramInt)
  {
    try
    {
      ((Map)this.l.get(Integer.valueOf(paramInt))).clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public float getAxisTitleTextSize()
  {
    return this.c;
  }

  public double getBarSpacing()
  {
    return this.q;
  }

  public float getBarWidth()
  {
    return this.K;
  }

  public double getBarsSpacing()
  {
    return getBarSpacing();
  }

  public int getGridColor(int paramInt)
  {
    return this.y[paramInt];
  }

  public double[] getInitialRange()
  {
    return getInitialRange(0);
  }

  public double[] getInitialRange(int paramInt)
  {
    return (double[])this.w.get(Integer.valueOf(paramInt));
  }

  public NumberFormat getLabelFormat()
  {
    return this.J;
  }

  public int getMarginsColor()
  {
    return this.r;
  }

  public XYMultipleSeriesRenderer.Orientation getOrientation()
  {
    return this.j;
  }

  public double[] getPanLimits()
  {
    return this.s;
  }

  public float getPointSize()
  {
    return this.x;
  }

  public int getScalesCount()
  {
    return this.z;
  }

  public double getXAxisMax()
  {
    return getXAxisMax(0);
  }

  public double getXAxisMax(int paramInt)
  {
    return this.e[paramInt];
  }

  public double getXAxisMin()
  {
    return getXAxisMin(0);
  }

  public double getXAxisMin(int paramInt)
  {
    return this.d[paramInt];
  }

  public int getXLabels()
  {
    return this.h;
  }

  public Paint.Align getXLabelsAlign()
  {
    return this.A;
  }

  public float getXLabelsAngle()
  {
    return this.u;
  }

  public int getXLabelsColor()
  {
    return this.G;
  }

  public float getXLabelsPadding()
  {
    return this.C;
  }

  public String getXTextLabel(Double paramDouble)
  {
    try
    {
      String str = (String)this.k.get(paramDouble);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Double[] getXTextLabelLocations()
  {
    try
    {
      Double[] arrayOfDouble = (Double[])this.k.keySet().toArray(new Double[0]);
      return arrayOfDouble;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getXTitle()
  {
    return this.a;
  }

  public Paint.Align getYAxisAlign(int paramInt)
  {
    return this.F[paramInt];
  }

  public double getYAxisMax()
  {
    return getYAxisMax(0);
  }

  public double getYAxisMax(int paramInt)
  {
    return this.g[paramInt];
  }

  public double getYAxisMin()
  {
    return getYAxisMin(0);
  }

  public double getYAxisMin(int paramInt)
  {
    return this.f[paramInt];
  }

  public int getYLabels()
  {
    return this.i;
  }

  public Paint.Align getYLabelsAlign(int paramInt)
  {
    return this.B[paramInt];
  }

  public float getYLabelsAngle()
  {
    return this.v;
  }

  public int getYLabelsColor(int paramInt)
  {
    return this.H[paramInt];
  }

  public float getYLabelsPadding()
  {
    return this.D;
  }

  public float getYLabelsVerticalPadding()
  {
    return this.E;
  }

  public String getYTextLabel(Double paramDouble)
  {
    return getYTextLabel(paramDouble, 0);
  }

  public String getYTextLabel(Double paramDouble, int paramInt)
  {
    try
    {
      String str = (String)((Map)this.l.get(Integer.valueOf(paramInt))).get(paramDouble);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Double[] getYTextLabelLocations()
  {
    return getYTextLabelLocations(0);
  }

  public Double[] getYTextLabelLocations(int paramInt)
  {
    try
    {
      Double[] arrayOfDouble = (Double[])((Map)this.l.get(Integer.valueOf(paramInt))).keySet().toArray(new Double[0]);
      return arrayOfDouble;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getYTitle()
  {
    return getYTitle(0);
  }

  public String getYTitle(int paramInt)
  {
    return this.b[paramInt];
  }

  public double getZoomInLimitX()
  {
    return this.L;
  }

  public double getZoomInLimitY()
  {
    return this.M;
  }

  public double[] getZoomLimits()
  {
    return this.t;
  }

  public void initAxesRange(int paramInt)
  {
    this.b = new String[paramInt];
    this.B = new Paint.Align[paramInt];
    this.F = new Paint.Align[paramInt];
    this.H = new int[paramInt];
    this.d = new double[paramInt];
    this.e = new double[paramInt];
    this.f = new double[paramInt];
    this.g = new double[paramInt];
    this.y = new int[paramInt];
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= paramInt)
        return;
      this.H[i1] = -3355444;
      this.y[i1] = Color.argb(75, 200, 200, 200);
      initAxesRangeForScale(i1);
    }
  }

  public void initAxesRangeForScale(int paramInt)
  {
    this.d[paramInt] = 1.7976931348623157E+308D;
    this.e[paramInt] = -1.797693134862316E+308D;
    this.f[paramInt] = 1.7976931348623157E+308D;
    this.g[paramInt] = -1.797693134862316E+308D;
    double[] arrayOfDouble = new double[4];
    arrayOfDouble[0] = this.d[paramInt];
    arrayOfDouble[1] = this.e[paramInt];
    arrayOfDouble[2] = this.f[paramInt];
    arrayOfDouble[3] = this.g[paramInt];
    this.w.put(Integer.valueOf(paramInt), arrayOfDouble);
    this.b[paramInt] = "";
    this.l.put(Integer.valueOf(paramInt), new HashMap());
    this.B[paramInt] = Paint.Align.CENTER;
    this.F[paramInt] = Paint.Align.LEFT;
  }

  public boolean isInitialRangeSet()
  {
    return isInitialRangeSet(0);
  }

  public boolean isInitialRangeSet(int paramInt)
  {
    return this.w.get(Integer.valueOf(paramInt)) != null;
  }

  public boolean isMaxXSet()
  {
    return isMaxXSet(0);
  }

  public boolean isMaxXSet(int paramInt)
  {
    return this.e[paramInt] != -1.797693134862316E+308D;
  }

  public boolean isMaxYSet()
  {
    return isMaxYSet(0);
  }

  public boolean isMaxYSet(int paramInt)
  {
    return this.g[paramInt] != -1.797693134862316E+308D;
  }

  public boolean isMinXSet()
  {
    return isMinXSet(0);
  }

  public boolean isMinXSet(int paramInt)
  {
    return this.d[paramInt] != 1.7976931348623157E+308D;
  }

  public boolean isMinYSet()
  {
    return isMinYSet(0);
  }

  public boolean isMinYSet(int paramInt)
  {
    return this.f[paramInt] != 1.7976931348623157E+308D;
  }

  public boolean isPanEnabled()
  {
    return (isPanXEnabled()) || (isPanYEnabled());
  }

  public boolean isPanXEnabled()
  {
    return this.m;
  }

  public boolean isPanYEnabled()
  {
    return this.n;
  }

  public boolean isXRoundedLabels()
  {
    return this.I;
  }

  public boolean isZoomEnabled()
  {
    return (isZoomXEnabled()) || (isZoomYEnabled());
  }

  public boolean isZoomXEnabled()
  {
    return this.o;
  }

  public boolean isZoomYEnabled()
  {
    return this.p;
  }

  public void removeXTextLabel(double paramDouble)
  {
    try
    {
      this.k.remove(Double.valueOf(paramDouble));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void removeYTextLabel(double paramDouble)
  {
    removeYTextLabel(paramDouble, 0);
  }

  public void removeYTextLabel(double paramDouble, int paramInt)
  {
    try
    {
      ((Map)this.l.get(Integer.valueOf(paramInt))).remove(Double.valueOf(paramDouble));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setAxisTitleTextSize(float paramFloat)
  {
    this.c = paramFloat;
  }

  public void setBarSpacing(double paramDouble)
  {
    this.q = paramDouble;
  }

  public void setBarWidth(float paramFloat)
  {
    this.K = paramFloat;
  }

  public void setGridColor(int paramInt)
  {
    setGridColor(paramInt, 0);
  }

  public void setGridColor(int paramInt1, int paramInt2)
  {
    this.y[paramInt2] = paramInt1;
  }

  public void setInitialRange(double[] paramArrayOfDouble)
  {
    setInitialRange(paramArrayOfDouble, 0);
  }

  public void setInitialRange(double[] paramArrayOfDouble, int paramInt)
  {
    this.w.put(Integer.valueOf(paramInt), paramArrayOfDouble);
  }

  public void setLabelFormat(NumberFormat paramNumberFormat)
  {
    this.J = paramNumberFormat;
  }

  public void setMarginsColor(int paramInt)
  {
    this.r = paramInt;
  }

  public void setOrientation(XYMultipleSeriesRenderer.Orientation paramOrientation)
  {
    this.j = paramOrientation;
  }

  public void setPanEnabled(boolean paramBoolean)
  {
    setPanEnabled(paramBoolean, paramBoolean);
  }

  public void setPanEnabled(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.m = paramBoolean1;
    this.n = paramBoolean2;
  }

  public void setPanLimits(double[] paramArrayOfDouble)
  {
    this.s = paramArrayOfDouble;
  }

  public void setPointSize(float paramFloat)
  {
    this.x = paramFloat;
  }

  public void setRange(double[] paramArrayOfDouble)
  {
    setRange(paramArrayOfDouble, 0);
  }

  public void setRange(double[] paramArrayOfDouble, int paramInt)
  {
    setXAxisMin(paramArrayOfDouble[0], paramInt);
    setXAxisMax(paramArrayOfDouble[1], paramInt);
    setYAxisMin(paramArrayOfDouble[2], paramInt);
    setYAxisMax(paramArrayOfDouble[3], paramInt);
  }

  public void setXAxisMax(double paramDouble)
  {
    setXAxisMax(paramDouble, 0);
  }

  public void setXAxisMax(double paramDouble, int paramInt)
  {
    if (!isMaxXSet(paramInt))
      ((double[])this.w.get(Integer.valueOf(paramInt)))[1] = paramDouble;
    this.e[paramInt] = paramDouble;
  }

  public void setXAxisMin(double paramDouble)
  {
    setXAxisMin(paramDouble, 0);
  }

  public void setXAxisMin(double paramDouble, int paramInt)
  {
    if (!isMinXSet(paramInt))
      ((double[])this.w.get(Integer.valueOf(paramInt)))[0] = paramDouble;
    this.d[paramInt] = paramDouble;
  }

  public void setXLabels(int paramInt)
  {
    this.h = paramInt;
  }

  public void setXLabelsAlign(Paint.Align paramAlign)
  {
    this.A = paramAlign;
  }

  public void setXLabelsAngle(float paramFloat)
  {
    this.u = paramFloat;
  }

  public void setXLabelsColor(int paramInt)
  {
    this.G = paramInt;
  }

  public void setXLabelsPadding(float paramFloat)
  {
    this.C = paramFloat;
  }

  public void setXRoundedLabels(boolean paramBoolean)
  {
    this.I = paramBoolean;
  }

  public void setXTitle(String paramString)
  {
    this.a = paramString;
  }

  public void setYAxisAlign(Paint.Align paramAlign, int paramInt)
  {
    this.F[paramInt] = paramAlign;
  }

  public void setYAxisMax(double paramDouble)
  {
    setYAxisMax(paramDouble, 0);
  }

  public void setYAxisMax(double paramDouble, int paramInt)
  {
    if (!isMaxYSet(paramInt))
      ((double[])this.w.get(Integer.valueOf(paramInt)))[3] = paramDouble;
    this.g[paramInt] = paramDouble;
  }

  public void setYAxisMin(double paramDouble)
  {
    setYAxisMin(paramDouble, 0);
  }

  public void setYAxisMin(double paramDouble, int paramInt)
  {
    if (!isMinYSet(paramInt))
      ((double[])this.w.get(Integer.valueOf(paramInt)))[2] = paramDouble;
    this.f[paramInt] = paramDouble;
  }

  public void setYLabels(int paramInt)
  {
    this.i = paramInt;
  }

  public void setYLabelsAlign(Paint.Align paramAlign)
  {
    setYLabelsAlign(paramAlign, 0);
  }

  public void setYLabelsAlign(Paint.Align paramAlign, int paramInt)
  {
    this.B[paramInt] = paramAlign;
  }

  public void setYLabelsAngle(float paramFloat)
  {
    this.v = paramFloat;
  }

  public void setYLabelsColor(int paramInt1, int paramInt2)
  {
    this.H[paramInt1] = paramInt2;
  }

  public void setYLabelsPadding(float paramFloat)
  {
    this.D = paramFloat;
  }

  public void setYLabelsVerticalPadding(float paramFloat)
  {
    this.E = paramFloat;
  }

  public void setYTitle(String paramString)
  {
    setYTitle(paramString, 0);
  }

  public void setYTitle(String paramString, int paramInt)
  {
    this.b[paramInt] = paramString;
  }

  public void setZoomEnabled(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.o = paramBoolean1;
    this.p = paramBoolean2;
  }

  public void setZoomInLimitX(double paramDouble)
  {
    this.L = paramDouble;
  }

  public void setZoomInLimitY(double paramDouble)
  {
    this.M = paramDouble;
  }

  public void setZoomLimits(double[] paramArrayOfDouble)
  {
    this.t = paramArrayOfDouble;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.XYMultipleSeriesRenderer
 * JD-Core Version:    0.6.2
 */