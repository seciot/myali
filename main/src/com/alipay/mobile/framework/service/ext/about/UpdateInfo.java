package com.alipay.mobile.framework.service.ext.about;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class UpdateInfo
  implements Parcelable
{
  public static final Parcelable.Creator<UpdateInfo> CREATOR = new a();
  public static final String UPDATE_MSG_KEY = "_updateInfo";
  private int a;
  private String b;
  private String c;
  private String d;
  private String e;

  private UpdateInfo(Parcel paramParcel)
  {
    this.c = paramParcel.readString();
    this.e = paramParcel.readString();
    this.b = paramParcel.readString();
    this.d = paramParcel.readString();
    this.a = paramParcel.readInt();
  }

  public UpdateInfo(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    this.c = paramString1;
    this.e = paramString2;
    this.b = paramString3;
    this.d = paramString4;
    this.a = paramInt;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getDownloadURL()
  {
    return this.c;
  }

  public String getGuideMemo()
  {
    return this.e;
  }

  public String getMemo()
  {
    return this.b;
  }

  public String getNewestVersion()
  {
    return this.d;
  }

  public int getResultStatus()
  {
    return this.a;
  }

  public void setDownloadURL(String paramString)
  {
    this.c = paramString;
  }

  public void setGuideMemo(String paramString)
  {
    this.e = paramString;
  }

  public void setMemo(String paramString)
  {
    this.b = paramString;
  }

  public void setNewestVersion(String paramString)
  {
    this.d = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.a = paramInt;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.d);
    paramParcel.writeInt(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.about.UpdateInfo
 * JD-Core Version:    0.6.2
 */