package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class y
  implements DialogInterface.OnClickListener
{
  y(BaseAuthActivity.b paramb, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    while (true)
    {
      try
      {
        UserInfo localUserInfo = BaseAuthActivity.q(this.b.a).getUserInfo();
        if (localUserInfo != null)
        {
          str = localUserInfo.getLogonId();
          Bundle localBundle = null;
          if (str != null)
          {
            localBundle = new Bundle();
            localBundle.putString("logonId", str);
          }
          BaseAuthActivity.r(this.b.a).startApp("20000055", this.a, localBundle);
          return;
        }
      }
      catch (AppLoadException localAppLoadException)
      {
        localAppLoadException.getMessage();
        this.b.a.toast("启动应用失败：" + localAppLoadException.getLocalizedMessage(), 0);
        return;
      }
      String str = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.y
 * JD-Core Version:    0.6.2
 */