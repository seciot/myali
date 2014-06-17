package com.alipay.mobile.alipassapp.biz.service;

import android.os.Bundle;
import android.util.Base64;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.mobile.alipassapp.biz.common.d;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverycommon.api.service.AlipassAppEntryDistributeService;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;

public class a extends AlipassAppEntryDistributeService
{
  private static final String a = a.class.getSimpleName();
  private d b;
  private long c;

  private static void a(String paramString, MicroApplicationContext paramMicroApplicationContext)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("entry", Base64.encodeToString(paramString.getBytes(), 0));
    try
    {
      paramMicroApplicationContext.startApp("", "80000001", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getMessage();
    }
  }

  private boolean a(String paramString)
  {
    PassListResult localPassListResult = this.b.b(paramString);
    return (localPassListResult != null) && (localPassListResult.getHasCurrent() == 1);
  }

  private boolean b(String paramString)
  {
    PassListResult localPassListResult = this.b.d(paramString);
    return (localPassListResult != null) && (localPassListResult.getHasCurrent() == 1);
  }

  public void distributeApp(String paramString1, String paramString2, Bundle paramBundle, MicroApplicationContext paramMicroApplicationContext)
  {
    try
    {
      this.c = System.currentTimeMillis();
      if ((paramString2 == null) || (paramBundle == null))
        return;
      if (paramMicroApplicationContext == null)
        return;
      if (!StringUtils.equalsIgnoreCase("20000021", paramString2))
        break label129;
      paramBundle.putString("b", "t");
      if ((paramBundle.getBoolean("discovey_index_has_travel_data", false)) || (a("TRAVEL")) || (b("TRAVEL")))
      {
        paramMicroApplicationContext.startApp(paramString1, paramString2, paramBundle);
        return;
      }
    }
    catch (Exception localException)
    {
      return;
    }
    a("/pages/travel.html?isFrom=assetIndex", paramMicroApplicationContext);
    long l2 = System.currentTimeMillis() - this.c;
    new StringBuilder("旅行webapp加载时间").append(l2).toString();
    this.c = 0L;
    return;
    label129: if (StringUtils.equalsIgnoreCase("20000030", paramString2))
    {
      paramBundle.putString("b", "c");
      if ((paramBundle.getBoolean("discovey_index_has_coupon_data", false)) || (a("COUPON")) || (b("COUPON")))
      {
        paramMicroApplicationContext.startApp(paramString1, paramString2, paramBundle);
        return;
      }
      a("/pages/coupon.html?isFrom=assetIndex", paramMicroApplicationContext);
      long l1 = System.currentTimeMillis() - this.c;
      new StringBuilder("卡券webapp加载时间").append(l1).toString();
      this.c = 0L;
      return;
    }
    if (StringUtils.equalsIgnoreCase("20000062", paramString2))
    {
      paramBundle.putString("b", "m");
      if ((paramBundle.getBoolean("discovey_index_has_member_data", false)) || (b("MCARD")))
        paramBundle.putBoolean("has_member_data", true);
      paramMicroApplicationContext.startApp(paramString1, paramString2, paramBundle);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    if (this.b == null)
      this.b = new d(getMicroApplicationContext());
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.a
 * JD-Core Version:    0.6.2
 */