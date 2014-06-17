package org.achartengine.chart;

public enum PointStyle
{
  private String a;

  static
  {
    CIRCLE = new PointStyle("CIRCLE", 1, "circle");
    TRIANGLE = new PointStyle("TRIANGLE", 2, "triangle");
    SQUARE = new PointStyle("SQUARE", 3, "square");
    DIAMOND = new PointStyle("DIAMOND", 4, "diamond");
    POINT = new PointStyle("POINT", 5, "point");
    PointStyle[] arrayOfPointStyle = new PointStyle[6];
    arrayOfPointStyle[0] = X;
    arrayOfPointStyle[1] = CIRCLE;
    arrayOfPointStyle[2] = TRIANGLE;
    arrayOfPointStyle[3] = SQUARE;
    arrayOfPointStyle[4] = DIAMOND;
    arrayOfPointStyle[5] = POINT;
  }

  private PointStyle(String arg3)
  {
    Object localObject;
    this.a = localObject;
  }

  public static int getIndexForName(String paramString)
  {
    int i = -1;
    PointStyle[] arrayOfPointStyle = values();
    int j = arrayOfPointStyle.length;
    for (int k = 0; ; k++)
    {
      if ((k >= j) || (i >= 0))
        return Math.max(0, i);
      if (arrayOfPointStyle[k].a.equals(paramString))
        i = k;
    }
  }

  public static PointStyle getPointStyleForName(String paramString)
  {
    PointStyle[] arrayOfPointStyle = values();
    int i = arrayOfPointStyle.length;
    PointStyle localPointStyle = null;
    for (int j = 0; ; j++)
    {
      if ((j >= i) || (localPointStyle != null))
        return localPointStyle;
      if (arrayOfPointStyle[j].a.equals(paramString))
        localPointStyle = arrayOfPointStyle[j];
    }
  }

  public final String getName()
  {
    return this.a;
  }

  public final String toString()
  {
    return getName();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.PointStyle
 * JD-Core Version:    0.6.2
 */