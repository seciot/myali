package org.achartengine.renderer;

import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import java.io.Serializable;

public class BasicStroke
  implements Serializable
{
  public static final BasicStroke DASHED = new BasicStroke(Paint.Cap.ROUND, Paint.Join.BEVEL, 10.0F, new float[] { 10.0F, 10.0F }, 1.0F);
  public static final BasicStroke DOTTED = new BasicStroke(Paint.Cap.ROUND, Paint.Join.BEVEL, 5.0F, new float[] { 2.0F, 10.0F }, 1.0F);
  public static final BasicStroke SOLID = new BasicStroke(Paint.Cap.BUTT, Paint.Join.MITER, 4.0F, null, 0.0F);
  private Paint.Cap a;
  private Paint.Join b;
  private float c;
  private float[] d;
  private float e;

  public BasicStroke(Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat1, float[] paramArrayOfFloat, float paramFloat2)
  {
    this.a = paramCap;
    this.b = paramJoin;
    this.c = paramFloat1;
    this.d = paramArrayOfFloat;
  }

  public Paint.Cap getCap()
  {
    return this.a;
  }

  public float[] getIntervals()
  {
    return this.d;
  }

  public Paint.Join getJoin()
  {
    return this.b;
  }

  public float getMiter()
  {
    return this.c;
  }

  public float getPhase()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.renderer.BasicStroke
 * JD-Core Version:    0.6.2
 */