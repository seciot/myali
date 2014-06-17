package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class TimeChart extends LineChart
{
  public static final long DAY = 86400000L;
  public static final String TYPE = "Time";
  private String a;
  private Double b;

  TimeChart()
  {
  }

  public TimeChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super(paramXYMultipleSeriesDataset, paramXYMultipleSeriesRenderer);
  }

  private DateFormat a(double paramDouble1, double paramDouble2)
  {
    if (this.a != null);
    double d;
    do
    {
      try
      {
        localObject = new SimpleDateFormat(this.a);
        return localObject;
      }
      catch (Exception localException)
      {
      }
      Object localObject = SimpleDateFormat.getDateInstance(2);
      d = paramDouble2 - paramDouble1;
      if ((d > 86400000.0D) && (d < 432000000.0D))
        return SimpleDateFormat.getDateTimeInstance(3, 3);
    }
    while (d >= 86400000.0D);
    return SimpleDateFormat.getTimeInstance(2);
  }

  protected void drawXLabels(List<Double> paramList, Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    int i = paramList.size();
    boolean bool1;
    boolean bool2;
    boolean bool3;
    DateFormat localDateFormat;
    if (i > 0)
    {
      bool1 = this.mRenderer.isShowLabels();
      bool2 = this.mRenderer.isShowGridY();
      bool3 = this.mRenderer.isShowTickMarks();
      localDateFormat = a(((Double)paramList.get(0)).doubleValue(), ((Double)paramList.get(i - 1)).doubleValue());
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        drawXTextLabels(paramArrayOfDouble, paramCanvas, paramPaint, true, paramInt1, paramInt2, paramInt3, paramDouble1, paramDouble2, paramDouble3);
        return;
      }
      long l = Math.round(((Double)paramList.get(j)).doubleValue());
      float f = (float)(paramInt1 + paramDouble1 * (l - paramDouble2));
      if (bool1)
      {
        paramPaint.setColor(this.mRenderer.getXLabelsColor());
        if (bool3)
          paramCanvas.drawLine(f, paramInt3, f, paramInt3 + this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint);
        drawText(paramCanvas, localDateFormat.format(new Date(l)), f, paramInt3 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F + this.mRenderer.getXLabelsPadding(), paramPaint, this.mRenderer.getXLabelsAngle());
      }
      if (bool2)
      {
        paramPaint.setColor(this.mRenderer.getGridColor(0));
        paramCanvas.drawLine(f, paramInt3, f, paramInt2, paramPaint);
      }
    }
  }

  public String getChartType()
  {
    return "Time";
  }

  public String getDateFormat()
  {
    return this.a;
  }

  protected List<Double> getXLabels(double paramDouble1, double paramDouble2, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (!this.mRenderer.isXRoundedLabels())
    {
      if (this.mDataset.getSeriesCount() > 0)
      {
        XYSeries localXYSeries = this.mDataset.getSeriesAt(0);
        int k = localXYSeries.getItemCount();
        int m = 0;
        int n = -1;
        int i1 = 0;
        int i4;
        if (i1 >= k)
        {
          if (m >= paramInt)
            break label151;
          i4 = n;
          label73: if (i4 < n + m)
            break label127;
        }
        while (true)
        {
          return localArrayList;
          double d5 = localXYSeries.getX(i1);
          if ((paramDouble1 <= d5) && (d5 <= paramDouble2))
          {
            m++;
            if (n < 0)
              n = i1;
          }
          i1++;
          break;
          label127: localArrayList.add(Double.valueOf(localXYSeries.getX(i4)));
          i4++;
          break label73;
          label151: float f = m / paramInt;
          int i2 = 0;
          for (int i3 = 0; (i3 < k) && (i2 < paramInt); i3++)
          {
            double d6 = localXYSeries.getX(Math.round(f * i3));
            if ((paramDouble1 <= d6) && (d6 <= paramDouble2))
            {
              localArrayList.add(Double.valueOf(d6));
              i2++;
            }
          }
        }
      }
      return super.getXLabels(paramDouble1, paramDouble2, paramInt);
    }
    if (this.b == null)
      this.b = Double.valueOf(86400000.0D + (paramDouble1 - paramDouble1 % 86400000.0D) + 1000 * (60 * new Date(Math.round(paramDouble1)).getTimezoneOffset()));
    if (paramInt > 25)
      paramInt = 25;
    double d1 = (paramDouble2 - paramDouble1) / paramInt;
    if (d1 <= 0.0D)
      return localArrayList;
    double d2 = 86400000.0D;
    label345: int i;
    double d4;
    if (d1 <= 86400000.0D)
      if (d1 >= d2 / 2.0D)
      {
        double d3 = this.b.doubleValue() - d2 * Math.floor((this.b.doubleValue() - paramDouble1) / d2);
        i = 0;
        d4 = d3;
      }
    while (true)
    {
      int j;
      if (d4 < paramDouble2)
      {
        j = i + 1;
        if (i <= paramInt);
      }
      else
      {
        return localArrayList;
        d2 /= 2.0D;
        break;
        do
          d2 *= 2.0D;
        while (d1 > d2);
        break label345;
      }
      localArrayList.add(Double.valueOf(d4));
      d4 += d2;
      i = j;
    }
  }

  public void setDateFormat(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.TimeChart
 * JD-Core Version:    0.6.2
 */