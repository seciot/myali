package com.alipay.android.widget.security.ui.authentication;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

public class RotateTextView extends TextView
{
  private int a;

  public RotateTextView(Context paramContext)
  {
    super(paramContext);
  }

  public RotateTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = 90;
  }

  public RotateTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.rotate(this.a, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
    super.onDraw(paramCanvas);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.RotateTextView
 * JD-Core Version:    0.6.2
 */