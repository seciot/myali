package com.alipay.mobile.nfc.strategy;

import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class NfcStrategy
{
  public static String a = "NFC_BUSINESS_JUMPABLE";
  public static String b = "NFC_QUICKPASS_ENABLE";
  public static String c = "NFC_BJRECHARGE_ENABLE";
  private static String d = "NFC/Strategy";

  public static boolean a()
  {
    return a(b);
  }

  private static boolean a(String paramString)
  {
    ConfigService localConfigService = (ConfigService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName());
    return (localConfigService != null) && (localConfigService.getConfig(paramString) != null) && ("YES".equalsIgnoreCase(localConfigService.getConfig(paramString)));
  }

  public static boolean b()
  {
    return a(a);
  }

  public static boolean c()
  {
    return a(c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.strategy.NfcStrategy
 * JD-Core Version:    0.6.2
 */