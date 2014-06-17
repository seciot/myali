package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

public class BarChart extends XYChart
{
  public static final String TYPE = "Bar";
  protected BarChart.Type mType = BarChart.Type.DEFAULT;

  BarChart()
  {
  }

  BarChart(BarChart.Type paramType)
  {
    this.mType = paramType;
  }

  public BarChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    this.mType = paramType;
  }

  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    return Color.argb(Math.round(paramFloat * Color.alpha(paramInt1) + (1.0F - paramFloat) * Color.alpha(paramInt2)), Math.round(paramFloat * Color.red(paramInt1) + (1.0F - paramFloat) * Color.red(paramInt2)), Math.round(paramFloat * Color.green(paramInt1) + (1.0F - paramFloat) * Color.green(paramInt2)), Math.round(paramFloat * Color.blue(paramInt1) + (1.0F - paramFloat) * Color.blue(paramInt2)));
  }

  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2, Paint paramPaint)
  {
    if (paramFloat1 > paramFloat3);
    while (true)
    {
      if (paramFloat2 > paramFloat4);
      while (true)
      {
        SimpleSeriesRenderer localSimpleSeriesRenderer = this.mRenderer.getSeriesRendererAt(paramInt2);
        if (localSimpleSeriesRenderer.isGradientEnabled())
        {
          double[] arrayOfDouble1 = new double[2];
          arrayOfDouble1[0] = 0.0D;
          arrayOfDouble1[1] = localSimpleSeriesRenderer.getGradientStopValue();
          float f3 = (float)toScreenPoint(arrayOfDouble1, paramInt1)[1];
          double[] arrayOfDouble2 = new double[2];
          arrayOfDouble2[0] = 0.0D;
          arrayOfDouble2[1] = localSimpleSeriesRenderer.getGradientStartValue();
          float f4 = (float)toScreenPoint(arrayOfDouble2, paramInt1)[1];
          float f5 = Math.max(f3, Math.min(paramFloat4, paramFloat2));
          float f6 = Math.min(f4, Math.max(paramFloat4, paramFloat2));
          int i = localSimpleSeriesRenderer.getGradientStopColor();
          int j = localSimpleSeriesRenderer.getGradientStartColor();
          int k;
          if (paramFloat4 < f3)
          {
            paramPaint.setColor(i);
            paramCanvas.drawRect(Math.round(paramFloat3), Math.round(paramFloat4), Math.round(paramFloat1), Math.round(f5), paramPaint);
            k = i;
            if (paramFloat2 <= f4)
              break label310;
            paramPaint.setColor(j);
            paramCanvas.drawRect(Math.round(paramFloat3), Math.round(f6), Math.round(paramFloat1), Math.round(paramFloat2), paramPaint);
          }
          label310: for (int m = j; ; m = a(j, i, (f6 - f3) / (f4 - f3)))
          {
            GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[] { m, k });
            localGradientDrawable.setBounds(Math.round(paramFloat3), Math.round(f5), Math.round(paramFloat1), Math.round(f6));
            localGradientDrawable.draw(paramCanvas);
            return;
            k = a(i, j, (f4 - f5) / (f4 - f3));
            break;
          }
        }
        if (Math.abs(paramFloat4 - paramFloat2) < 1.0F)
          if (paramFloat4 >= paramFloat2)
            break label386;
        label386: for (paramFloat2 = paramFloat4 + 1.0F; ; paramFloat2 = paramFloat4 - 1.0F)
        {
          paramCanvas.drawRect(Math.round(paramFloat3), Math.round(paramFloat4), Math.round(paramFloat1), Math.round(paramFloat2), paramPaint);
          return;
        }
        float f2 = paramFloat4;
        paramFloat4 = paramFloat2;
        paramFloat2 = f2;
      }
      float f1 = paramFloat3;
      paramFloat3 = paramFloat1;
      paramFloat1 = f1;
    }
  }

  protected ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2)
  {
    int i = this.mDataset.getSeriesCount();
    int j = paramList.size();
    ClickableArea[] arrayOfClickableArea = new ClickableArea[j / 2];
    float f1 = getHalfDiffX(paramList, j, i);
    int k = 0;
    if (k >= j)
      return arrayOfClickableArea;
    float f2 = ((Float)paramList.get(k)).floatValue();
    float f3 = ((Float)paramList.get(k + 1)).floatValue();
    if (this.mType == BarChart.Type.STACKED)
      arrayOfClickableArea[(k / 2)] = new ClickableArea(new RectF(f2 - f1, Math.min(f3, paramFloat), f2 + f1, Math.max(f3, paramFloat)), ((Double)paramList1.get(k)).doubleValue(), ((Double)paramList1.get(k + 1)).doubleValue());
    while (true)
    {
      k += 2;
      break;
      float f4 = f2 - f1 * i + f1 * (paramInt1 * 2);
      arrayOfClickableArea[(k / 2)] = new ClickableArea(new RectF(f4, Math.min(f3, paramFloat), f4 + 2.0F * f1, Math.max(f3, paramFloat)), ((Double)paramList1.get(k)).doubleValue(), ((Double)paramList1.get(k + 1)).doubleValue());
    }
  }

  protected void drawBar(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, int paramInt1, int paramInt2, Paint paramPaint)
  {
    int i = this.mDataset.getSeriesAt(paramInt2).getScaleNumber();
    if (this.mType == BarChart.Type.STACKED)
    {
      a(paramCanvas, paramFloat1 - paramFloat5, paramFloat4, paramFloat3 + paramFloat5, paramFloat2, i, paramInt2, paramPaint);
      return;
    }
    float f = paramFloat1 - paramFloat5 * paramInt1 + paramFloat5 * (paramInt2 * 2);
    a(paramCanvas, f, paramFloat4, f + 2.0F * paramFloat5, paramFloat2, i, paramInt2, paramPaint);
  }

  protected void drawChartValuesText(Canvas paramCanvas, XYSeries paramXYSeries, XYSeriesRenderer paramXYSeriesRenderer, Paint paramPaint, List<Float> paramList, int paramInt1, int paramInt2)
  {
    int i = this.mDataset.getSeriesCount();
    int j = paramList.size();
    float f1 = getHalfDiffX(paramList, j, i);
    int k = 0;
    if (k >= j)
      return;
    double d = paramXYSeries.getY(paramInt2 + k / 2);
    float f2;
    if (!isNullValue(d))
    {
      f2 = ((Float)paramList.get(k)).floatValue();
      if (this.mType == BarChart.Type.DEFAULT)
        f2 += f1 * (paramInt1 * 2) - f1 * (i - 1.5F);
      if (d < 0.0D)
        break label168;
      drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), d), f2, ((Float)paramList.get(k + 1)).floatValue() - paramXYSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
    }
    while (true)
    {
      k += 2;
      break;
      label168: drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), d), f2, ((Float)paramList.get(k + 1)).floatValue() + paramXYSeriesRenderer.getChartValuesTextSize() + paramXYSeriesRenderer.getChartValuesSpacing() - 3.0F, paramPaint, 0.0F);
    }
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    paramCanvas.drawRect(paramFloat1, paramFloat2 - 6.0F, paramFloat1 + 12.0F, paramFloat2 + 6.0F, paramPaint);
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    int i = this.mDataset.getSeriesCount();
    int j = paramList.size();
    paramPaint.setColor(paramXYSeriesRenderer.getColor());
    paramPaint.setStyle(Paint.Style.FILL);
    float f1 = getHalfDiffX(paramList, j, i);
    for (int k = 0; ; k += 2)
    {
      if (k >= j)
      {
        paramPaint.setColor(paramXYSeriesRenderer.getColor());
        return;
      }
      float f2 = ((Float)paramList.get(k)).floatValue();
      drawBar(paramCanvas, f2, paramFloat, f2, ((Float)paramList.get(k + 1)).floatValue(), f1, i, paramInt1, paramPaint);
    }
  }

  public String getChartType()
  {
    return "Bar";
  }

  protected float getCoeficient()
  {
    return 1.0F;
  }

  public double getDefaultMinimum()
  {
    return 0.0D;
  }

  protected float getHalfDiffX(List<Float> paramList, int paramInt1, int paramInt2)
  {
    float f1 = this.mRenderer.getBarWidth();
    if (f1 > 0.0F)
      return f1 / 2.0F;
    if (paramInt1 > 2);
    for (int i = paramInt1 - 2; ; i = paramInt1)
    {
      float f2 = (((Float)paramList.get(paramInt1 - 2)).floatValue() - ((Float)paramList.get(0)).floatValue()) / i;
      if (f2 == 0.0F)
        f2 = 10.0F;
      if (this.mType != BarChart.Type.STACKED)
        f2 /= paramInt2;
      return (float)(f2 / (getCoeficient() * (1.0D + this.mRenderer.getBarSpacing())));
    }
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return 12;
  }

  protected boolean isRenderNullValues()
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.BarChart
 * JD-Core Version:    0.6.2
 */