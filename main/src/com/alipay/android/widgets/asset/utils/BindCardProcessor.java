package com.alipay.android.widgets.asset.utils;

import android.os.Bundle;
import com.alipay.mobile.base.config.SwitchConfigUtils;
import com.alipay.mobile.common.misc.ExtStringUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class BindCardProcessor
{
  public static String a = "BANKCARD_ADD_LOGIN_INTRO_ENABLE";
  private MicroApplicationContext b;
  private SchemeService c;
  private AssetCacheHelper d;
  private AuthService e;

  public BindCardProcessor(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = paramMicroApplicationContext;
    this.c = ((SchemeService)paramMicroApplicationContext.findServiceByInterface(SchemeService.class.getName()));
    this.e = ((AuthService)paramMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
    this.d = AssetCacheHelper.a();
  }

  public final void a()
  {
    boolean bool1 = StringUtils.equals("true", SwitchConfigUtils.getConfigValue(a));
    BindCardProcessor.class.getName();
    new StringBuilder("onReceive---openwap，SwitchConfig：").append(bool1).append(",isLogin=").append(this.e.isLogin()).toString();
    if (!bool1);
    UserInfo localUserInfo;
    String str1;
    do
    {
      do
        return;
      while (!this.e.isLogin());
      localUserInfo = this.e.getUserInfo();
      str1 = localUserInfo.getUserId();
      BindCardProcessor.class.getName();
      new StringBuilder("LastScheme():").append(this.c.getLastScheme()).toString();
    }
    while (!ExtStringUtil.isEmpty(this.c.getLastScheme()));
    boolean bool2 = localUserInfo.isBindCard();
    Object localObject = this.d.a(str1, str1 + AssetCacheHelper.a);
    if (localObject != null);
    for (String str2 = localObject.toString(); ; str2 = null)
    {
      BindCardProcessor.class.getName();
      new StringBuilder("onReceive-cacheOpendWapFlag").append(str2).toString();
      if ((!StringUtils.equals(AssetCacheHelper.b, str2)) && (!bool2));
      for (int i = 1; ; i = 0)
        while (true)
        {
          if (i == 0)
            break label373;
          Bundle localBundle = new Bundle();
          localBundle.putString("isIntroEnabled", "true");
          localBundle.putString("source", "login");
          try
          {
            MicroApplication localMicroApplication = this.b.findTopRunningApp();
            String str3 = null;
            if (localMicroApplication != null)
              str3 = localMicroApplication.getAppId();
            BindCardProcessor.class.getName();
            new StringBuilder("onReceive-TopRunningApp").append(str3).toString();
            if ("09999983".equals(str3))
              break;
            AlipayApplication.getInstance().getMicroApplicationContext().startApp("20000004", "09999983", localBundle);
            this.d.a(str1, str1 + AssetCacheHelper.a, AssetCacheHelper.b);
            return;
          }
          catch (Exception localException)
          {
            BindCardProcessor.class.getName();
            return;
          }
        }
      label373: break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.utils.BindCardProcessor
 * JD-Core Version:    0.6.2
 */