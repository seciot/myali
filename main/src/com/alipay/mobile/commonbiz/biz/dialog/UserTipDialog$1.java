package com.alipay.mobile.commonbiz.biz.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

class UserTipDialog$1
  implements View.OnClickListener
{
  UserTipDialog$1(UserTipDialog paramUserTipDialog)
  {
  }

  public void onClick(View paramView)
  {
    UserTipDialog.getBundle(this.a);
    UserTipDialog.b(this.a).setClickable(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.dialog.UserTipDialog.1
 * JD-Core Version:    0.6.2
 */