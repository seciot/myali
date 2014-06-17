package org.achartengine.model;

import java.util.Date;

public class TimeSeries extends XYSeries
{
  public TimeSeries(String paramString)
  {
    super(paramString);
  }

  public void add(Date paramDate, double paramDouble)
  {
    try
    {
      super.add(paramDate.getTime(), paramDouble);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected double getPadding()
  {
    return 1.0D;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.TimeSeries
 * JD-Core Version:    0.6.2
 */