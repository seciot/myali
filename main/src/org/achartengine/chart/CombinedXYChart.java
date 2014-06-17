package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation;
import org.achartengine.renderer.XYSeriesRenderer;

public class CombinedXYChart extends XYChart
{
  private XYChart[] a;
  private Class<?>[] b = { TimeChart.class, LineChart.class, CubicLineChart.class, BarChart.class, BubbleChart.class, ScatterChart.class, RangeBarChart.class, RangeStackedBarChart.class };

  public CombinedXYChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, String[] paramArrayOfString)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
    int i = paramArrayOfString.length;
    this.a = new XYChart[i];
    int j = 0;
    while (true)
    {
      if (j >= i)
        return;
      try
      {
        XYChart[] arrayOfXYChart = this.a;
        String str = paramArrayOfString[j];
        m = this.b.length;
        localObject1 = null;
        n = 0;
        break label376;
        arrayOfXYChart[j] = localObject1;
        if (this.a[j] == null)
        {
          throw new IllegalArgumentException("Unknown chart type " + paramArrayOfString[j]);
          localObject2 = (XYChart)this.b[n].newInstance();
          boolean bool = str.equals(((XYChart)localObject2).getChartType());
          if (bool)
          {
            n++;
            localObject1 = localObject2;
            break label376;
          }
        }
        else
        {
          XYMultipleSeriesDataset localXYMultipleSeriesDataset = new XYMultipleSeriesDataset();
          localXYMultipleSeriesDataset.addSeries(paramXYMultipleSeriesDataset.getSeriesAt(j));
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
          localXYMultipleSeriesRenderer.setBarSpacing(paramXYMultipleSeriesRenderer.getBarSpacing());
          localXYMultipleSeriesRenderer.setPointSize(paramXYMultipleSeriesRenderer.getPointSize());
          int k = paramXYMultipleSeriesDataset.getSeriesAt(j).getScaleNumber();
          if (paramXYMultipleSeriesRenderer.isMinXSet(k))
            localXYMultipleSeriesRenderer.setXAxisMin(paramXYMultipleSeriesRenderer.getXAxisMin(k));
          if (paramXYMultipleSeriesRenderer.isMaxXSet(k))
            localXYMultipleSeriesRenderer.setXAxisMax(paramXYMultipleSeriesRenderer.getXAxisMax(k));
          if (paramXYMultipleSeriesRenderer.isMinYSet(k))
            localXYMultipleSeriesRenderer.setYAxisMin(paramXYMultipleSeriesRenderer.getYAxisMin(k));
          if (paramXYMultipleSeriesRenderer.isMaxYSet(k))
            localXYMultipleSeriesRenderer.setYAxisMax(paramXYMultipleSeriesRenderer.getYAxisMax(k));
          localXYMultipleSeriesRenderer.addSeriesRenderer(paramXYMultipleSeriesRenderer.getSeriesRendererAt(j));
          this.a[j].setDatasetRenderer(localXYMultipleSeriesDataset, localXYMultipleSeriesRenderer);
          j++;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          int m;
          Object localObject1;
          int n;
          continue;
          Object localObject2 = localObject1;
          continue;
          label376: if (n < m)
            if (localObject1 == null);
        }
      }
    }
  }

  protected ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2)
  {
    return this.a[paramInt1].clickableAreasForPoints(paramList, paramList1, paramFloat, 0, paramInt2);
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    this.a[paramInt].drawLegendShape(paramCanvas, paramSimpleSeriesRenderer, paramFloat1, paramFloat2, 0, paramPaint);
  }

  public void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, int paramInt2)
  {
    this.a[paramInt1].setScreenR(getScreenR());
    this.a[paramInt1].setCalcRange(getCalcRange(this.mDataset.getSeriesAt(paramInt1).getScaleNumber()), 0);
    this.a[paramInt1].drawSeries(paramCanvas, paramPaint, paramList, paramXYSeriesRenderer, paramFloat, 0, paramInt2);
  }

  protected void drawSeries(XYSeries paramXYSeries, Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, XYMultipleSeriesRenderer.Orientation paramOrientation, int paramInt2)
  {
    this.a[paramInt1].setScreenR(getScreenR());
    this.a[paramInt1].setCalcRange(getCalcRange(this.mDataset.getSeriesAt(paramInt1).getScaleNumber()), 0);
    this.a[paramInt1].drawSeries(paramXYSeries, paramCanvas, paramPaint, paramList, paramXYSeriesRenderer, paramFloat, 0, paramOrientation, paramInt2);
  }

  public String getChartType()
  {
    return "Combined";
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return this.a[paramInt].getLegendShapeWidth(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.CombinedXYChart
 * JD-Core Version:    0.6.2
 */