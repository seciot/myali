package org.achartengine.chart;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;

public class PieMapper
  implements Serializable
{
  private List<PieSegment> a = new ArrayList();
  private int b;
  private int c;
  private int d;

  public void addPieSegment(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.a.add(new PieSegment(paramInt, paramFloat1, paramFloat2, paramFloat3));
  }

  public boolean areAllSegmentPresent(int paramInt)
  {
    return this.a.size() == paramInt;
  }

  public void clearPieSegments()
  {
    this.a.clear();
  }

  public double getAngle(Point paramPoint)
  {
    double d1 = paramPoint.getX() - this.c;
    double d2 = Math.atan2(-(paramPoint.getY() - this.d), d1);
    if (d2 < 0.0D);
    for (double d3 = Math.abs(d2); ; d3 = 6.283185307179586D - d2)
      return Math.toDegrees(d3);
  }

  public SeriesSelection getSeriesAndPointForScreenCoordinate(Point paramPoint)
  {
    double d1;
    Iterator localIterator;
    if (isOnPieChart(paramPoint))
    {
      d1 = getAngle(paramPoint);
      localIterator = this.a.iterator();
    }
    PieSegment localPieSegment;
    do
    {
      if (!localIterator.hasNext())
        return null;
      localPieSegment = (PieSegment)localIterator.next();
    }
    while (!localPieSegment.isInSegment(d1));
    return new SeriesSelection(0, localPieSegment.getDataIndex(), localPieSegment.getValue(), localPieSegment.getValue());
  }

  public boolean isOnPieChart(Point paramPoint)
  {
    return Math.pow(this.c - paramPoint.getX(), 2.0D) + Math.pow(this.d - paramPoint.getY(), 2.0D) <= this.b * this.b;
  }

  public void setDimensions(int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.PieMapper
 * JD-Core Version:    0.6.2
 */