package org.achartengine.tools;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class Pan extends AbstractTool
{
  private List<PanListener> a = new ArrayList();
  private boolean b = false;
  private boolean c = false;

  public Pan(AbstractChart paramAbstractChart)
  {
    super(paramAbstractChart);
  }

  private void a()
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      while (true)
      {
        boolean bool = localIterator.hasNext();
        if (!bool)
          return;
        ((PanListener)localIterator.next()).panApplied();
      }
    }
    finally
    {
    }
  }

  public void addPanListener(PanListener paramPanListener)
  {
    try
    {
      this.a.add(paramPanListener);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void apply(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = 1;
    int j = 1;
    int k = 1;
    int m = 1;
    double[] arrayOfDouble1;
    int i1;
    int i2;
    label74: label85: double[] arrayOfDouble2;
    double d1;
    double d2;
    double d5;
    double d4;
    if ((this.mChart instanceof XYChart))
    {
      int n = this.mRenderer.getScalesCount();
      arrayOfDouble1 = this.mRenderer.getPanLimits();
      XYChart localXYChart;
      if ((arrayOfDouble1 != null) && (arrayOfDouble1.length == 4))
      {
        i1 = 1;
        localXYChart = (XYChart)this.mChart;
        i2 = 0;
        if (i2 < n)
          break label85;
        a();
      }
      double[] arrayOfDouble3;
      do
      {
        return;
        i1 = 0;
        break;
        arrayOfDouble2 = getRange(i2);
        arrayOfDouble3 = localXYChart.getCalcRange(i2);
      }
      while ((this.b) && (this.c) && (((arrayOfDouble2[0] == arrayOfDouble2[1]) && (arrayOfDouble3[0] == arrayOfDouble3[1])) || ((arrayOfDouble2[2] == arrayOfDouble2[3]) && (arrayOfDouble3[2] == arrayOfDouble3[3]))));
      checkRange(arrayOfDouble2, i2);
      double[] arrayOfDouble4 = localXYChart.toRealPoint(paramFloat1, paramFloat2, i2);
      double[] arrayOfDouble5 = localXYChart.toRealPoint(paramFloat3, paramFloat4, i2);
      d1 = arrayOfDouble4[0] - arrayOfDouble5[0];
      d2 = arrayOfDouble4[1] - arrayOfDouble5[1];
      double d3 = Math.abs(arrayOfDouble2[1] - arrayOfDouble2[0]) / Math.abs(arrayOfDouble2[3] - arrayOfDouble2[2]);
      if (!localXYChart.isVertical(this.mRenderer))
        break label606;
      double d6 = d3 * -d2;
      d5 = d1 / d3;
      d4 = d6;
    }
    while (true)
    {
      int i8;
      label313: int i7;
      label340: int i6;
      label384: label422: int i5;
      label449: int i3;
      if (this.mRenderer.isPanXEnabled())
      {
        if (arrayOfDouble1 != null)
        {
          if (k != 0)
          {
            if (arrayOfDouble1[0] > d4 + arrayOfDouble2[0])
              break label515;
            i8 = 1;
            k = i8;
          }
          if (m != 0)
          {
            if (arrayOfDouble1[1] < d4 + arrayOfDouble2[1])
              break label521;
            i7 = 1;
            m = i7;
          }
        }
        if ((i1 != 0) && ((k == 0) || (m == 0)))
          break label527;
        setXRange(d4 + arrayOfDouble2[0], d4 + arrayOfDouble2[1], i2);
        this.b = false;
      }
      else
      {
        if (!this.mRenderer.isPanYEnabled())
          break label552;
        if (arrayOfDouble1 != null)
        {
          if (j != 0)
          {
            if (arrayOfDouble1[2] > d5 + arrayOfDouble2[2])
              break label535;
            i6 = 1;
            j = i6;
          }
          if (i != 0)
          {
            if (arrayOfDouble1[3] < d5 + arrayOfDouble2[3])
              break label541;
            i5 = 1;
            i = i5;
          }
        }
        if ((i1 != 0) && ((j == 0) || (i == 0)))
          break label547;
        setYRange(d5 + arrayOfDouble2[2], d5 + arrayOfDouble2[3], i2);
        this.c = false;
        i3 = j;
      }
      for (int i4 = i; ; i4 = i)
      {
        i2++;
        j = i3;
        i = i4;
        break;
        label515: i8 = 0;
        break label313;
        label521: i7 = 0;
        break label340;
        label527: this.b = true;
        break label384;
        label535: i6 = 0;
        break label422;
        label541: i5 = 0;
        break label449;
        label547: this.c = true;
        label552: i3 = j;
      }
      RoundChart localRoundChart = (RoundChart)this.mChart;
      localRoundChart.setCenterX(localRoundChart.getCenterX() + (int)(paramFloat3 - paramFloat1));
      localRoundChart.setCenterY(localRoundChart.getCenterY() + (int)(paramFloat4 - paramFloat2));
      break label74;
      label606: d4 = d1;
      d5 = d2;
    }
  }

  public void removePanListener(PanListener paramPanListener)
  {
    try
    {
      this.a.remove(paramPanListener);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.tools.Pan
 * JD-Core Version:    0.6.2
 */