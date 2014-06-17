package com.alipay.mobile.framework.service.ext.logagent;

import android.os.Bundle;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.util.List;

public class AlipayLogAgentServiceImpl extends AlipayLogAgentService
{
  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void onError(Throwable paramThrowable, String paramString)
  {
  }

  public void writeLog(AgentLogInfo paramAgentLogInfo)
  {
    List localList = paramAgentLogInfo.getExtendParams();
    if ((localList != null) && (localList.size() > 0))
    {
      String[] arrayOfString = new String[localList.size()];
      localList.toArray(arrayOfString);
      AlipayLogAgent.writeLog(getMicroApplicationContext().getApplicationContext(), paramAgentLogInfo.getBehaviourIdEnum(), paramAgentLogInfo.getBehaviourStatus(), paramAgentLogInfo.getStatusMessage(), paramAgentLogInfo.getAppID(), paramAgentLogInfo.getAppVersion(), paramAgentLogInfo.getViewID(), paramAgentLogInfo.getRefViewID(), paramAgentLogInfo.getSeed(), paramAgentLogInfo.getUrl(), paramAgentLogInfo.getBehaviourPro(), paramAgentLogInfo.getLogPro(), arrayOfString);
      return;
    }
    AlipayLogAgent.writeLog(getMicroApplicationContext().getApplicationContext(), paramAgentLogInfo.getBehaviourIdEnum(), paramAgentLogInfo.getBehaviourStatus(), paramAgentLogInfo.getStatusMessage(), paramAgentLogInfo.getAppID(), paramAgentLogInfo.getAppVersion(), paramAgentLogInfo.getViewID(), paramAgentLogInfo.getRefViewID(), paramAgentLogInfo.getSeed());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.logagent.AlipayLogAgentServiceImpl
 * JD-Core Version:    0.6.2
 */