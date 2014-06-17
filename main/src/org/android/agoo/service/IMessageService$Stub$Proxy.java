package org.android.agoo.service;

import android.os.IBinder;
import android.os.Parcel;

class IMessageService$Stub$Proxy
  implements IMessageService
{
  private IBinder a;

  IMessageService$Stub$Proxy(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.a;
  }

  public String getInterfaceDescriptor()
  {
    return "org.android.agoo.service.IMessageService";
  }

  public boolean ping()
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("org.android.agoo.service.IMessageService");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        return bool;
      bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void probe()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("org.android.agoo.service.IMessageService");
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.android.agoo.service.IMessageService.Stub.Proxy
 * JD-Core Version:    0.6.2
 */