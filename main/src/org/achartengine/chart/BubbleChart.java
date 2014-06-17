package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYValueSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

public class BubbleChart extends XYChart
{
  public static final String TYPE = "Bubble";

  BubbleChart()
  {
  }

  public BubbleChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
  }

  private static void a(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramCanvas.drawCircle(paramFloat1, paramFloat2, paramFloat3, paramPaint);
  }

  protected ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2)
  {
    int i = paramList.size();
    XYValueSeries localXYValueSeries = (XYValueSeries)this.mDataset.getSeriesAt(paramInt1);
    double d1 = 20.0D / localXYValueSeries.getMaxValue();
    ClickableArea[] arrayOfClickableArea = new ClickableArea[i / 2];
    for (int j = 0; ; j += 2)
    {
      if (j >= i)
        return arrayOfClickableArea;
      double d2 = 2.0D + d1 * localXYValueSeries.getValue(paramInt2 + j / 2);
      arrayOfClickableArea[(j / 2)] = new ClickableArea(new RectF(((Float)paramList.get(j)).floatValue() - (float)d2, ((Float)paramList.get(j + 1)).floatValue() - (float)d2, ((Float)paramList.get(j)).floatValue() + (float)d2, ((Float)paramList.get(j + 1)).floatValue() + (float)d2), ((Double)paramList1.get(j)).doubleValue(), ((Double)paramList1.get(j + 1)).doubleValue());
    }
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    paramPaint.setStyle(Paint.Style.FILL);
    a(paramCanvas, paramPaint, 10.0F + paramFloat1, paramFloat2, 3.0F);
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    paramPaint.setColor(paramXYSeriesRenderer.getColor());
    paramPaint.setStyle(Paint.Style.FILL);
    int i = paramList.size();
    XYValueSeries localXYValueSeries = (XYValueSeries)this.mDataset.getSeriesAt(paramInt1);
    double d1 = 20.0D / localXYValueSeries.getMaxValue();
    for (int j = 0; ; j += 2)
    {
      if (j >= i)
        return;
      double d2 = 2.0D + d1 * localXYValueSeries.getValue(paramInt2 + j / 2);
      a(paramCanvas, paramPaint, ((Float)paramList.get(j)).floatValue(), ((Float)paramList.get(j + 1)).floatValue(), (float)d2);
    }
  }

  public String getChartType()
  {
    return "Bubble";
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return 10;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.BubbleChart
 * JD-Core Version:    0.6.2
 */