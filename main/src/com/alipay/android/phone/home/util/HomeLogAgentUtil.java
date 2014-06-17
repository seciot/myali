package com.alipay.android.phone.home.util;

import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;

public class HomeLogAgentUtil
{
  private static final String a = HomeLogAgentUtil.class.getName();

  public static void a()
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "20000003Home", "alipayHome", "20000003Icon");
  }

  public static void a(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", paramString + "Home", "alipayHome", paramString + "Icon");
  }

  public static void b()
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "10000007Home", "alipayHome", "10000007Icon");
  }

  public static void b(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", paramString + "Home", "alipayHome", paramString + "Icon");
  }

  public static void c()
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "appCenter", "alipayHome", "moreIcon");
  }

  public static void c(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "alipayHome", "sendDesktopConfirmView", paramString + "sendDesktop");
  }

  public static void d()
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "oneKeyLoginView", "appCenter", "oneKeyLoginIcon");
  }

  public static void d(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", paramString + "Home", "appCenter", paramString + "Icon");
  }

  public static void e(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.LONGCLICKED, "-", "-", "home", "-", "appCenter", "sendDesktopConfirmView", paramString + "sendDesktop");
  }

  public static void f(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.LONGCLICKED, "-", "-", "home", "-", "sendDesktopConfirmView", "alipayHome", "remove" + paramString);
  }

  public static void g(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "alipayHome", "sendDesktopConfirmView", "remove" + paramString + "More");
  }

  public static void h(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.LONGCLICKED, "-", "-", "home", "-", "addIndexConfirmView", "appCenter", "add" + paramString);
  }

  public static void i(String paramString)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "-", "-", "home", "-", "alipayHome", "addIndexConfirmView", "add" + paramString + "Index");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.HomeLogAgentUtil
 * JD-Core Version:    0.6.2
 */