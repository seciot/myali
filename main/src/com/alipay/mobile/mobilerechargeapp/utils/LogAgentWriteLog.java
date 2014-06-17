package com.alipay.mobile.mobilerechargeapp.utils;

import android.content.Context;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

public class LogAgentWriteLog
{
  public static void a(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.OPENPAGE, "-", "-", "10000003", "-", "10000003Home", "-", "-", "-", "u", "c", new String[] { "alipay", "todo", "-" });
  }

  public static void a(Context paramContext, String paramString)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.OPENPAGE, "-", "-", "10000003", "-", "10000003Home", "-", "-", "-", "u", "c", new String[] { "alipay", "publicplatform", paramString });
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "remindManageView"; ; str = "phoneRechargeResultView")
    {
      AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "－", str, "switchOpen", "-", "u", "c", new String[] { "alipay", "-", "-" });
      return;
    }
  }

  public static void b(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.OPENPAGE, "-", "-", "10000003", "-", "10000003Home", "-", "-", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "remindManageView"; ; str = "phoneRechargeResultView")
    {
      AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "-", str, "switchClose", "-", "u", "c", new String[] { "alipay", "-", "-" });
      return;
    }
  }

  public static void c(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "addPhoneRemindView", "remindManageView", "addPhoneRemind", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }

  public static void d(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "remindManageView", "addPhoneRemindView", "confirmButton", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }

  public static void e(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "-", "10000003Home", "rechargeButton", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }

  public static void f(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.OPENPAGE, "-", "-", "10000003", "-", "phoneRechargeResultView", "-", "success|fail", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }

  public static void g(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "-", "phoneRechargeResultView", "cms", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }

  public static void h(Context paramContext)
  {
    AlipayLogAgent.writeLog(paramContext, BehaviourIdEnum.CLICKED, "-", "-", "10000003", "-", "-", "phoneRechargeResultView", "finishButton", "-", "u", "c", new String[] { "alipay", "-", "-" });
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog
 * JD-Core Version:    0.6.2
 */