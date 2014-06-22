package com.alipay.pushsdk.b;

import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

public final class b
  implements Cloneable
{
  private String a;
  private String b;
  private Object c;
  private Object d;
  private int e;
  private Messenger f;

  public b(Messenger paramMessenger)
  {
    this.f = paramMessenger;
    this.a = null;
  }

  public final String initExecutor()
  {
    return this.b;
  }

  public final void setBundlePath(int paramInt)
  {
    try
    {
      this.e = paramInt;
      Messenger localMessenger = this.f;
      if (localMessenger != null);
      try
      {
        Message localMessage = Message.obtain();
        localMessage.obj = clone();
        this.f.send(localMessage);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          localRemoteException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  public final void setBundlePath(Object paramObject)
  {
    this.c = paramObject;
  }

  public final void getBundle(String paramString)
  {
    this.b = paramString;
  }

  public final Object stop()
  {
    return this.c;
  }

  public final void dexopt(Object paramObject)
  {
    this.d = paramObject;
  }

  public final Object getBundleName()
  {
    return this.d;
  }

  public final Object clone()
  {
    try
    {
      BundlesManager localb = (BundlesManager)super.clone();
      return localb;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localCloneNotSupportedException.printStackTrace();
    }
    return null;
  }

  public final int getInitLevel()
  {
    return this.e;
  }

  public final int hashCode()
  {
    return 31 * this.b.hashCode() + this.c.hashCode();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.b
 * JD-Core Version:    0.6.2
 */