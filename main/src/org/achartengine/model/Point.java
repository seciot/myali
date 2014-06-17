package org.achartengine.model;

import java.io.Serializable;

public final class Point
  implements Serializable
{
  private float a;
  private float b;

  public Point()
  {
  }

  public Point(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }

  public final float getX()
  {
    return this.a;
  }

  public final float getY()
  {
    return this.b;
  }

  public final void setX(float paramFloat)
  {
    this.a = paramFloat;
  }

  public final void setY(float paramFloat)
  {
    this.b = paramFloat;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.model.Point
 * JD-Core Version:    0.6.2
 */