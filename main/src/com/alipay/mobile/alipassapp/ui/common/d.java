package com.alipay.mobile.alipassapp.ui.common;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

final class d extends ClickableSpan
{
  a a;

  public d(a parama)
  {
    this.a = parama;
  }

  public final void onClick(View paramView)
  {
    if (this.a != null)
      this.a.onClick(paramView);
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.d
 * JD-Core Version:    0.6.2
 */