package com.alipay.android.mini.widget;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class f
  implements View.OnFocusChangeListener
{
  f(MiniLabelInput paramMiniLabelInput)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    MiniLabelInput.access$000(this.a).onFocusChange(paramView, paramBoolean);
    if (MiniLabelInput.access$000(this.a).getText().toString().length() > 0)
    {
      if ((MiniLabelInput.access$000(this.a).isEnabled()) && (paramBoolean))
      {
        MiniLabelInput.access$100(this.a);
        return;
      }
      MiniLabelInput.access$000(this.a).removeIcon();
      return;
    }
    MiniLabelInput.access$200(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.f
 * JD-Core Version:    0.6.2
 */