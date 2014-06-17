package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

public class RangeBarChart extends BarChart
{
  public static final String TYPE = "RangeBar";

  RangeBarChart()
  {
  }

  RangeBarChart(BarChart.Type paramType)
  {
    super(paramType);
  }

  public RangeBarChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, BarChart.Type paramType)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer, paramType);
  }

  protected void drawChartValuesText(Canvas paramCanvas, XYSeries paramXYSeries, XYSeriesRenderer paramXYSeriesRenderer, Paint paramPaint, List<Float> paramList, int paramInt1, int paramInt2)
  {
    int i = this.mDataset.getSeriesCount();
    float f1 = getHalfDiffX(paramList, paramList.size(), i);
    int j = 0;
    if (paramInt2 > 0)
      j = 2;
    for (int k = j; ; k += 4)
    {
      if (k >= paramList.size())
        return;
      int m = paramInt2 + k / 2;
      float f2 = ((Float)paramList.get(k)).floatValue();
      if (this.mType == BarChart.Type.DEFAULT)
        f2 += f1 * (paramInt1 * 2) - f1 * (i - 1.5F);
      if ((!isNullValue(paramXYSeries.getY(m + 1))) && (paramList.size() > k + 3))
        drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(m + 1)), f2, ((Float)paramList.get(k + 3)).floatValue() - paramXYSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
      if ((!isNullValue(paramXYSeries.getY(m))) && (paramList.size() > k + 1))
        drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(m)), f2, ((Float)paramList.get(k + 1)).floatValue() + paramXYSeriesRenderer.getChartValuesTextSize() + paramXYSeriesRenderer.getChartValuesSpacing() - 3.0F, paramPaint, 0.0F);
    }
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    int i = this.mDataset.getSeriesCount();
    int j = paramList.size();
    paramPaint.setColor(paramXYSeriesRenderer.getColor());
    paramPaint.setStyle(Paint.Style.FILL);
    float f = getHalfDiffX(paramList, j, i);
    int k = 0;
    if (paramInt2 > 0)
      k = 2;
    for (int m = k; ; m += 4)
    {
      if (m >= j)
      {
        paramPaint.setColor(paramXYSeriesRenderer.getColor());
        return;
      }
      if (paramList.size() > m + 3)
        drawBar(paramCanvas, ((Float)paramList.get(m)).floatValue(), ((Float)paramList.get(m + 1)).floatValue(), ((Float)paramList.get(m + 2)).floatValue(), ((Float)paramList.get(m + 3)).floatValue(), f, i, paramInt1, paramPaint);
    }
  }

  public String getChartType()
  {
    return "RangeBar";
  }

  protected float getCoeficient()
  {
    return 0.5F;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.RangeBarChart
 * JD-Core Version:    0.6.2
 */