package org.achartengine.tools;

import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public abstract class AbstractTool
{
  protected AbstractChart mChart;
  protected XYMultipleSeriesRenderer mRenderer;

  public AbstractTool(AbstractChart paramAbstractChart)
  {
    this.mChart = paramAbstractChart;
    if ((paramAbstractChart instanceof XYChart))
      this.mRenderer = ((XYChart)paramAbstractChart).getRenderer();
  }

  public void checkRange(double[] paramArrayOfDouble, int paramInt)
  {
    if ((this.mChart instanceof XYChart))
    {
      double[] arrayOfDouble = ((XYChart)this.mChart).getCalcRange(paramInt);
      if (arrayOfDouble != null)
      {
        if (!this.mRenderer.isMinXSet(paramInt))
        {
          paramArrayOfDouble[0] = arrayOfDouble[0];
          this.mRenderer.setXAxisMin(paramArrayOfDouble[0], paramInt);
        }
        if (!this.mRenderer.isMaxXSet(paramInt))
        {
          paramArrayOfDouble[1] = arrayOfDouble[1];
          this.mRenderer.setXAxisMax(paramArrayOfDouble[1], paramInt);
        }
        if (!this.mRenderer.isMinYSet(paramInt))
        {
          paramArrayOfDouble[2] = arrayOfDouble[2];
          this.mRenderer.setYAxisMin(paramArrayOfDouble[2], paramInt);
        }
        if (!this.mRenderer.isMaxYSet(paramInt))
        {
          paramArrayOfDouble[3] = arrayOfDouble[3];
          this.mRenderer.setYAxisMax(paramArrayOfDouble[3], paramInt);
        }
      }
    }
  }

  public double[] getRange(int paramInt)
  {
    return new double[] { this.mRenderer.getXAxisMin(paramInt), this.mRenderer.getXAxisMax(paramInt), this.mRenderer.getYAxisMin(paramInt), this.mRenderer.getYAxisMax(paramInt) };
  }

  protected void setXRange(double paramDouble1, double paramDouble2, int paramInt)
  {
    this.mRenderer.setXAxisMin(paramDouble1, paramInt);
    this.mRenderer.setXAxisMax(paramDouble2, paramInt);
  }

  protected void setYRange(double paramDouble1, double paramDouble2, int paramInt)
  {
    this.mRenderer.setYAxisMin(paramDouble1, paramInt);
    this.mRenderer.setYAxisMax(paramDouble2, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.tools.AbstractTool
 * JD-Core Version:    0.6.2
 */