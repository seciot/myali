package com.alipay.android.app;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class IRemoteServiceCallback$Stub extends Binder
  implements IRemoteServiceCallback
{
  public IRemoteServiceCallback$Stub()
  {
    attachInterface(this, "com.alipay.android.app.IRemoteServiceCallback");
  }

  public static IRemoteServiceCallback a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.android.app.IRemoteServiceCallback");
    if ((localIInterface != null) && ((localIInterface instanceof IRemoteServiceCallback)))
      return (IRemoteServiceCallback)localIInterface;
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
      paramParcel2.writeString("com.alipay.android.app.IRemoteServiceCallback");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
      String str1 = paramParcel1.readString();
      String str2 = paramParcel1.readString();
      int k = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle = null)
      {
        startActivity(str1, str2, k, localBundle);
        paramParcel2.writeNoException();
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
      int j = paramParcel1.readInt();
      boolean bool2 = false;
      if (j != 0)
        bool2 = true;
      payEnd(bool2, paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 3:
    }
    paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
    boolean bool1 = isHideLoadingScreen();
    paramParcel2.writeNoException();
    int i = 0;
    if (bool1)
      i = 1;
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.IRemoteServiceCallback.Stub
 * JD-Core Version:    0.6.2
 */