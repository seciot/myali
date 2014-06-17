package com.alipay.mobile.alipassapp.ui.common;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.alipassapp.biz.common.e;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.More;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.h5container.service.H5Service;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public final class an
{
  private static an a;
  private String b = "";
  private String c = "";
  private String d = "";
  private String e = "";
  private MicroApplication f;
  private long g;

  public static an a()
  {
    if (a == null)
      a = new an();
    return a;
  }

  private void b()
  {
    AlipassJsBridge localAlipassJsBridge = new AlipassJsBridge((Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get());
    Bundle localBundle = new Bundle();
    if (StringUtils.isNotBlank(this.d))
      if (!StringUtils.contains(this.b, "?"))
        break label99;
    label99: for (this.b = (this.b + "&" + this.d); StringUtils.isBlank(this.b); this.b = (this.b + "?" + this.d))
      return;
    localBundle.putString("u", this.b);
    if (StringUtils.isNotBlank(this.c))
    {
      localBundle.putString("dt", this.c);
      localBundle.putString("rt", "NO");
    }
    localBundle.putBoolean("st", true);
    localBundle.putBoolean("sb", false);
    localBundle.putBoolean("sl", true);
    H5Service localH5Service = (H5Service)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(H5Service.class.getName());
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localAlipassJsBridge);
    localH5Service.startWebActivity(this.f, localBundle, localArrayList);
    long l = System.currentTimeMillis() - this.g;
    new StringBuilder("卡券webview的AlipassWebviewUtils加载时间").append(l).toString();
  }

  public final void a(Intent paramIntent, MicroApplication paramMicroApplication)
  {
    this.g = System.currentTimeMillis();
    this.f = paramMicroApplication;
    if (paramIntent == null);
    label109: AppManageService localAppManageService;
    do
    {
      while (true)
      {
        return;
        if (paramIntent.getExtras().get("more") != null);
        for (AlipassInfo.More localMore = (AlipassInfo.More)paramIntent.getExtras().get("more"); localMore != null; localMore = null)
        {
          this.b = localMore.getUrl();
          this.c = localMore.getTitle();
          this.d = localMore.getParams();
          this.e = localMore.getAppId();
          this.d = e.a(this.d);
          if (!StringUtils.isBlank(this.e))
            break label109;
          b();
          return;
        }
      }
      localAppManageService = (AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName());
    }
    while (localAppManageService == null);
    localAppManageService.auth(this.e, new ao(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.an
 * JD-Core Version:    0.6.2
 */