package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class c
  implements View.OnClickListener
{
  c(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, SecurityBindPhoneActivity_.class);
    AccountInfoActivity.f(this.a).getMicroApplicationContext().startActivity(AccountInfoActivity.e(this.a), localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.c
 * JD-Core Version:    0.6.2
 */