package com.alipay.mobile.about.service;

import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.service.ext.about.UpdateInfo;
import com.alipay.mobile.framework.service.ext.about.UpdateServices;
import com.alipay.mobile.security.securitycommon.ErrMsgConstants;
import com.alipay.mobilegw.biz.shared.processer.login.UserLoginResult;

final class f
  implements Runnable
{
  f(UpdateBroadcastReceiver paramUpdateBroadcastReceiver, Context paramContext, Intent paramIntent)
  {
  }

  public final void run()
  {
    UpdateServices localUpdateServices = UpdateBroadcastReceiver.getInstance();
    if ("com.alipay.mobile.about.UPDATE_CHECK_VERSION".equals(this.b.getAction()))
      localUpdateServices.checkUpdate(this.b.getStringExtra("userId"));
    UserLoginResult localUserLoginResult;
    int i;
    String str;
    if ("com.alipay.mobile.about.UPDATE_CLIENT".equals(this.b.getAction()))
    {
      localUserLoginResult = (UserLoginResult)this.b.getSerializableExtra("_updateInfo");
      if (localUserLoginResult != null)
      {
        i = ErrMsgConstants.ABOUT_UPDATE_NONEED;
        if (!ErrMsgConstants.LOGIN_UPDATE_NONEED.equals(localUserLoginResult.getExistNewVersion()))
        {
          str = localUserLoginResult.getExistNewVersion();
          if (!ErrMsgConstants.LOGIN_UPDATE_OPTIONAL.equals(str))
            break label187;
          i = ErrMsgConstants.ABOUT_UPDATE_OPTIONAL;
        }
      }
    }
    while (true)
    {
      localUpdateServices.update(new UpdateInfo(localUserLoginResult.getDownloadURL(), localUserLoginResult.getMemo(), null, localUserLoginResult.getCurrentProductVersion(), i));
      if (("com.alipay.mobile.LAUNCHER_STATUS_CHANGED".equals(this.b.getAction())) && ("state=onResume".equals(this.b.getStringExtra("data"))))
      {
        m.d();
        localUpdateServices.updateImmediately();
      }
      return;
      label187: if (ErrMsgConstants.LOGIN_UPDATE_MUST.equals(str))
        i = ErrMsgConstants.ABOUT_UPDATE_MUST;
      else if (ErrMsgConstants.LOGIN_UPDATE_NOTICE.equals(str))
        i = ErrMsgConstants.ABOUT_UPDATE_NOTICE;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.f
 * JD-Core Version:    0.6.2
 */