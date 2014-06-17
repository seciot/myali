package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import org.achartengine.model.CategorySeries;
import org.achartengine.renderer.DialRenderer;
import org.achartengine.renderer.DialRenderer.Type;
import org.achartengine.renderer.SimpleSeriesRenderer;

public class DialChart extends RoundChart
{
  private DialRenderer a;

  public DialChart(CategorySeries paramCategorySeries, DialRenderer paramDialRenderer)
  {
    super(paramCategorySeries, paramDialRenderer);
    this.a = paramDialRenderer;
  }

  private static double a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5)
  {
    double d1 = paramDouble3 - paramDouble2;
    double d2 = paramDouble5 - paramDouble4;
    return Math.toRadians(paramDouble2 + d1 * (paramDouble1 - paramDouble4) / d2);
  }

  private static void a(Canvas paramCanvas, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, int paramInt1, int paramInt2, double paramDouble5, double paramDouble6, double paramDouble7, Paint paramPaint, boolean paramBoolean)
  {
    for (double d1 = paramDouble1; ; d1 += paramDouble7)
    {
      if (d1 > paramDouble2)
        return;
      double d2 = a(d1, paramDouble3, paramDouble4, paramDouble1, paramDouble2);
      double d3 = Math.sin(d2);
      double d4 = Math.cos(d2);
      int i = Math.round(paramInt1 + (float)(paramDouble6 * d3));
      int j = Math.round(paramInt2 + (float)(paramDouble6 * d4));
      int k = Math.round(paramInt1 + (float)(d3 * paramDouble5));
      int m = Math.round(paramInt2 + (float)(d4 * paramDouble5));
      paramCanvas.drawLine(i, j, k, m, paramPaint);
      if (paramBoolean)
      {
        paramPaint.setTextAlign(Paint.Align.LEFT);
        if (i <= k)
          paramPaint.setTextAlign(Paint.Align.RIGHT);
        String str = d1;
        if (Math.round(d1) == ()d1)
          str = ()d1;
        paramCanvas.drawText(str, i, j, paramPaint);
      }
    }
  }

  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.a.isAntialiasing());
    paramPaint.setStyle(Paint.Style.FILL);
    paramPaint.setTextSize(this.a.getLabelsTextSize());
    int i = getLegendSize(this.a, paramInt4 / 5, 0.0F);
    int j = paramInt1 + paramInt3;
    int k = this.mDataset.getItemCount();
    String[] arrayOfString = new String[k];
    int m = 0;
    if (m >= k)
      if (!this.a.isFitLegend())
        break label982;
    label666: label982: for (int n = drawLegend(paramCanvas, this.a, arrayOfString, paramInt1, j, paramInt2, paramInt3, paramInt4, i, paramPaint, true); ; n = i)
    {
      int i1 = paramInt2 + paramInt4 - n;
      drawBackground(this.a, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
      int i2 = (int)(0.35D * Math.min(Math.abs(j - paramInt1), Math.abs(i1 - paramInt2)) * this.a.getScale());
      if (this.mCenterX == 2147483647)
        this.mCenterX = ((paramInt1 + j) / 2);
      if (this.mCenterY == 2147483647)
        this.mCenterY = ((i1 + paramInt2) / 2);
      float f1 = 0.9F * i2;
      float f2 = 1.1F * i2;
      double d1 = this.a.getMinValue();
      double d2 = this.a.getMaxValue();
      double d3 = this.a.getAngleMin();
      double d4 = this.a.getAngleMax();
      int i3;
      int i4;
      double d5;
      double d6;
      if ((!this.a.isMinValueSet()) || (!this.a.isMaxValueSet()))
      {
        i3 = this.a.getSeriesRendererCount();
        i4 = 0;
        d5 = d1;
        d6 = d2;
      }
      int i6;
      while (true)
      {
        if (i4 >= i3)
        {
          d2 = d6;
          d1 = d5;
          if (d1 == d2)
          {
            d1 *= 0.5D;
            d2 *= 1.5D;
          }
          paramPaint.setColor(this.a.getLabelsColor());
          double d8 = this.a.getMinorTicksSpacing();
          double d9 = this.a.getMajorTicksSpacing();
          if (d8 == 1.7976931348623157E+308D)
            d8 = (d2 - d1) / 30.0D;
          if (d9 == 1.7976931348623157E+308D)
            d9 = (d2 - d1) / 10.0D;
          a(paramCanvas, d1, d2, d3, d4, this.mCenterX, this.mCenterY, f2, i2, d8, paramPaint, false);
          a(paramCanvas, d1, d2, d3, d4, this.mCenterX, this.mCenterY, f2, f1, d9, paramPaint, true);
          int i5 = this.a.getSeriesRendererCount();
          i6 = 0;
          if (i6 < i5)
            break label609;
          drawLegend(paramCanvas, this.a, arrayOfString, paramInt1, j, paramInt2, paramInt3, paramInt4, n, paramPaint, false);
          drawTitle(paramCanvas, paramInt1, paramInt2, paramInt3, paramPaint);
          return;
          arrayOfString[m] = this.mDataset.getCategory(m);
          m++;
          break;
        }
        double d7 = this.mDataset.getValue(i4);
        if (!this.a.isMinValueSet())
          d5 = Math.min(d5, d7);
        if (!this.a.isMaxValueSet())
          d6 = Math.max(d6, d7);
        i4++;
      }
      label609: double d10 = a(this.mDataset.getValue(i6), d3, d4, d1, d2);
      paramPaint.setColor(this.a.getSeriesRendererAt(i6).getColor());
      int i7;
      int i8;
      int i9;
      int i10;
      int i11;
      int i14;
      int i15;
      float[] arrayOfFloat;
      if (this.a.getVisualTypeForIndex(i6) == DialRenderer.Type.ARROW)
      {
        i7 = 1;
        i8 = this.mCenterX;
        i9 = this.mCenterY;
        double d11 = f1;
        double d12 = Math.toRadians(90.0D);
        i10 = (int)(10.0D * Math.sin(d10 - d12));
        i11 = (int)(10.0D * Math.cos(d10 - d12));
        int i12 = (int)(d11 * Math.sin(d10));
        int i13 = (int)(d11 * Math.cos(d10));
        i14 = i12 + i8;
        i15 = i13 + i9;
        if (i7 == 0)
          break label919;
        int i16 = i8 + (int)(0.85D * d11 * Math.sin(d10));
        int i17 = i9 + (int)(d11 * 0.85D * Math.cos(d10));
        arrayOfFloat = new float[6];
        arrayOfFloat[0] = (i16 - i10);
        arrayOfFloat[1] = (i17 - i11);
        arrayOfFloat[2] = i14;
        arrayOfFloat[3] = i15;
        arrayOfFloat[4] = (i16 + i10);
        arrayOfFloat[5] = (i17 + i11);
        float f3 = paramPaint.getStrokeWidth();
        paramPaint.setStrokeWidth(5.0F);
        paramCanvas.drawLine(i8, i9, i14, i15, paramPaint);
        paramPaint.setStrokeWidth(f3);
      }
      while (true)
      {
        drawPath(paramCanvas, arrayOfFloat, paramPaint, true);
        i6++;
        break;
        i7 = 0;
        break label666;
        arrayOfFloat = new float[6];
        arrayOfFloat[0] = (i8 - i10);
        arrayOfFloat[1] = (i9 - i11);
        arrayOfFloat[2] = i14;
        arrayOfFloat[3] = i15;
        arrayOfFloat[4] = (i8 + i10);
        arrayOfFloat[5] = (i9 + i11);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.DialChart
 * JD-Core Version:    0.6.2
 */