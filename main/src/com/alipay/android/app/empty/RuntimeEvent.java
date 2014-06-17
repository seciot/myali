package com.alipay.android.app.empty;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RuntimeEvent
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  private MonitorType a;
  private long b;
  private long c;
  private int d;
  private String e;
  private String f;
  private int g;

  public RuntimeEvent()
  {
    this.a = MonitorType.a;
    this.b = 0L;
    this.c = 0L;
    this.d = 0;
    this.e = null;
    this.f = null;
    this.g = 0;
  }

  private RuntimeEvent(Parcel paramParcel)
  {
    this.a = MonitorType.a(paramParcel.readInt());
    this.b = paramParcel.readLong();
    this.c = paramParcel.readLong();
    this.d = paramParcel.readInt();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "type = " + this.a.b() + ", startTime = " + this.b + "ms, elapse = " + this.c + "ms, bizId = " + this.d + ", session = " + this.e + ", tid = " + this.f + ", count = " + this.g;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a.a());
    paramParcel.writeLong(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeInt(this.g);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.RuntimeEvent
 * JD-Core Version:    0.6.2
 */