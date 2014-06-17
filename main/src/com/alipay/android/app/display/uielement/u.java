package com.alipay.android.app.display.uielement;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.UIUtils;
import com.alipay.android.app.widget.BaseTarget;

final class u extends BaseTarget
{
  u(ElementStyle paramElementStyle, View paramView)
  {
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
  {
    this.a.setBackgroundResource(paramInt);
    this.a.setMinimumHeight(UIUtils.a(GlobalContext.a().b(), UIUtils.b()));
  }

  public final void a(Drawable paramDrawable)
  {
    this.a.setBackgroundDrawable(paramDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.u
 * JD-Core Version:    0.6.2
 */