package com.alipay.mobile.framework.service.ext.phonecashier;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PhoneCashierPaymentResult
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new c();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private int j;
  private String k;
  private String l;

  public PhoneCashierPaymentResult()
  {
  }

  private PhoneCashierPaymentResult(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = paramParcel.readInt();
    this.k = paramParcel.readString();
    this.l = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public String getBody()
  {
    return this.e;
  }

  public String getCallBackUrl()
  {
    return this.h;
  }

  public String getMemo()
  {
    return this.k;
  }

  public String getNotifyUrl()
  {
    return this.g;
  }

  public String getOriginalString()
  {
    return this.i;
  }

  public String getOutTradeNo()
  {
    return this.c;
  }

  public String getPartner()
  {
    return this.a;
  }

  public String getResult()
  {
    return this.l;
  }

  public int getResultCode()
  {
    return this.j;
  }

  public String getSeller()
  {
    return this.b;
  }

  public String getSubject()
  {
    return this.d;
  }

  public String getTotalFee()
  {
    return this.f;
  }

  public void setBody(String paramString)
  {
    this.e = paramString;
  }

  public void setCallBackUrl(String paramString)
  {
    this.h = paramString;
  }

  public void setMemo(String paramString)
  {
    this.k = paramString;
  }

  public void setNotifyUrl(String paramString)
  {
    this.g = paramString;
  }

  public void setOriginalString(String paramString)
  {
    this.i = paramString;
  }

  public void setOutTradeNo(String paramString)
  {
    this.c = paramString;
  }

  public void setPartner(String paramString)
  {
    this.a = paramString;
  }

  public void setResult(String paramString)
  {
    this.l = paramString;
  }

  public void setResultCode(int paramInt)
  {
    this.j = paramInt;
  }

  public void setSeller(String paramString)
  {
    this.b = paramString;
  }

  public void setSubject(String paramString)
  {
    this.d = paramString;
  }

  public void setTotalFee(String paramString)
  {
    this.f = paramString;
  }

  public String toString()
  {
    return "seller=" + this.b + ", outTradeNo=" + this.c + ",partner = " + this.a + ",subject= " + this.d + ",body" + this.e + ",totalFee=" + this.f + ",notifyUrl = " + this.g + ", callBackUrl= " + this.h + ",originalString=" + this.i + ",resultCode=" + this.j + ",memo = " + this.k + ", result= " + this.l;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeInt(this.j);
    paramParcel.writeString(this.k);
    paramParcel.writeString(this.l);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult
 * JD-Core Version:    0.6.2
 */