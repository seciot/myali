package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;

public class APAutoResizeTextView extends APTextView
{
  private Paint a = getPaint();
  private float b = this.a.getTextSize();

  public APAutoResizeTextView(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public APAutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  private void a()
  {
    getViewTreeObserver().addOnGlobalLayoutListener(new APAutoResizeTextView.1(this));
  }

  public void reSizeText()
  {
    setAutoTextSize();
  }

  public void setAutoTextSize()
  {
    float f1 = this.a.measureText(getText());
    if (f1 > getMeasuredWidth())
    {
      float f2 = f1 / getMeasuredWidth();
      setTextSize(0, getTextSize() / f2);
      return;
    }
    setTextSize(0, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APAutoResizeTextView
 * JD-Core Version:    0.6.2
 */