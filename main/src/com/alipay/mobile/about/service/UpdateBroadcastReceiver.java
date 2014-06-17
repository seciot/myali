package com.alipay.mobile.about.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.TaskScheduleService;

public class UpdateBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ((TaskScheduleService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(TaskScheduleService.class.getName())).parallelExecute(new f(this, paramContext, paramIntent));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.UpdateBroadcastReceiver
 * JD-Core Version:    0.6.2
 */