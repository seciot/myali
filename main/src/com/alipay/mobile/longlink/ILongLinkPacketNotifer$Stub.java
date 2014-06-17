package com.alipay.mobile.longlink;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ILongLinkPacketNotifer$Stub extends Binder
  implements ILongLinkPacketNotifer
{
  public ILongLinkPacketNotifer$Stub()
  {
    attachInterface(this, "com.alipay.mobile.longlink.ILongLinkPacketNotifer");
  }

  public static ILongLinkPacketNotifer a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.mobile.longlink.ILongLinkPacketNotifer");
    if ((localIInterface != null) && ((localIInterface instanceof ILongLinkPacketNotifer)))
      return (ILongLinkPacketNotifer)localIInterface;
    return new a(paramIBinder);
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
      paramParcel2.writeString("com.alipay.mobile.longlink.ILongLinkPacketNotifer");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.alipay.mobile.longlink.ILongLinkPacketNotifer");
    if (paramParcel1.readInt() != 0);
    for (Bundle localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle = null)
    {
      a(localBundle);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.ILongLinkPacketNotifer.Stub
 * JD-Core Version:    0.6.2
 */