package com.alipay.android.mini.uielement;

import android.graphics.drawable.Drawable;
import android.widget.Button;
import com.alipay.android.app.widget.BaseTarget;

final class f extends BaseTarget
{
  f(UIButton paramUIButton)
  {
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
  {
    UIButton.getBundle(this.a).setBackgroundResource(paramInt);
  }

  public final void a(Drawable paramDrawable)
  {
    UIButton.getBundle(this.a).setBackgroundDrawable(paramDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.f
 * JD-Core Version:    0.6.2
 */