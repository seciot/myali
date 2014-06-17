package com.alipay.mobile.base.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.base.engine.ApkEngineUpdater;
import com.alipay.mobile.base.resourceclean.TasksExecutor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class FrameInitedBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ExecutorService localExecutorService = Executors.newFixedThreadPool(2);
    localExecutorService.execute(new TasksExecutor());
    localExecutorService.execute(new ApkEngineUpdater(paramContext));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.receiver.FrameInitedBroadcastReceiver
 * JD-Core Version:    0.6.2
 */