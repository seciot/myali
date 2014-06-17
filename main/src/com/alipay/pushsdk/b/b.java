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

  public final String a()
  {
    return this.b;
  }

  public final void a(int paramInt)
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

  public final void a(Object paramObject)
  {
    this.c = paramObject;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final Object b()
  {
    return this.c;
  }

  public final void b(Object paramObject)
  {
    this.d = paramObject;
  }

  public final Object c()
  {
    return this.d;
  }

  public final Object clone()
  {
    try
    {
      b localb = (b)super.clone();
      return localb;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localCloneNotSupportedException.printStackTrace();
    }
    return null;
  }

  public final int d()
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