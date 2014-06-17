package com.alipay.mobile.security.startIntercept;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.CommentHelper;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.interfaces.RouterInterface;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobilesecurity.a.a.a;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils;

public class SecurityStartIntercept
  implements RouterInterface
{
  public final String a = SecurityStartIntercept.class.getName();
  private SchemeService b;
  private AuthService c;
  private AccountService d;

  private static String a()
  {
    return CommentHelper.extractZipComment(AlipayApplication.getInstance().getPackageManager().getApplicationInfo(AlipayApplication.getInstance().getPackageName(), 128).sourceDir);
  }

  private boolean a(Uri paramUri)
  {
    if (paramUri != null)
      new StringBuilder("startMain").append(paramUri.toString()).toString();
    int i;
    int j;
    label61: Intent localIntent;
    boolean bool1;
    if (!TextUtils.isEmpty(this.d.getCurrentLoginLogonId()))
    {
      i = 1;
      if ((paramUri == null) || (TextUtils.isEmpty(paramUri.toString())))
        break label162;
      j = 1;
      localIntent = new Intent("com.alipay.security.init");
      if (i != 0)
        break label168;
      bool1 = true;
      label79: localIntent.putExtra("genTid", bool1);
      if ((j == 0) && (i == 0))
        break label174;
      if (j != 0)
      {
        this.c.notifyUnlockLoginApp(false, false);
        localIntent.putExtra("toBiz", true);
        localIntent.putExtra("inited_param", paramUri.toString());
      }
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance()).sendBroadcast(localIntent);
    }
    while (true)
    {
      return true;
      i = 0;
      break;
      label162: j = 0;
      break label61;
      label168: bool1 = false;
      break label79;
      try
      {
        label174: LocalBroadcastManager.getInstance(AlipayApplication.getInstance()).sendBroadcast(localIntent);
        String str = a();
        if (!TextUtils.isEmpty(str))
        {
          Uri localUri = Uri.parse(str);
          if ((localUri != null) && (SecurityUtil.b(localUri.toString())) && (!SecurityUtil.b()) && (CacheSet.getInstance(AlipayApplication.getInstance().getApplicationContext()).getBoolean("isAlreadyFromRegister" + AppInfo.getInstance().getmProductVersion(), true)))
          {
            b(localUri);
            CacheSet.getInstance(AlipayApplication.getInstance().getApplicationContext()).putBoolean("isAlreadyFromRegister" + AppInfo.getInstance().getmProductVersion(), false);
          }
          boolean bool2 = c(localUri);
          if (bool2)
            return false;
        }
      }
      catch (Exception localException)
      {
        new StringBuilder().append(localException.getMessage()).toString();
      }
    }
    return true;
  }

  private void b(Uri paramUri)
  {
    MicroApplication localMicroApplication = AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp();
    if ((localMicroApplication != null) && (localMicroApplication.getAppId().equalsIgnoreCase("20000008")))
      this.c.cancelLogin();
    try
    {
      Thread.sleep(500L);
      if (this.b == null);
    }
    catch (InterruptedException localInterruptedException)
    {
      try
      {
        this.b.process(paramUri);
        return;
        localInterruptedException = localInterruptedException;
      }
      catch (Exception localException)
      {
        localException.getMessage();
      }
    }
  }

  private boolean c(Uri paramUri)
  {
    boolean bool1 = a.a(paramUri);
    boolean bool2 = false;
    if (bool1)
    {
      b(paramUri);
      bool2 = true;
    }
    return bool2;
  }

  public boolean callback(Context paramContext, Uri paramUri)
  {
    while (true)
    {
      try
      {
        String str1 = a();
        if (!TextUtils.isEmpty(str1))
        {
          String str2 = CommentHelper.getValueForKey(Uri.parse(str1), "channelId");
          if (!TextUtils.isEmpty(str2))
          {
            AppInfo.getInstance().setChannels(str2);
            CacheSet.getInstance(AlipayApplication.getInstance()).putString("channels", str2);
          }
        }
        if (paramUri != null)
          new StringBuilder("callback").append(paramUri.toString()).toString();
        TaobaoSsoLoginUtils.init(AlipayApplication.getInstance());
        AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
        this.b = ((SchemeService)localAlipayApplication.getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
        this.c = ((AuthService)localAlipayApplication.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
        this.d = ((AccountService)localAlipayApplication.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
        if (!c(paramUri))
        {
          if ((paramUri == null) || (!SecurityUtil.b(paramUri.toString())))
            break label221;
          b(paramUri);
          i = 1;
          if (i == 0);
        }
        else
        {
          return false;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
        continue;
      }
      return a(paramUri);
      label221: int i = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.startIntercept.SecurityStartIntercept
 * JD-Core Version:    0.6.2
 */