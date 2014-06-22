package com.alipay.mobile.commonbiz.biz.dialog;

import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;

class UserTipDialog$3
  implements PopupWindow.OnDismissListener
{
  UserTipDialog$3(UserTipDialog paramUserTipDialog)
  {
  }

  public void onDismiss()
  {
    UserTipDialog.dexopt(this.a).setClickable(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.dialog.UserTipDialog.3
 * JD-Core Version:    0.6.2
 */