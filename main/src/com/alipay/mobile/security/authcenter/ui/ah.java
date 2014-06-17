package com.alipay.mobile.security.authcenter.ui;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;

final class ah
  implements CompoundButton.OnCheckedChangeListener
{
  ah(RegisterDownSmsFragment paramRegisterDownSmsFragment)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.d.getInputedText().length() >= 11))
    {
      this.a.f.setEnabled(true);
      return;
    }
    this.a.f.setEnabled(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ah
 * JD-Core Version:    0.6.2
 */