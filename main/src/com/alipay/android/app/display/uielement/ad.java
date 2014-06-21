package com.alipay.android.app.display.uielement;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.alipay.android.app.widget.BaseTarget;

final class ad extends BaseTarget
{
  ad(UICheckBox paramUICheckBox)
  {
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
  {
    UICheckBox.getBundle(this.a).setBackgroundResource(paramInt);
  }

  public final void a(Drawable paramDrawable)
  {
    UICheckBox.getBundle(this.a).setBackgroundDrawable(paramDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ad
 * JD-Core Version:    0.6.2
 */