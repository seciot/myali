package com.alipay.android.ipp.binder.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IppInterface$Stub extends Binder
  implements IppInterface
{
  public IppInterface$Stub()
  {
    attachInterface(this, "com.alipay.android.ipp.binder.aidl.IppInterface");
  }

  public static IppInterface asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.android.ipp.binder.aidl.IppInterface");
    if ((localIInterface != null) && ((localIInterface instanceof IppInterface)))
      return (IppInterface)localIInterface;
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
      paramParcel2.writeString("com.alipay.android.ipp.binder.aidl.IppInterface");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.alipay.android.ipp.binder.aidl.IppInterface");
    invoke(paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.binder.aidl.IppInterface.Stub
 * JD-Core Version:    0.6.2
 */