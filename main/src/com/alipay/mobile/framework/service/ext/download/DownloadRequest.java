package com.alipay.mobile.framework.service.ext.download;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DownloadRequest
  implements Parcelable
{
  public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();
  private String appId;
  private String description;
  private String downloadUrl;
  private String fileName;
  private boolean showRunningNotification;
  private String title;

  public DownloadRequest()
  {
  }

  private DownloadRequest(Parcel paramParcel)
  {
    this.downloadUrl = paramParcel.readString();
    this.title = paramParcel.readString();
    this.description = paramParcel.readString();
    if (paramParcel.readInt() != 0);
    for (boolean bool = true; ; bool = false)
    {
      this.showRunningNotification = bool;
      this.appId = paramParcel.readString();
      this.fileName = paramParcel.readString();
      return;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public String getAppId()
  {
    return this.appId;
  }

  public String getDescription()
  {
    return this.description;
  }

  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }

  public String getFileName()
  {
    return this.fileName;
  }

  public String getTitle()
  {
    return this.title;
  }

  public boolean isShowRunningNotification()
  {
    return this.showRunningNotification;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }

  public void setFileName(String paramString)
  {
    this.fileName = paramString;
  }

  public void setShowRunningNotification(boolean paramBoolean)
  {
    this.showRunningNotification = paramBoolean;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.downloadUrl);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.description);
    if (this.showRunningNotification);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(this.appId);
      paramParcel.writeString(this.fileName);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.download.DownloadRequest
 * JD-Core Version:    0.6.2
 */