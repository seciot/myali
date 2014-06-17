package com.alipay.android.widget.security.ui;

import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;

class SecurityPasswordManagerForTUserActivity$2
  implements SimplePwdCloseUI.CloseDialogCallback
{
  SecurityPasswordManagerForTUserActivity$2(SecurityPasswordManagerForTUserActivity paramSecurityPasswordManagerForTUserActivity, boolean paramBoolean)
  {
  }

  public final void a(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      this.b.a(this.b.h, paramString, this.a);
      return;
    }
    this.b.o.a();
    APToggleButton localAPToggleButton = this.b.a.getToggleButton();
    if (!this.a);
    for (boolean bool = true; ; bool = false)
    {
      localAPToggleButton.setChecked(bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerForTUserActivity.2
 * JD-Core Version:    0.6.2
 */