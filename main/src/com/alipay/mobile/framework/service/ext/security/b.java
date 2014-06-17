package com.alipay.mobile.framework.service.ext.security;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

final class b extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    while (true)
    {
      try
      {
        switch (paramMessage.what)
        {
        default:
          super.handleMessage(paramMessage);
          return;
        case 1:
          LogCatLog.i(QihooGuardService.access$200(), "Connected! mUIService is: " + QihooGuardService.access$000());
          AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
          continue;
        case 2:
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      LogCatLog.i(QihooGuardService.access$200(), "Connect Time Out!");
      AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
      Toast.makeText(QihooGuardService.access$300(), "服务初始化超时", 0).show();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.b
 * JD-Core Version:    0.6.2
 */