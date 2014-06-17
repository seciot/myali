package com.alipay.mobile.common.ui.contacts.util;

import android.content.Context;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

public class LogAgentUtil
{
  public static final void log(Context paramContext, BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    AlipayLogAgent.writeLog(paramContext, paramBehaviourIdEnum, null, null, paramString4, null, paramString1, paramString2, paramString3);
  }

  public static final void log(Context paramContext, BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString)
  {
    AlipayLogAgent.writeLog(paramContext, paramBehaviourIdEnum, null, null, paramString4, null, paramString1, paramString2, paramString3, null, null, null, paramArrayOfString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.LogAgentUtil
 * JD-Core Version:    0.6.2
 */