package com.amap.api.location.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class e
  implements Parcelable.Creator<GeoPoint>
{
  public final GeoPoint a(Parcel paramParcel)
  {
    return new GeoPoint(paramParcel, null);
  }

  public final GeoPoint[] a(int paramInt)
  {
    return new GeoPoint[paramInt];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.e
 * JD-Core Version:    0.6.2
 */