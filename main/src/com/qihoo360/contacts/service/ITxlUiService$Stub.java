package com.qihoo360.contacts.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ITxlUiService$Stub extends Binder
  implements ITxlUiService
{
  static final int TRANSACTION_isSmsGuardOpen = 1;
  static final int TRANSACTION_openSmsGuardSetupUI = 2;

  public ITxlUiService$Stub()
  {
    attachInterface(this, "com.qihoo360.contacts.service.ITxlUiService");
  }

  public static ITxlUiService asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.qihoo360.contacts.service.ITxlUiService");
    if ((localIInterface != null) && ((localIInterface instanceof ITxlUiService)))
      return (ITxlUiService)localIInterface;
    return new ITxlUiService.Stub.Proxy(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.qihoo360.contacts.service.ITxlUiService");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.qihoo360.contacts.service.ITxlUiService");
      boolean bool = isSmsGuardOpen();
      paramParcel2.writeNoException();
      if (bool);
      for (int i = 1; ; i = 0)
      {
        paramParcel2.writeInt(i);
        return true;
      }
    case 2:
    }
    paramParcel1.enforceInterface("com.qihoo360.contacts.service.ITxlUiService");
    openSmsGuardSetupUI();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.qihoo360.contacts.service.ITxlUiService.Stub
 * JD-Core Version:    0.6.2
 */