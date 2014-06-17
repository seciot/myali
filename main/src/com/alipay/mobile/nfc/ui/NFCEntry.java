package com.alipay.mobile.nfc.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Observable;
import java.util.Observer;

public class NFCEntry extends Activity
  implements Observer
{
  private static String a = "NFC/Entry";
  private Intent b;

  private boolean a()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("com.alipay.mobile.quinox.LauncherApplication").getDeclaredMethod("bootFinish", new Class[0]).invoke(getApplicationContext(), new Object[0])).booleanValue();
      return bool;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return false;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  private void b()
  {
    try
    {
      Class localClass1 = getClassLoader().loadClass("com.alipay.mobile.framework.AlipayApplication");
      Method localMethod = localClass1.getDeclaredMethod("getInstance", new Class[0]);
      Object localObject = localClass1.getDeclaredMethod("getMicroApplicationContext", new Class[0]).invoke(localMethod.invoke(null, new Object[0]), new Object[0]);
      Class localClass2 = getClassLoader().loadClass("com.alipay.mobile.framework.MicroApplicationContext");
      localClass2.getDeclaredMethod("updateActivity", new Class[] { Activity.class }).invoke(localObject, new Object[] { this });
      Bundle localBundle = new Bundle();
      localBundle.putString("action", this.b.getAction());
      localBundle.putParcelableArray("android.nfc.extra.NDEF_MESSAGES", this.b.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES"));
      localBundle.putParcelable("android.nfc.extra.TAG", this.b.getParcelableExtra("android.nfc.extra.TAG"));
      localClass2.getDeclaredMethod("startApp", new Class[] { String.class, String.class, Bundle.class }).invoke(localObject, new Object[] { "", "20000071", localBundle });
      finish();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public ClassLoader getClassLoader()
  {
    return getApplicationContext().getClassLoader();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    onNewIntent(getIntent());
  }

  protected void onNewIntent(Intent paramIntent)
  {
    new StringBuilder("onNewIntent:").append(paramIntent).toString();
    this.b = paramIntent;
    if (a())
    {
      b();
      return;
    }
    try
    {
      Class.forName("com.alipay.mobile.quinox.LauncherApplication").getDeclaredMethod("addListener", new Class[] { Observer.class }).invoke(getApplicationContext(), new Object[] { this });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    runOnUiThread(new NFCEntry.1(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCEntry
 * JD-Core Version:    0.6.2
 */