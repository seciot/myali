package com.alipay.android.setting.request;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RequestContainer
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  public static int a = 5;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public int f = 200;
  public String g = null;
  public String h = null;
  public String i = null;
  public boolean j;
  public boolean k;
  public boolean l;
  public boolean m;
  public boolean n;
  public boolean o;
  public boolean p;
  public String[] q = new String[a];

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.e);
    paramParcel.writeValue(Boolean.valueOf(this.j));
    paramParcel.writeValue(Boolean.valueOf(this.m));
    paramParcel.writeValue(Boolean.valueOf(this.n));
    paramParcel.writeValue(Boolean.valueOf(this.o));
    paramParcel.writeValue(Boolean.valueOf(this.k));
    paramParcel.writeValue(Boolean.valueOf(this.l));
    paramParcel.writeValue(Boolean.valueOf(this.p));
    paramParcel.writeStringArray(this.q);
    paramParcel.writeString(this.d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.request.RequestContainer
 * JD-Core Version:    0.6.2
 */