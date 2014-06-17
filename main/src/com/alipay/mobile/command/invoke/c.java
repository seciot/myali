package com.alipay.mobile.command.invoke;

import android.os.Build;
import android.os.Build.VERSION;
import com.alipay.mobile.command.api.CmdCenterFacade;
import com.alipay.mobile.command.api.model.MapConstructor;
import com.alipay.mobile.command.api.model.ReportStatusReq;
import com.alipay.mobile.command.api.model.TaskExecuteResultReq;
import com.alipay.mobile.command.manager.RuntimeInfoManager;
import java.util.ArrayList;
import java.util.List;

final class c
  implements Runnable
{
  c(CmdCenterFacadeInvoke paramCmdCenterFacadeInvoke, String paramString, boolean paramBoolean)
  {
  }

  public final void run()
  {
    try
    {
      ReportStatusReq localReportStatusReq = new ReportStatusReq();
      ArrayList localArrayList1 = new ArrayList();
      TaskExecuteResultReq localTaskExecuteResultReq = new TaskExecuteResultReq();
      localTaskExecuteResultReq.setUuid(this.a);
      if (this.b);
      for (String str = "Terminated"; ; str = "Failed")
      {
        localTaskExecuteResultReq.setState(str);
        localArrayList1.add(localTaskExecuteResultReq);
        localReportStatusReq.setExecuteResults(localArrayList1);
        ArrayList localArrayList2 = new ArrayList();
        MapConstructor localMapConstructor1 = new MapConstructor();
        localMapConstructor1.setKey("PlatformVersion");
        localMapConstructor1.setValue(Build.VERSION.RELEASE);
        MapConstructor localMapConstructor2 = new MapConstructor();
        localMapConstructor2.setKey("UserAgent");
        localMapConstructor2.setValue(Build.MANUFACTURER + Build.MODEL);
        MapConstructor localMapConstructor3 = new MapConstructor();
        localMapConstructor3.setKey("ProductID");
        localMapConstructor3.setValue(RuntimeInfoManager.getInstance().getProductId());
        MapConstructor localMapConstructor4 = new MapConstructor();
        localMapConstructor4.setKey("userId");
        localMapConstructor4.setValue(RuntimeInfoManager.getInstance().getCurrentUserId());
        MapConstructor localMapConstructor5 = new MapConstructor();
        localMapConstructor5.setKey("channel");
        localMapConstructor5.setValue(RuntimeInfoManager.getInstance().getChannel());
        localArrayList2.add(localMapConstructor1);
        localArrayList2.add(localMapConstructor2);
        localArrayList2.add(localMapConstructor3);
        localArrayList2.add(localMapConstructor4);
        localArrayList2.add(localMapConstructor5);
        localReportStatusReq.setExtend(localArrayList2);
        CmdCenterFacadeInvoke.a(this.c).reportStatus(localReportStatusReq);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      new Object[] { "report Error" };
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.invoke.c
 * JD-Core Version:    0.6.2
 */