package com.alipay.android.ipp;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.util.Log;
import java.util.Map;

public class IppFacade
{
  private static String a = IppFacade.class.getSimpleName();
  private Context b;
  private Map c;
  private String d = "false";
  private boolean e = false;
  private ServiceConnection f = new a(this);

  public IppFacade(Context paramContext)
  {
    this.b = paramContext;
  }

  private String a()
  {
    return this.b.getApplicationInfo().packageName;
  }

  private void a(String paramString)
  {
    Intent localIntent = new Intent("com.ali.android.IPP_CALL");
    Bundle localBundle = new Bundle();
    localBundle.putString("packageName", paramString);
    localIntent.putExtras(localBundle);
    Log.i(a, "sendBroadCast！ For " + paramString);
    this.b.sendBroadcast(localIntent);
  }

  private void b()
  {
    this.b.registerReceiver(new b(this), new IntentFilter("com.ali.android.IPP_CALL"));
  }

  public void callProtected()
  {
    try
    {
      Log.i(a, "callProtected()");
      a(a());
      b();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void performProtect()
  {
    try
    {
      Log.i(a, "performProtect()");
      this.e = false;
      new Thread(new c(this, (byte)0)).start();
      a(a());
      b();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void performProtectOnlyOnce()
  {
    try
    {
      Log.i(a, "performProtectOnlyOnce()");
      this.e = true;
      new Thread(new c(this, (byte)0)).start();
      a(a());
      b();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.IppFacade
 * JD-Core Version:    0.6.2
 */