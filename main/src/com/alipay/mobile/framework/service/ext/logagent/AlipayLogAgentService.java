package com.alipay.mobile.framework.service.ext.logagent;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class AlipayLogAgentService extends ExternalService
{
  public abstract void onError(Throwable paramThrowable, String paramString);

  public abstract void writeLog(AgentLogInfo paramAgentLogInfo);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.logagent.AlipayLogAgentService
 * JD-Core Version:    0.6.2
 */