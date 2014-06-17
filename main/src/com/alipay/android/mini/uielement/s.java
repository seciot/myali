package com.alipay.android.mini.uielement;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.alipay.android.mini.widget.CustomEditText;

final class s
  implements View.OnFocusChangeListener
{
  s(UIInput paramUIInput)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    UIInput.a(this.a).justInitIconListener(new t(this));
    UIInput.a(this.a).onFocusChange(paramView, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.s
 * JD-Core Version:    0.6.2
 */