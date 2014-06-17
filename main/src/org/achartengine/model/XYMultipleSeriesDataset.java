package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class XYMultipleSeriesDataset
  implements Serializable
{
  private List<XYSeries> a = new ArrayList();

  public void addAllSeries(List<XYSeries> paramList)
  {
    try
    {
      this.a.addAll(paramList);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void addSeries(int paramInt, XYSeries paramXYSeries)
  {
    try
    {
      this.a.add(paramInt, paramXYSeries);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void addSeries(XYSeries paramXYSeries)
  {
    try
    {
      this.a.add(paramXYSeries);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void clear()
  {
    try
    {
      this.a.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public XYSeries[] getSeries()
  {
    try
    {
      XYSeries[] arrayOfXYSeries = (XYSeries[])this.a.toArray(new XYSeries[0]);
      return arrayOfXYSeries;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public XYSeries getSeriesAt(int paramInt)
  {
    try
    {
      XYSeries localXYSeries = (XYSeries)this.a.get(paramInt);
      return localXYSeries;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getSeriesCount()
  {
    try
    {
      int i = this.a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void removeSeries(int paramInt)
  {
    try
    {
      this.a.remove(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void removeSeries(XYSeries paramXYSeries)
  {
    try
    {
      this.a.remove(paramXYSeries);
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
 * Qualified Name:     org.achartengine.model.XYMultipleSeriesDataset
 * JD-Core Version:    0.6.2
 */