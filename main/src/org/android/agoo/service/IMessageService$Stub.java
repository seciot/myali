package org.android.agoo.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IMessageService$Stub extends Binder
  implements IMessageService
{
  static final int TRANSACTION_ping = 1;
  static final int TRANSACTION_probe = 2;

  public IMessageService$Stub()
  {
    attachInterface(this, "org.android.agoo.service.IMessageService");
  }

  public static IMessageService asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("org.android.agoo.service.IMessageService");
    if ((localIInterface != null) && ((localIInterface instanceof IMessageService)))
      return (IMessageService)localIInterface;
    return new IMessageService.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("org.android.agoo.service.IMessageService");
      return true;
    case 1:
      paramParcel1.enforceInterface("org.android.agoo.service.IMessageService");
      boolean bool = ping();
      paramParcel2.writeNoException();
      if (bool);
      for (int i = 1; ; i = 0)
      {
        paramParcel2.writeInt(i);
        return true;
      }
    case 2:
    }
    paramParcel1.enforceInterface("org.android.agoo.service.IMessageService");
    probe();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.android.agoo.service.IMessageService.Stub
 * JD-Core Version:    0.6.2
 */