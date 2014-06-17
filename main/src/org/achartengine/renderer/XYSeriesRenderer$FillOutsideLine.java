package org.achartengine.renderer;

import android.graphics.Color;
import java.io.Serializable;

public class XYSeriesRenderer$FillOutsideLine
  implements Serializable
{
  private final XYSeriesRenderer.FillOutsideLine.Type a;
  private int b = Color.argb(125, 0, 0, 200);
  private int[] c;

  public XYSeriesRenderer$FillOutsideLine(XYSeriesRenderer.FillOutsideLine.Type paramType)
  {
    this.a = paramType;
  }

  public int getColor()
  {
    return this.b;
  }

  public int[] getFillRange()
  {
    return this.c;
  }

  public XYSeriesRenderer.FillOutsideLine.Type getType()
  {
    return this.a;
  }

  public void setColor(int paramInt)
  {
    this.b = paramInt;
  }

  public void setFillRange(int[] paramArrayOfInt)
  {
    this.c = paramArrayOfInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.XYSeriesRenderer.FillOutsideLine
 * JD-Core Version:    0.6.2
 */