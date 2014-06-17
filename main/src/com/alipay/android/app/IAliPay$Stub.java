package com.alipay.android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class IAliPay$Stub extends Binder
  implements IAliPay
{
  public IAliPay$Stub()
  {
    attachInterface(this, "com.alipay.android.app.IAliPay");
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
      paramParcel2.writeString("com.alipay.android.app.IAliPay");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.alipay.android.app.IAliPay");
      String str2 = Pay(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.alipay.android.app.IAliPay");
      String str1 = test();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.alipay.android.app.IAliPay");
      registerCallback(IRemoteServiceCallback.Stub.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.alipay.android.app.IAliPay");
      unregisterCallback(IRemoteServiceCallback.Stub.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5:
    }
    paramParcel1.enforceInterface("com.alipay.android.app.IAliPay");
    deployFastConnect();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.IAliPay.Stub
 * JD-Core Version:    0.6.2
 */