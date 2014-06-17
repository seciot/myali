package com.alipay.mobile.nfc.app;

import android.content.Context;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

public class LogAgent
{
  public static void a(Context paramContext)
  {
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "20000071";
    localAlipayLogInfo.viewID = "nfcReadCardIndex";
    AlipayLogAgent.writeLog(paramContext, localAlipayLogInfo);
  }

  public static void a(Context paramContext, String paramString)
  {
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "20000071";
    localAlipayLogInfo.viewID = "nfcReadCardResult";
    localAlipayLogInfo.refViewID = "nfcReadCardIndex";
    localAlipayLogInfo.seed = paramString;
    AlipayLogAgent.writeLog(paramContext, localAlipayLogInfo);
  }

  public static void b(Context paramContext)
  {
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "20000071";
    localAlipayLogInfo.viewID = "nfcReadCardUnkown ";
    localAlipayLogInfo.refViewID = "nfcReadCardIndex";
    AlipayLogAgent.writeLog(paramContext, localAlipayLogInfo);
  }

  public static void c(Context paramContext)
  {
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "20000071";
    localAlipayLogInfo.viewID = "nfcReadAlipayCard";
    AlipayLogAgent.writeLog(paramContext, localAlipayLogInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.app.LogAgent
 * JD-Core Version:    0.6.2
 */