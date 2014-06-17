package com.alipay.mobile.framework.service.ext.phonecashier;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PhoneCashierOrder
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private boolean f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private String t;

  public PhoneCashierOrder()
  {
  }

  public PhoneCashierOrder(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    if (paramParcel.readByte() == i1);
    while (true)
    {
      this.f = i1;
      this.i = paramParcel.readString();
      this.j = paramParcel.readString();
      this.k = paramParcel.readString();
      this.l = paramParcel.readString();
      this.m = paramParcel.readString();
      this.n = paramParcel.readString();
      this.o = paramParcel.readString();
      this.p = paramParcel.readString();
      this.q = paramParcel.readString();
      this.r = paramParcel.readString();
      this.s = paramParcel.readString();
      this.t = paramParcel.readString();
      return;
      i1 = 0;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public String getActivity()
  {
    return this.r;
  }

  public String getAmount()
  {
    return this.s;
  }

  public String getAssignedChannel()
  {
    return this.q;
  }

  public String getBizContext()
  {
    return this.k;
  }

  public String getBizIdentity()
  {
    return this.l;
  }

  public String getBizSubType()
  {
    return this.e;
  }

  public String getBizType()
  {
    return this.d;
  }

  public String getBlackChannelList()
  {
    return this.t;
  }

  public String getCallbackUrl()
  {
    return this.j;
  }

  public String getDeliverMobile()
  {
    return this.h;
  }

  public String getForbidChannel()
  {
    return this.o;
  }

  public String getOpType()
  {
    return this.p;
  }

  public String getOrderNo()
  {
    return this.a;
  }

  public String getOrderToken()
  {
    return this.b;
  }

  public String getOutTradeNumber()
  {
    return this.i;
  }

  public String getPartnerID()
  {
    return this.c;
  }

  public String getTotalFee()
  {
    return this.g;
  }

  public String getTradeFrom()
  {
    return this.n;
  }

  public String getUserId()
  {
    return this.m;
  }

  public boolean isShowBizResultPage()
  {
    return this.f;
  }

  public void setActivity(String paramString)
  {
    this.r = paramString;
  }

  public void setAmount(String paramString)
  {
    this.s = paramString;
  }

  public void setAssignedChannel(String paramString)
  {
    this.q = paramString;
  }

  public void setBizContext(String paramString)
  {
    this.k = paramString;
  }

  public void setBizIdentity(String paramString)
  {
    this.l = paramString;
  }

  public void setBizSubType(String paramString)
  {
    this.e = paramString;
  }

  public void setBizType(String paramString)
  {
    this.d = paramString;
  }

  public void setBlackChannelList(String paramString)
  {
    this.t = paramString;
  }

  public void setCallbackUrl(String paramString)
  {
    this.j = paramString;
  }

  public void setDeliverMobile(String paramString)
  {
    this.h = paramString;
  }

  public void setForbidChannel(String paramString)
  {
    this.o = paramString;
  }

  public void setOpType(String paramString)
  {
    this.p = paramString;
  }

  public void setOrderNo(String paramString)
  {
    this.a = paramString;
  }

  public void setOrderToken(String paramString)
  {
    this.b = paramString;
  }

  public void setOutTradeNumber(String paramString)
  {
    this.i = paramString;
  }

  public void setPartnerID(String paramString)
  {
    this.c = paramString;
  }

  public void setShowBizResultPage(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setTotalFee(String paramString)
  {
    this.g = paramString;
  }

  public void setTradeFrom(String paramString)
  {
    this.n = paramString;
  }

  public void setUserId(String paramString)
  {
    this.m = paramString;
  }

  public String toString()
  {
    return "orderNo=" + this.a + ", orderToken=" + this.b + ",partnerID = " + this.c + ",bizType= " + this.d + ",bizSubType=" + this.e + ",totalFee=" + this.g + ",deliverMobile = " + this.h + ", outTradeNumber = " + this.i + ", callBackUrl= " + this.j + ",showBizResultPage=" + this.f + ", biz_identity= " + this.l + ",user_id=" + this.m + ",trade_from=" + this.n + ",forbid_channel=" + this.o;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    if (this.f);
    for (int i1 = 1; ; i1 = 0)
    {
      paramParcel.writeByte((byte)i1);
      paramParcel.writeString(this.i);
      paramParcel.writeString(this.j);
      paramParcel.writeString(this.k);
      paramParcel.writeString(this.l);
      paramParcel.writeString(this.m);
      paramParcel.writeString(this.n);
      paramParcel.writeString(this.o);
      paramParcel.writeString(this.p);
      paramParcel.writeString(this.q);
      paramParcel.writeString(this.r);
      paramParcel.writeString(this.s);
      paramParcel.writeString(this.t);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder
 * JD-Core Version:    0.6.2
 */