package com.qihoo360.contacts.service;

import android.os.IBinder;
import android.os.Parcel;

class ITxlUiService$Stub$Proxy
  implements ITxlUiService
{
  private IBinder a;

  ITxlUiService$Stub$Proxy(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.a;
  }

  public String getInterfaceDescriptor()
  {
    return "com.qihoo360.contacts.service.ITxlUiService";
  }

  public boolean isSmsGuardOpen()
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.qihoo360.contacts.service.ITxlUiService");
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

  public void openSmsGuardSetupUI()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.qihoo360.contacts.service.ITxlUiService");
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
 * Qualified Name:     com.qihoo360.contacts.service.ITxlUiService.Stub.Proxy
 * JD-Core Version:    0.6.2
 */