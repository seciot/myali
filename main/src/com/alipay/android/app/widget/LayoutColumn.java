package com.alipay.android.app.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.alipay.android.app.R.color;
import com.alipay.android.app.pay.GlobalConstant;

public final class LayoutColumn extends LinearLayout
{
  private float a = 0.0F;
  private int b;
  private Paint c;

  public LayoutColumn(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public LayoutColumn(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  private void a()
  {
    if (GlobalConstant.DEBUG)
    {
      int i = getResources().getColor(R.color.ZLog);
      this.c = new Paint();
      this.c.setStyle(Paint.Style.STROKE);
      this.c.setColor(i);
    }
  }

  protected final void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((GlobalConstant.DEBUG) && (GlobalConstant.DRAW_COLUMN_FRAME))
      paramCanvas.drawRect(0.0F, 0.0F, -1 + getWidth(), -1 + getHeight(), this.c);
  }

  protected final float getWidthFixValue()
  {
    return this.a;
  }

  protected final void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    super.measureChild(paramView, paramInt1, paramInt2);
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramBoolean)
    {
      this.b = 0;
      requestLayout();
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.a > 0.0F) && (this.a <= 100.0F))
    {
      if (this.b == 0)
        this.b = View.MeasureSpec.makeMeasureSpec((int)(View.MeasureSpec.getSize(paramInt1) * this.a / 100.0F), 1073741824);
      super.onMeasure(this.b, paramInt2);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }

  public final void setWidthFixValue(float paramFloat)
  {
    this.a = paramFloat;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.LayoutColumn
 * JD-Core Version:    0.6.2
 */