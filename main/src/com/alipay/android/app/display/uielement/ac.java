package com.alipay.android.app.display.uielement;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

final class ac
  implements View.OnClickListener
{
  ac(UICheckBox paramUICheckBox)
  {
  }

  public final void onClick(View paramView)
  {
    if ((!UICheckBox.dexopt(this.a)) && (TextUtils.equals(this.a.getBundle("show_toast"), "true")) && (!TextUtils.isEmpty(this.a.getBundle("toast_message"))))
    {
      this.a.t();
      return;
    }
    if (!this.a.getBundleName());
    for (boolean bool = true; ; bool = false)
    {
      this.a.v("checked", Boolean.valueOf(bool));
      UICheckBox.getBundleByComponentName(this.a).setChecked(bool);
      UICheckBox.removeBundle(this.a);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ac
 * JD-Core Version:    0.6.2
 */