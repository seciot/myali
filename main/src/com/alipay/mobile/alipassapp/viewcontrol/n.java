package com.alipay.mobile.alipassapp.viewcontrol;

import android.text.style.ClickableSpan;
import android.view.View;
import com.alipay.mobile.alipassapp.ui.common.a;

final class n extends ClickableSpan
{
  a a;

  public n(l paraml, a parama)
  {
    this.a = parama;
  }

  public final void onClick(View paramView)
  {
    if (this.a != null)
      this.a.onClick(paramView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.n
 * JD-Core Version:    0.6.2
 */