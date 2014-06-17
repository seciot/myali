package com.alipay.android.mini.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.mini.util.CardValidateInputUtil;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.android.mini.widget.CustomEditText;

final class n
  implements View.OnClickListener
{
  n(UIInput paramUIInput)
  {
  }

  public final void onClick(View paramView)
  {
    UIInput.a(this.a).requestFocus();
    UIInput.b(this.a).a();
    UIPropUtil.a(UIInput.a(this.a).getWindowToken(), UIInput.c(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.n
 * JD-Core Version:    0.6.2
 */