package com.alipay.mobile.longlink;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ILongLinkService$Stub extends Binder
  implements ILongLinkService
{
  public ILongLinkService$Stub()
  {
    attachInterface(this, "com.alipay.mobile.longlink.ILongLinkService");
  }

  public static ILongLinkService a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.mobile.longlink.ILongLinkService");
    if ((localIInterface != null) && ((localIInterface instanceof ILongLinkService)))
      return (ILongLinkService)localIInterface;
    return new b(paramIBinder);
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
      paramParcel2.writeString("com.alipay.mobile.longlink.ILongLinkService");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
      b();
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
      boolean bool = c();
      paramParcel2.writeNoException();
      if (bool);
      for (int i = 1; ; i = 0)
      {
        paramParcel2.writeInt(i);
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
      a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
      getBundle(ILongLinkPacketNotifer.Stub.getBundle(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 7:
    }
    paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkService");
    a(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.ILongLinkService.Stub
 * JD-Core Version:    0.6.2
 */