package com.taobao.android.sso.internal;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.SparseArray;

public class PidGetterService extends Service
{
  public static SparseArray<c> a = new SparseArray();
  public static boolean b = true;
  public static boolean c = true;
  private IBinder d;

  public IBinder onBind(Intent paramIntent)
  {
    if (this.d == null)
      this.d = new PidGetterService.PidGetter(this);
    return this.d;
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.internal.PidGetterService
 * JD-Core Version:    0.6.2
 */