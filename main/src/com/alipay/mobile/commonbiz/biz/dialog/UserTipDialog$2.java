package com.alipay.mobile.commonbiz.biz.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

class UserTipDialog$2
  implements View.OnClickListener
{
  UserTipDialog$2(UserTipDialog paramUserTipDialog)
  {
  }

  public void onClick(View paramView)
  {
    if (UserTipDialog.c(this.a) != null)
      UserTipDialog.c(this.a).dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.dialog.UserTipDialog.2
 * JD-Core Version:    0.6.2
 */