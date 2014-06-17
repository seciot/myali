package com.alipay.mobile.alipassapp.biz.common.oldcoupon;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class AlipassInfoA$Locations
  implements Parcelable
{
  public static final Parcelable.Creator<Locations> CREATOR = new AlipassInfoA.Locations.1();
  String addr;
  Double altitude;
  Double latitude;
  Double longitude;
  String relevantText;
  String tel;

  public AlipassInfoA$Locations()
  {
  }

  public AlipassInfoA$Locations(Parcel paramParcel)
  {
    readFormParcel(paramParcel);
  }

  private void readFormParcel(Parcel paramParcel)
  {
    this.addr = paramParcel.readString();
    this.altitude = Double.valueOf(paramParcel.readDouble());
    this.latitude = Double.valueOf(paramParcel.readDouble());
    this.longitude = Double.valueOf(paramParcel.readDouble());
    this.relevantText = paramParcel.readString();
    this.tel = paramParcel.readString();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getAddr()
  {
    return this.addr;
  }

  public final double getAltitude()
  {
    return this.altitude.doubleValue();
  }

  public final double getLatitude()
  {
    return this.latitude.doubleValue();
  }

  public final double getLongitude()
  {
    return this.longitude.doubleValue();
  }

  public final String getRelevantText()
  {
    return this.relevantText;
  }

  public final String getTel()
  {
    return this.tel;
  }

  public final void setAddr(String paramString)
  {
    this.addr = paramString;
  }

  public final void setAltitude(Double paramDouble)
  {
    this.altitude = paramDouble;
  }

  public final void setLatitude(Double paramDouble)
  {
    this.latitude = paramDouble;
  }

  public final void setLongitude(Double paramDouble)
  {
    this.longitude = paramDouble;
  }

  public final void setRelevantText(String paramString)
  {
    this.relevantText = paramString;
  }

  public final void setTel(String paramString)
  {
    this.tel = paramString;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    double d1 = 0.0D;
    paramParcel.writeString(this.addr);
    double d2;
    double d3;
    if (this.altitude == null)
    {
      d2 = d1;
      paramParcel.writeDouble(d2);
      if (this.latitude != null)
        break label83;
      d3 = d1;
      label36: paramParcel.writeDouble(d3);
      if (this.longitude != null)
        break label95;
    }
    while (true)
    {
      paramParcel.writeDouble(d1);
      paramParcel.writeString(this.relevantText);
      paramParcel.writeString(this.tel);
      return;
      d2 = this.altitude.doubleValue();
      break;
      label83: d3 = this.latitude.doubleValue();
      break label36;
      label95: d1 = this.longitude.doubleValue();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Locations
 * JD-Core Version:    0.6.2
 */