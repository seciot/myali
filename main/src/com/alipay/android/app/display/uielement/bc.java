package com.alipay.android.app.display.uielement;

import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.alipay.android.app.util.UIUtils;
import com.alipay.android.app.widget.BaseTarget;

final class bc extends BaseTarget
{
  bc(UILabel paramUILabel, TextView paramTextView)
  {
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
  {
    UIUtils.a(UILabel.a(this.b), this.a, paramInt);
  }

  public final void a(Drawable paramDrawable)
  {
    UIUtils.a(UILabel.a(this.b), this.a, paramDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bc
 * JD-Core Version:    0.6.2
 */