package com.alipay.pushsdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alipay.pushsdk.c.a.c;
import org.json.JSONObject;

public class NotifierInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new d();
  private String a = "";
  private String b = "0";
  private String c = "";
  private String d = "";
  private String e = "";
  private String f = "";
  private String g = "";
  private b h = new b();

  public NotifierInfo()
  {
    this.a = "";
    this.c = "";
    this.d = "";
    this.e = "";
    this.f = "";
    this.b = "0";
    this.g = "";
    this.h = new b();
  }

  public NotifierInfo(Parcel paramParcel)
  {
    c.a(4, "NotifierInfo", "NotifierInfo.Parcel...");
    this.a = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.b = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h.d(paramParcel.readString());
    this.h.a(paramParcel.readString());
    this.h.c(paramParcel.readString());
    this.h.b(paramParcel.readString());
  }

  public final String a()
  {
    return this.c;
  }

  public final void a(b paramb)
  {
    this.h = paramb;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.d;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final String c()
  {
    return this.e;
  }

  public final void c(String paramString)
  {
    this.d = paramString;
  }

  public final String d()
  {
    return this.f;
  }

  public final void d(String paramString)
  {
    this.e = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    return this.b;
  }

  public final void e(String paramString)
  {
    this.f = paramString;
  }

  public final String f()
  {
    return this.g;
  }

  public final void f(String paramString)
  {
    this.b = paramString;
  }

  public final b g()
  {
    return this.h;
  }

  public final void g(String paramString)
  {
    this.g = paramString;
  }

  public final JSONObject h()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("msgId", this.h.c());
    localJSONObject.put("msgTitle", this.c);
    return localJSONObject;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(4, "NotifierInfo", "NotifierInfo.writeToParcel...");
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.g);
    c.a(4, "NotifierInfo", "NotifierInfo.writeToParcel msgInfo.");
    paramParcel.writeString(this.h.d());
    paramParcel.writeString(this.h.a());
    paramParcel.writeString(this.h.c());
    paramParcel.writeString(this.h.b());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.data.NotifierInfo
 * JD-Core Version:    0.6.2
 */