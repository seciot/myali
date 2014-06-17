package com.alipay.mobile.login.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Map;

public class LoginInfo
  implements Parcelable
{
  public static final Parcelable.Creator<LoginInfo> CREATOR = new a();
  private String a;
  private boolean b;
  private boolean c;
  private Map<String, String> d;
  private String e;
  private String f;
  private String g;
  private boolean h;

  public LoginInfo()
  {
  }

  public LoginInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    boolean[] arrayOfBoolean1 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean1);
    this.b = arrayOfBoolean1[0];
    boolean[] arrayOfBoolean2 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean2);
    this.c = arrayOfBoolean2[0];
    paramParcel.readMap(this.d, getClass().getClassLoader());
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    boolean[] arrayOfBoolean3 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean3);
    this.h = arrayOfBoolean3[0];
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(Map<String, String> paramMap)
  {
    this.d = paramMap;
  }

  public final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final void b(String paramString)
  {
    this.e = paramString;
  }

  public final void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final boolean b()
  {
    return this.b;
  }

  public final void c(String paramString)
  {
    this.f = paramString;
  }

  public final boolean c()
  {
    return this.c;
  }

  public final Map<String, String> d()
  {
    return this.d;
  }

  public final void d(String paramString)
  {
    this.g = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    return this.e;
  }

  public final String f()
  {
    return this.f;
  }

  public final String g()
  {
    return this.g;
  }

  public final boolean h()
  {
    return this.h;
  }

  public final void i()
  {
    this.h = true;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    boolean[] arrayOfBoolean1 = new boolean[1];
    arrayOfBoolean1[0] = this.b;
    paramParcel.writeBooleanArray(arrayOfBoolean1);
    boolean[] arrayOfBoolean2 = new boolean[1];
    arrayOfBoolean2[0] = this.c;
    paramParcel.writeBooleanArray(arrayOfBoolean2);
    paramParcel.writeMap(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    boolean[] arrayOfBoolean3 = new boolean[1];
    arrayOfBoolean3[0] = this.h;
    paramParcel.writeBooleanArray(arrayOfBoolean3);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.login.bean.LoginInfo
 * JD-Core Version:    0.6.2
 */