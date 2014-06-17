package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation;

public abstract class AbstractChart
  implements Serializable
{
  private static float[] a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2)
  {
    float f1 = 0.0F;
    float f9;
    float f3;
    float f2;
    if (paramFloat2 > paramInt1)
    {
      f9 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
      f3 = (paramInt1 - paramFloat2 + f9 * paramFloat1) / f9;
      f2 = paramInt1;
      if (f3 < 0.0F)
      {
        f2 = paramFloat2 - f9 * paramFloat1;
        f3 = 0.0F;
      }
    }
    while (true)
    {
      float f6;
      if (paramFloat4 > paramInt1)
      {
        f6 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
        paramFloat3 = (paramInt1 - paramFloat2 + f6 * paramFloat1) / f6;
        paramFloat4 = paramInt1;
        if (paramFloat3 < 0.0F)
          paramFloat4 = paramFloat2 - f6 * paramFloat1;
      }
      float f8;
      while (true)
      {
        return new float[] { f3, f2, f1, paramFloat4 };
        if (f3 <= paramInt2)
          break;
        f3 = paramInt2;
        f2 = paramFloat2 + f9 * f3 - f9 * paramFloat1;
        break;
        if (paramFloat2 < 0.0F)
        {
          float f7 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
          f8 = (-paramFloat2 + f7 * paramFloat1) / f7;
          if (f8 < 0.0F)
          {
            f2 = paramFloat2 - f7 * paramFloat1;
            f3 = 0.0F;
            break;
          }
          if (f8 <= paramInt2)
            break label369;
          f3 = paramInt2;
          f2 = paramFloat2 + f7 * f3 - f7 * paramFloat1;
          break;
        }
        f2 = paramFloat2;
        f3 = paramFloat1;
        break;
        if (paramFloat3 > paramInt2)
        {
          f1 = paramInt2;
          paramFloat4 = paramFloat2 + f6 * f1 - f6 * paramFloat1;
          continue;
          if (paramFloat4 < 0.0F)
          {
            float f4 = (paramFloat4 - paramFloat2) / (paramFloat3 - paramFloat1);
            float f5 = (-paramFloat2 + f4 * paramFloat1) / f4;
            if (f5 < 0.0F)
            {
              paramFloat4 = paramFloat2 - f4 * paramFloat1;
              f1 = 0.0F;
              continue;
            }
            if (f5 > paramInt2)
            {
              f1 = paramInt2;
              paramFloat4 = paramFloat2 + f4 * f1 - f4 * paramFloat1;
              continue;
            }
            f1 = f5;
            paramFloat4 = 0.0F;
          }
        }
        else
        {
          f1 = paramFloat3;
        }
      }
      label369: f3 = f8;
      f2 = 0.0F;
    }
  }

  public abstract void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint);

  protected void drawBackground(DefaultRenderer paramDefaultRenderer, Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint, boolean paramBoolean, int paramInt5)
  {
    if ((paramDefaultRenderer.isApplyBackgroundColor()) || (paramBoolean))
    {
      if (!paramBoolean)
        break label55;
      paramPaint.setColor(paramInt5);
    }
    while (true)
    {
      paramPaint.setStyle(Paint.Style.FILL);
      paramCanvas.drawRect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4, paramPaint);
      return;
      label55: paramPaint.setColor(paramDefaultRenderer.getBackgroundColor());
    }
  }

  protected void drawLabel(Canvas paramCanvas, String paramString, DefaultRenderer paramDefaultRenderer, List<RectF> paramList, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i;
    int j;
    int k;
    float f1;
    float f3;
    float f4;
    float f5;
    int n;
    int i1;
    String str1;
    if ((paramDefaultRenderer.isShowLabels()) || (paramBoolean2))
    {
      paramPaint.setColor(paramInt5);
      double d1 = Math.toRadians(90.0F - (paramFloat3 + paramFloat4 / 2.0F));
      double d2 = Math.sin(d1);
      double d3 = Math.cos(d1);
      i = Math.round(paramInt1 + (float)(d2 * paramFloat1));
      j = Math.round(paramInt2 + (float)(d3 * paramFloat1));
      k = Math.round(paramInt1 + (float)(d2 * paramFloat2));
      int m = Math.round(paramInt2 + (float)(d3 * paramFloat2));
      f1 = paramDefaultRenderer.getLabelsTextSize();
      float f2 = Math.max(f1 / 2.0F, 10.0F);
      paramPaint.setTextAlign(Paint.Align.LEFT);
      if (i > k)
      {
        f2 = -f2;
        paramPaint.setTextAlign(Paint.Align.RIGHT);
      }
      f3 = f2;
      f4 = f3 + k;
      f5 = m;
      float f6 = paramInt4 - f4;
      if (i > k)
        f6 = f4 - paramInt3;
      n = paramString.length();
      i1 = 0;
      str1 = paramString;
      if ((paramPaint.measureText(str1) > f6) && (i1 < n))
        break label368;
      if (i1 != n)
        break label547;
    }
    label515: label525: label547: for (String str2 = "..."; ; str2 = str1)
    {
      float f7 = paramPaint.measureText(str2);
      int i2 = 0;
      float f8 = f5;
      label321: label368: int i4;
      int i6;
      float f9;
      while (true)
      {
        if ((i2 != 0) || (!paramBoolean1))
        {
          if (!paramBoolean1)
            break label525;
          int i3 = (int)(f8 - f1 / 2.0F);
          paramCanvas.drawLine(i, j, k, i3, paramPaint);
          paramCanvas.drawLine(k, i3, f3 + k, i3, paramPaint);
          paramCanvas.drawText(str2, f4, f8, paramPaint);
          if (paramBoolean1)
            paramList.add(new RectF(f4, f8, f4 + f7, f8 + f1));
          return;
          i1++;
          str1 = paramString.substring(0, n - i1) + "...";
          break;
        }
        i4 = 0;
        int i5 = paramList.size();
        i6 = 0;
        f9 = f8;
        label423: if ((i6 < i5) && (i4 == 0))
          break label450;
        if (i4 == 0)
          break label515;
        f8 = f9;
        i2 = 0;
      }
      label450: RectF localRectF = (RectF)paramList.get(i6);
      float f10;
      if (localRectF.intersects(f4, f9, f4 + f7, f9 + f1))
        f10 = Math.max(f9, localRectF.bottom);
      for (int i7 = 1; ; i7 = i4)
      {
        i6++;
        i4 = i7;
        f9 = f10;
        break label423;
        i2 = 1;
        f8 = f9;
        break;
        paramPaint.setTextAlign(Paint.Align.CENTER);
        break label321;
        f10 = f9;
      }
    }
  }

  protected int drawLegend(Canvas paramCanvas, DefaultRenderer paramDefaultRenderer, String[] paramArrayOfString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Paint paramPaint, boolean paramBoolean)
  {
    float f1 = 32.0F;
    float f2;
    float f3;
    int j;
    if (paramDefaultRenderer.isShowLegend())
    {
      f2 = paramInt1;
      f3 = 32.0F + (paramInt3 + paramInt5 - paramInt6);
      paramPaint.setTextAlign(Paint.Align.LEFT);
      paramPaint.setTextSize(paramDefaultRenderer.getLegendTextSize());
      int i = Math.min(paramArrayOfString.length, paramDefaultRenderer.getSeriesRendererCount());
      j = 0;
      if (j < i);
    }
    else
    {
      return Math.round(f1 + paramDefaultRenderer.getLegendTextSize());
    }
    SimpleSeriesRenderer localSimpleSeriesRenderer = paramDefaultRenderer.getSeriesRendererAt(j);
    float f4 = getLegendShapeWidth(j);
    label129: float[] arrayOfFloat;
    float f6;
    int m;
    label159: float f5;
    if (localSimpleSeriesRenderer.isShowLegendItem())
    {
      String str = paramArrayOfString[j];
      if (paramArrayOfString.length == paramDefaultRenderer.getSeriesRendererCount())
      {
        paramPaint.setColor(localSimpleSeriesRenderer.getColor());
        arrayOfFloat = new float[str.length()];
        paramPaint.getTextWidths(str, arrayOfFloat);
        f6 = 0.0F;
        int k = arrayOfFloat.length;
        m = 0;
        if (m < k)
          break label393;
        float f7 = f6 + (10.0F + f4);
        float f8 = f2 + f7;
        if ((j <= 0) || (!getExceed(f8, paramDefaultRenderer, paramInt2, paramInt4)))
          break label409;
        f2 = paramInt1;
        f3 += paramDefaultRenderer.getLegendTextSize();
        float f10 = f1 + paramDefaultRenderer.getLegendTextSize();
        f8 = f2 + f7;
        f5 = f10;
        label236: if (getExceed(f8, paramDefaultRenderer, paramInt2, paramInt4))
        {
          float f9 = paramInt2 - f2 - f4 - 10.0F;
          if (isVertical(paramDefaultRenderer))
            f9 = paramInt4 - f2 - f4 - 10.0F;
          str = str.substring(0, paramPaint.breakText(str, true, f9, arrayOfFloat)) + "...";
        }
        if (!paramBoolean)
        {
          drawLegendShape(paramCanvas, localSimpleSeriesRenderer, f2, f3, j, paramPaint);
          drawString(paramCanvas, str, 5.0F + (f2 + f4), f3 + 5.0F, paramPaint);
        }
        f2 += f7;
      }
    }
    while (true)
    {
      j++;
      f1 = f5;
      break;
      paramPaint.setColor(-3355444);
      break label129;
      label393: f6 += arrayOfFloat[m];
      m++;
      break label159;
      label409: f5 = f1;
      break label236;
      f5 = f1;
    }
  }

  public abstract void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint);

  protected void drawPath(Canvas paramCanvas, List<Float> paramList, Paint paramPaint, boolean paramBoolean)
  {
    Path localPath = new Path();
    int i = paramCanvas.getHeight();
    int j = paramCanvas.getWidth();
    if (paramList.size() < 4)
      return;
    float[] arrayOfFloat1 = a(((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue(), ((Float)paramList.get(2)).floatValue(), ((Float)paramList.get(3)).floatValue(), i, j);
    localPath.moveTo(arrayOfFloat1[0], arrayOfFloat1[1]);
    localPath.lineTo(arrayOfFloat1[2], arrayOfFloat1[3]);
    int k = paramList.size();
    for (int m = 4; ; m += 2)
    {
      if (m >= k)
      {
        if (paramBoolean)
          localPath.lineTo(((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue());
        paramCanvas.drawPath(localPath, paramPaint);
        return;
      }
      if (((((Float)paramList.get(m - 1)).floatValue() >= 0.0F) || (((Float)paramList.get(m + 1)).floatValue() >= 0.0F)) && ((((Float)paramList.get(m - 1)).floatValue() <= i) || (((Float)paramList.get(m + 1)).floatValue() <= i)))
      {
        float[] arrayOfFloat2 = a(((Float)paramList.get(m - 2)).floatValue(), ((Float)paramList.get(m - 1)).floatValue(), ((Float)paramList.get(m)).floatValue(), ((Float)paramList.get(m + 1)).floatValue(), i, j);
        if (!paramBoolean)
          localPath.moveTo(arrayOfFloat2[0], arrayOfFloat2[1]);
        localPath.lineTo(arrayOfFloat2[2], arrayOfFloat2[3]);
      }
    }
  }

  protected void drawPath(Canvas paramCanvas, float[] paramArrayOfFloat, Paint paramPaint, boolean paramBoolean)
  {
    Path localPath = new Path();
    int i = paramCanvas.getHeight();
    int j = paramCanvas.getWidth();
    if (paramArrayOfFloat.length < 4)
      return;
    float[] arrayOfFloat1 = a(paramArrayOfFloat[0], paramArrayOfFloat[1], paramArrayOfFloat[2], paramArrayOfFloat[3], i, j);
    localPath.moveTo(arrayOfFloat1[0], arrayOfFloat1[1]);
    localPath.lineTo(arrayOfFloat1[2], arrayOfFloat1[3]);
    int k = paramArrayOfFloat.length;
    for (int m = 4; ; m += 2)
    {
      if (m >= k)
      {
        if (paramBoolean)
          localPath.lineTo(paramArrayOfFloat[0], paramArrayOfFloat[1]);
        paramCanvas.drawPath(localPath, paramPaint);
        return;
      }
      if (((paramArrayOfFloat[(m - 1)] >= 0.0F) || (paramArrayOfFloat[(m + 1)] >= 0.0F)) && ((paramArrayOfFloat[(m - 1)] <= i) || (paramArrayOfFloat[(m + 1)] <= i)))
      {
        float[] arrayOfFloat2 = a(paramArrayOfFloat[(m - 2)], paramArrayOfFloat[(m - 1)], paramArrayOfFloat[m], paramArrayOfFloat[(m + 1)], i, j);
        if (!paramBoolean)
          localPath.moveTo(arrayOfFloat2[0], arrayOfFloat2[1]);
        localPath.lineTo(arrayOfFloat2[2], arrayOfFloat2[3]);
      }
    }
  }

  protected void drawString(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, Paint paramPaint)
  {
    String[] arrayOfString;
    Rect localRect;
    int i;
    int j;
    if (paramString != null)
    {
      arrayOfString = paramString.split("\n");
      localRect = new Rect();
      i = 0;
      j = 0;
    }
    while (true)
    {
      if (i >= arrayOfString.length)
        return;
      paramCanvas.drawText(arrayOfString[i], paramFloat1, paramFloat2 + j, paramPaint);
      paramPaint.getTextBounds(arrayOfString[i], 0, arrayOfString[i].length(), localRect);
      j = 5 + (j + localRect.height());
      i++;
    }
  }

  protected boolean getExceed(float paramFloat, DefaultRenderer paramDefaultRenderer, int paramInt1, int paramInt2)
  {
    boolean bool;
    if (paramFloat > paramInt1)
      bool = true;
    while (isVertical(paramDefaultRenderer))
      if (paramFloat > paramInt2)
      {
        return true;
        bool = false;
      }
      else
      {
        return false;
      }
    return bool;
  }

  protected String getLabel(NumberFormat paramNumberFormat, double paramDouble)
  {
    if (paramNumberFormat != null)
      return paramNumberFormat.format(paramDouble);
    if (paramDouble == Math.round(paramDouble))
      return Math.round(paramDouble);
    return paramDouble;
  }

  public abstract int getLegendShapeWidth(int paramInt);

  protected int getLegendSize(DefaultRenderer paramDefaultRenderer, int paramInt, float paramFloat)
  {
    int i = paramDefaultRenderer.getLegendHeight();
    if ((paramDefaultRenderer.isShowLegend()) && (i == 0));
    while (true)
    {
      if ((!paramDefaultRenderer.isShowLegend()) && (paramDefaultRenderer.isShowLabels()))
        paramInt = (int)(paramFloat + 4.0F * paramDefaultRenderer.getLabelsTextSize() / 3.0F);
      return paramInt;
      paramInt = i;
    }
  }

  public SeriesSelection getSeriesAndPointForScreenCoordinate(Point paramPoint)
  {
    return null;
  }

  public boolean isNullValue(double paramDouble)
  {
    return (Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble)) || (paramDouble == 1.7976931348623157E+308D);
  }

  public boolean isVertical(DefaultRenderer paramDefaultRenderer)
  {
    return ((paramDefaultRenderer instanceof XYMultipleSeriesRenderer)) && (((XYMultipleSeriesRenderer)paramDefaultRenderer).getOrientation() == XYMultipleSeriesRenderer.Orientation.VERTICAL);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.AbstractChart
 * JD-Core Version:    0.6.2
 */