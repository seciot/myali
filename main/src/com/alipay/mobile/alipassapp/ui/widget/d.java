package com.alipay.mobile.alipassapp.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.alipay.mobile.alipassapp.R.color;

final class d extends Drawable
{
  private RectF b = new RectF();
  private Paint c = new Paint();
  private Paint d = new Paint();

  public d(MemberCardHeaderStyle paramMemberCardHeaderStyle)
  {
    this.c.setAntiAlias(true);
    this.c.setColor(paramMemberCardHeaderStyle.getContext().getResources().getColor(R.color.membercard_header_style_line));
    this.c.setStrokeWidth(5.0F);
    this.d.setAntiAlias(true);
    this.d.setColor(paramMemberCardHeaderStyle.getContext().getResources().getColor(R.color.membercard_header_style_line));
  }

  public final void draw(Canvas paramCanvas)
  {
    this.b.set(getBounds());
    paramCanvas.drawLine(this.b.height() / 2.0F, this.b.height() / 2.0F, this.b.width() - this.b.height() / 2.0F, this.b.height() / 2.0F, this.c);
    paramCanvas.drawCircle(this.b.height() / 2.0F, this.b.height() / 2.0F, this.b.height() / 2.0F, this.d);
    paramCanvas.drawCircle(this.b.width() - this.b.height() / 2.0F, this.b.height() / 2.0F, this.b.height() / 2.0F, this.d);
  }

  public final int getOpacity()
  {
    return 0;
  }

  public final void setAlpha(int paramInt)
  {
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.d
 * JD-Core Version:    0.6.2
 */