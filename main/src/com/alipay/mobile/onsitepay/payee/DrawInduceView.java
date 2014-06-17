package com.alipay.mobile.onsitepay.payee;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import com.alipay.mobile.commonui.widget.APView;

public class DrawInduceView extends APView
{
  int[][] betterData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 21, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 21, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 27, 24, 21, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 21, 24, 27, 0, 0, 0, 0 }, { 0, 0, 0, 30, 27, 24, 21, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 0, 0, 0 } };
  Context context = null;
  int[][] drawData = new int[0][];
  float drawHeight = 160.0F;
  int[][] firstData = { { 12, 15, 18, 27, 33, 39, 33, 30, 27, 21, 18, 15, 12, 12, 15, 18, 21, 27, 30, 33, 39, 33, 27, 18, 15, 12 }, { 30, 33, 36, 39, 33, 24, 15, 12, 9, 6, 6, 3, 0, 0, 3, 6, 6, 9, 12, 15, 24, 33, 39, 36, 33, 30 }, { 33, 39, 36, 33, 27, 18, 12, 9, 6, 3, 0, 0, 0, 0, 0, 0, 3, 6, 9, 12, 18, 27, 33, 36, 39, 33 }, { 39, 36, 33, 30, 21, 15, 9, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 9, 15, 21, 30, 33, 36, 39 }, { 39, 30, 27, 24, 18, 12, 9, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 9, 12, 18, 24, 27, 30, 39 }, { 36, 27, 24, 21, 12, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 21, 24, 27, 36 }, { 30, 21, 18, 15, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 15, 18, 21, 30 }, { 24, 15, 12, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 15, 24 }, { 15, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 15 }, { 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12 } };
  int height = 0;
  int[][] highData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 3, 3, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 21, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 21, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } };
  float increasingLeftWidth = 0.0F;
  float increasingWidth = 0.0F;
  int[][] initData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } };
  int[][] lowData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 3, 3, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } };
  int[][] middleData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 3, 3, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } };
  boolean onDrawComplete = false;
  int[][] receviceData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 18, 27, 27, 18, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 12, 18, 24, 36, 24, 24, 36, 24, 18, 12, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 12, 18, 24, 36, 33, 30, 24, 24, 30, 33, 36, 24, 18, 12, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 12, 18, 27, 36, 33, 30, 24, 21, 18, 18, 21, 24, 30, 33, 36, 27, 18, 12, 0, 0, 0, 0 }, { 0, 0, 12, 18, 27, 36, 33, 30, 27, 21, 18, 15, 12, 12, 15, 18, 21, 27, 30, 33, 36, 27, 18, 12, 0, 0 }, { 12, 18, 27, 33, 30, 27, 24, 21, 18, 15, 12, 9, 15, 15, 9, 12, 15, 18, 21, 24, 27, 30, 33, 27, 18, 12 }, { 24, 36, 27, 18, 15, 12, 9, 6, 12, 15, 21, 24, 33, 33, 24, 21, 15, 12, 6, 9, 12, 15, 18, 27, 36, 24 }, { 33, 24, 15, 12, 6, 12, 18, 21, 27, 33, 36, 39, 39, 39, 39, 36, 33, 27, 21, 18, 12, 6, 12, 15, 24, 33 }, { 24, 18, 9, 0, 9, 15, 18, 24, 27, 39, 33, 30, 27, 27, 30, 33, 39, 27, 24, 18, 15, 9, 0, 9, 18, 24 }, { 18, 0, 9, 15, 24, 30, 36, 39, 36, 33, 30, 27, 24, 24, 27, 30, 33, 36, 39, 36, 30, 24, 15, 9, 0, 18 }, { 12, 15, 18, 27, 33, 39, 33, 30, 27, 21, 18, 15, 12, 12, 15, 18, 21, 27, 30, 33, 39, 33, 27, 18, 15, 12 }, { 30, 33, 36, 39, 33, 24, 15, 12, 9, 6, 6, 3, 0, 0, 3, 6, 6, 9, 12, 15, 24, 33, 39, 36, 33, 30 }, { 33, 39, 36, 33, 27, 18, 12, 9, 6, 3, 0, 0, 0, 0, 0, 0, 3, 6, 9, 12, 18, 27, 33, 36, 39, 33 }, { 39, 36, 33, 30, 21, 15, 9, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 9, 15, 21, 30, 33, 36, 39 }, { 39, 30, 27, 24, 18, 12, 9, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 9, 12, 18, 24, 27, 30, 39 }, { 36, 27, 24, 21, 12, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 21, 24, 27, 36 }, { 30, 21, 18, 15, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 15, 18, 21, 30 }, { 24, 15, 12, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 15, 24 }, { 15, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 15 }, { 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12 } };
  float roundWidth = 0.0F;
  public int row = 0;
  int[][] superData = { { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 0, 0, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 0, 0, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 0, 0, 21, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 21, 0, 0, 0, 0, 0, 0 }, { 0, 0, 0, 0, 27, 24, 21, 18, 15, 12, 9, 6, 3, 3, 6, 9, 12, 15, 18, 21, 24, 27, 0, 0, 0, 0 }, { 0, 0, 33, 27, 24, 21, 18, 15, 12, 9, 6, 3, 0, 0, 3, 6, 9, 12, 15, 18, 21, 24, 27, 33, 0, 0 }, { 39, 35, 33, 27, 24, 21, 18, 15, 12, 9, 6, 3, 0, 0, 3, 6, 9, 12, 15, 18, 21, 24, 27, 33, 35, 39 } };
  int width = 0;

  public DrawInduceView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    this.width = getMeasuredWidth();
    this.height = getMeasuredHeight();
  }

  public boolean getonDrawComplete()
  {
    return this.onDrawComplete;
  }

  @SuppressLint({"DrawAllocation", "ResourceAsColor"})
  protected void onDraw(Canvas paramCanvas)
  {
    int i = 0;
    super.onDraw(paramCanvas);
    this.onDrawComplete = false;
    Paint localPaint = new Paint();
    if (this.drawData.equals(this.receviceData))
      localPaint.setColor(Color.argb(255, 41, 125, 228));
    while (true)
    {
      localPaint.setAntiAlias(true);
      this.width = getMeasuredWidth();
      this.height = getMeasuredHeight();
      this.drawHeight = ((float)(1.07D * this.height));
      this.increasingWidth = (this.width / 26);
      this.increasingLeftWidth = ((float)(0.58D * this.increasingWidth));
      this.roundWidth = ((float)(0.482D * this.height));
      float f1 = (float)(0.42D * this.increasingWidth);
      int j = this.row;
      label144: if (i < 26);
      try
      {
        float f2 = this.roundWidth - this.drawData[j][i];
        paramCanvas.drawRoundRect(new RectF(f1, f2, f1 + this.increasingLeftWidth, this.drawHeight - f2), this.increasingLeftWidth / 2.0F, this.increasingLeftWidth / 2.0F, localPaint);
        float f3 = this.increasingWidth;
        f1 += f3;
        i++;
        break label144;
        localPaint.setColor(-1);
        continue;
        this.onDrawComplete = true;
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.onDrawComplete = true;
      }
    }
  }

  public int setBetterData()
  {
    this.drawData = this.betterData;
    return this.drawData.length;
  }

  public int setFirstData()
  {
    this.drawData = this.firstData;
    return this.drawData.length;
  }

  public int setHighData()
  {
    this.drawData = this.highData;
    return this.drawData.length;
  }

  public int setInitData()
  {
    this.drawData = this.initData;
    return this.drawData.length;
  }

  public int setLowData()
  {
    this.drawData = this.lowData;
    return this.drawData.length;
  }

  public int setMiddleData()
  {
    this.drawData = this.middleData;
    return this.drawData.length;
  }

  public int setReceviceData()
  {
    this.drawData = this.receviceData;
    return this.drawData.length;
  }

  public int setSuperhData()
  {
    this.drawData = this.superData;
    return this.drawData.length;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.DrawInduceView
 * JD-Core Version:    0.6.2
 */