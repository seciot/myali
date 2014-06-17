package com.alipay.mobile.framework.service.ext.phonecashier;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.Map;

public class PhoneCashierOrderExp extends PhoneCashierOrder
{
  public static final Parcelable.Creator CREATOR = new b();
  private String a;
  private Map b;

  public PhoneCashierOrderExp()
  {
  }

  public PhoneCashierOrderExp(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
    try
    {
      this.b = new HashMap();
      paramParcel.readMap(this.b, getClass().getClassLoader());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public Map getAppenv()
  {
    return this.b;
  }

  public String getBizcontext()
  {
    return this.a;
  }

  public void setAppenv(Map paramMap)
  {
    this.b = paramMap;
  }

  public void setBizcontext(String paramString)
  {
    this.a = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (this.a != null)
      paramParcel.writeString(this.a);
    if (this.b != null)
      paramParcel.writeMap(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrderExp
 * JD-Core Version:    0.6.2
 */