package com.alipay.mobile.common.helper;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class ReadSettingServerUrl
{
  private static ReadSettingServerUrl a;
  private static String b = "https://mclient.alipay.com/gateway.do";
  private String c = "https://mobilegw.alipay.com/mgw.htm";

  private ReadSettingServerUrl()
  {
    String str = ((ChannelConfig)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ChannelConfig.class.getName())).getConfig("isSandbox");
    if ((str != null) && ("true".equalsIgnoreCase(str)));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        this.c = "https://mobiletestabc.alipaydev.com/mobilegw/net/mgw.htm";
      return;
    }
  }

  public static final String getCcdcURL(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/CcrCcdcUrl", "https://ccdcapi.alipay.com/cacheWapCardInfo.json");
    return "https://ccdcapi.alipay.com/cacheWapCardInfo.json";
  }

  public static final String getCmsHost(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/CmsUrl", "http://d.alipay.com");
    return "http://d.alipay.com";
  }

  public static final String getCmsUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/CmsUrl", "http://d.alipay.com/mbresultyy/prc.htm");
    return "http://d.alipay.com/mbresultyy/prc.htm";
  }

  public static final String getCpbSignAddCmsUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/CpbSignAddUrl", "http://d.alipay.net/cpbSign/add.htm");
    return "http://d.alipay.com/cpbSign/add.htm";
  }

  public static final String getInnerBatchPayPrefix1(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/inner_batch_pay_prefix1", "http://maliprod.alipay.com/batch_payment.do");
    return "http://maliprod.alipay.com/batch_payment.do";
  }

  public static final String getInnerBatchPayPrefix2(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/inner_batch_pay_prefix2", "http://mali.alipay.com/batch_payment.do");
    return "http://mali.alipay.com/batch_payment.do";
  }

  public static final String getInnerSinglePayPrefix1(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/inner_single_pay_prefix1", "http://maliprod.alipay.com/w/trade_pay.do");
    return "http://maliprod.alipay.com/w/trade_pay.do";
  }

  public static final String getInnerSinglePayPrefix2(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/inner_single_pay_prefix2", "http://mali.alipay.com/w/trade_pay.do");
    return "http://mali.alipay.com/w/trade_pay.do";
  }

  public static ReadSettingServerUrl getInstance()
  {
    try
    {
      if (a == null)
        a = new ReadSettingServerUrl();
      ReadSettingServerUrl localReadSettingServerUrl = a;
      return localReadSettingServerUrl;
    }
    finally
    {
    }
  }

  public static final String getNonsupportCmsUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/NonsupportUrl", "http://d.alipay.net/cpbSign/nonsupport.htm");
    return "http://d.alipay.com/cpbSign/nonsupport.htm";
  }

  public static final String getOuterPayPrefix(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/outer_pay_prefix", "http://wappaygw.alipay.com/service/rest.htm");
    return "http://wappaygw.alipay.com/service/rest.htm";
  }

  public static final String getPoliceCenterUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/SafePoliceCenterUrl", "https://clientsc.alipay.com/account/gateway.htm");
    return "https://clientsc.alipay.com/account/gateway.htm";
  }

  public static final String getRobotUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/ContainerServerUrl", "https://cschannel.alipay.com/mobile/csrouter.htm?platform=android");
    return "https://cschannel.alipay.com/mobile/csrouter.htm?platform=android";
  }

  public static final String getSafePayServerUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/SafePayServerUrl", b);
    return "https://mclient.alipay.com/gateway.do";
  }

  public static final String getStatisticsUrl(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/StatisticsServerUrl", "http://mdap.alipay.com/loggw/log.do");
    return "http://mdap.alipay.com/loggw/log.do";
  }

  public static final String getTaobaoMobileDomain(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/taobao_mobile_domain", "m.taobao.com");
    return "m.taobao.com";
  }

  public static final String getTmallMobileDomain(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/tmall_mobile_domain", "m.tmall.com");
    return "m.tmall.com";
  }

  public static String getValue(Context paramContext, String paramString1, String paramString2)
  {
    Cursor localCursor = paramContext.getContentResolver().query(Uri.parse(paramString1), null, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() > 0))
    {
      localCursor.moveToFirst();
      paramString2 = localCursor.getString(0);
      localCursor.close();
    }
    return paramString2;
  }

  public static boolean isDebug(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 16384).flags;
      int j = i & 0x2;
      boolean bool = false;
      if (j != 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static final void setSafePayUrl(String paramString)
  {
    b = paramString;
  }

  public final String getGWFURL(Context paramContext)
  {
    if (isDebug(paramContext))
      return getValue(paramContext, "content://com.alipay.setting/GWFServerUrl", this.c);
    return this.c;
  }

  public String getmUrl()
  {
    return this.c;
  }

  public final boolean isOnline(Context paramContext)
  {
    return (!isDebug(paramContext)) || (getGWFURL(paramContext).indexOf(".alipay.net") <= 0);
  }

  public void setmUrl(String paramString)
  {
    this.c = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.helper.ReadSettingServerUrl
 * JD-Core Version:    0.6.2
 */