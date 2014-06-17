package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class APSelectionBar extends APImageView
{
  private int a;
  private int b = 0;
  private APSelectionBar.LetterSelectedListener c;
  private char[] d = { 63, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 35 };

  public APSelectionBar(Context paramContext)
  {
    super(paramContext);
  }

  public APSelectionBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = -1 + (int)(paramMotionEvent.getY() / this.b);
    switch (i)
    {
    default:
    case 2:
    }
    while (true)
    {
      return true;
      if (j == -1)
        this.c.onLetterSelected('?');
      else if ((j >= 0) && (j < this.d.length))
        this.c.onLetterSelected(this.d[j]);
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.a = getHeight();
    this.b = (this.a / 28);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = paramInt2;
    this.b = (this.a / 28);
  }

  public void setOnLetterSelectedListener(APSelectionBar.LetterSelectedListener paramLetterSelectedListener)
  {
    this.c = paramLetterSelectedListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSelectionBar
 * JD-Core Version:    0.6.2
 */