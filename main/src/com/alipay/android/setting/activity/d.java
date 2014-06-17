package com.alipay.android.setting.activity;

import android.app.AlertDialog;
import android.text.Editable;
import android.widget.Button;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.PWDInputListener;

final class d
  implements APSixNumberPwdInputBox.PWDInputListener
{
  d(BaseSettingActivity paramBaseSettingActivity, AlertDialog paramAlertDialog)
  {
  }

  public final void pwdInputed(int paramInt, Editable paramEditable)
  {
    Button localButton = this.a.getButton(-1);
    if (paramEditable.length() == 6);
    for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.d
 * JD-Core Version:    0.6.2
 */