package com.alipay.mobile.withdraw.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class l
  implements DialogInterface.OnClickListener
{
  l(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(AlipayApplication.getInstance().getMicroApplicationContext());
    boolean bool = false;
    if (localUserInfo != null)
    {
      String str = localUserInfo.getUserId();
      bool = false;
      if (str != null)
        bool = localUserInfo.isWirelessUser();
    }
    if (bool);
    try
    {
      WithdrawActivity.g(this.a).getMicroApplicationContext().startApp(WithdrawActivity.f(this.a).getAppId(), "20000058", null);
      return;
      WithdrawActivity.i(this.a).getMicroApplicationContext().startApp(WithdrawActivity.h(this.a).getAppId(), "20000051", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.l
 * JD-Core Version:    0.6.2
 */