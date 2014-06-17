package com.alipay.mobile.appstoreapp.util;

import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;

public class AppCenterLogUtil
{
  private static final String a = AppCenterLogUtil.class.getName();

  public static void a(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", paramString + "Home", "oneKeyLoginView", "open" + paramString);
  }

  public static void b(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "-", "oneKeyLoginView", "download" + paramString);
  }

  public static void c(String paramString)
  {
    if (paramString == null)
      return;
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", paramString + "Home", "desktopView", "desktop" + paramString + "Icon");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.util.AppCenterLogUtil
 * JD-Core Version:    0.6.2
 */