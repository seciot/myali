package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.content.res.Resources;
import com.alipay.android.app.R.color;
import com.alipay.android.mini.widget.CustomEditText;
import com.alipay.android.mini.widget.CustomEditText.CustomOnFocusChangeListener;

final class r
  implements CustomEditText.CustomOnFocusChangeListener
{
  r(UIInput paramUIInput)
  {
  }

  public final void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (UIInput.getBundle(this.a) != null) && (UIInput.getBundleByComponentName(this.a) != null))
      UIInput.getBundle(this.a).setTextColor(UIInput.getBundleByComponentName(this.a).getResources().getColor(R.color.BundlesManager));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.r
 * JD-Core Version:    0.6.2
 */