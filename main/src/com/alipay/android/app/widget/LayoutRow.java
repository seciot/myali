package com.alipay.android.app.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.alipay.android.app.R.color;
import com.alipay.android.app.pay.GlobalConstant;

public final class LayoutRow extends LinearLayout
{
  private Paint a;

  public LayoutRow(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public LayoutRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  private void a()
  {
    if (GlobalConstant.DEBUG)
    {
      int i = getResources().getColor(R.color.e);
      this.a = new Paint();
      this.a.setStyle(Paint.Style.STROKE);
      this.a.setColor(i);
    }
  }

  protected final void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((GlobalConstant.DEBUG) && (GlobalConstant.DRAW_ROW_FRAME))
      paramCanvas.drawRect(0.0F, 0.0F, -1 + getWidth(), -1 + getHeight(), this.a);
  }

  protected final void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (((paramView instanceof LayoutColumn)) && (((LayoutColumn)paramView).getWidthFixValue() > 0.0F));
    for (int i = 0; ; i = paramInt2)
    {
      super.measureChildWithMargins(paramView, paramInt1, i, paramInt3, paramInt4);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.LayoutRow
 * JD-Core Version:    0.6.2
 */