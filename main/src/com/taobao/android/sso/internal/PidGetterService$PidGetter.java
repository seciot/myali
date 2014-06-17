package com.taobao.android.sso.internal;

import android.os.Binder;
import android.os.Parcel;
import android.util.SparseArray;

class PidGetterService$PidGetter extends Binder
{
  PidGetterService$PidGetter(PidGetterService paramPidGetterService)
  {
  }

  protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    if (-1 == this.this$0.checkPermission("com.taobao.permission.USE_CREDENTIALS", Binder.getCallingPid(), Binder.getCallingUid()))
      return false;
    if (paramInt1 == 1)
    {
      int i = paramParcel1.readInt();
      int j = Binder.getCallingPid();
      int k = Binder.getCallingUid();
      c localc = (c)PidGetterService.a.get(j);
      if (localc == null)
      {
        localc = new c();
        PidGetterService.a.put(j, localc);
      }
      localc.a = j;
      localc.b = k;
      localc.c.put(i, Long.valueOf(60000L + System.currentTimeMillis()));
      return true;
    }
    if (paramInt1 == 2)
    {
      boolean[] arrayOfBoolean2 = new boolean[1];
      arrayOfBoolean2[0] = PidGetterService.b;
      paramParcel2.writeBooleanArray(arrayOfBoolean2);
      return true;
    }
    if (paramInt1 == 3)
    {
      boolean[] arrayOfBoolean1 = new boolean[1];
      arrayOfBoolean1[0] = PidGetterService.c;
      paramParcel2.writeBooleanArray(arrayOfBoolean1);
      return true;
    }
    return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.internal.PidGetterService.PidGetter
 * JD-Core Version:    0.6.2
 */