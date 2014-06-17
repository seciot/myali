package com.alipay.android.ipp;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

final class b extends BroadcastReceiver
{
  b(IppFacade paramIppFacade)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str = paramIntent.getExtras().getString("packageName");
      Log.i(IppFacade.access$0(), "onReceive BroadCast！ From " + str);
      if (!str.equals(IppFacade.access$9(this.a)))
      {
        Log.i(IppFacade.access$0(), "Answer the request from" + str + "! To bind its service!");
        new Thread(new e(this.a, str)).start();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.b
 * JD-Core Version:    0.6.2
 */