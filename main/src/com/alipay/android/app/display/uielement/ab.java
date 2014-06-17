package com.alipay.android.app.display.uielement;

import android.text.TextUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class ab
  implements CompoundButton.OnCheckedChangeListener
{
  ab(UICheckBox paramUICheckBox)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if ((!UICheckBox.b(this.a)) && (TextUtils.equals(this.a.a("show_toast"), "true")) && (!TextUtils.isEmpty(this.a.a("toast_message"))))
    {
      this.a.t();
      UICheckBox.c(this.a).setOnCheckedChangeListener(null);
      CheckBox localCheckBox = UICheckBox.c(this.a);
      if (!paramBoolean);
      for (boolean bool = true; ; bool = false)
      {
        localCheckBox.setChecked(bool);
        UICheckBox.c(this.a).setOnCheckedChangeListener(this);
        return;
      }
    }
    this.a.a("checked", Boolean.valueOf(paramBoolean));
    UICheckBox.d(this.a);
    UICheckBox.e(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ab
 * JD-Core Version:    0.6.2
 */