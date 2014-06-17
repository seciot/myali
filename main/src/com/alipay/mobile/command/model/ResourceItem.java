package com.alipay.mobile.command.model;

import android.text.TextUtils;
import java.io.File;
import java.io.Serializable;

public class ResourceItem
  implements Serializable
{
  private static final long serialVersionUID = 2801103607195605556L;
  private ApkOpTypeEnum apkOpType;
  private String downLoadPath;
  private String downloadUrl;
  private String md5Sum;
  private String netEnv;
  private String resourceName;

  public File file()
  {
    return new File(this.downLoadPath + File.separatorChar + this.resourceName);
  }

  public ApkOpTypeEnum getApkOpType()
  {
    return this.apkOpType;
  }

  public String getDownLoadPath()
  {
    return this.downLoadPath;
  }

  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }

  public String getMd5Sum()
  {
    return this.md5Sum;
  }

  public String getNetEnv()
  {
    return this.netEnv;
  }

  public String getResourceName()
  {
    return this.resourceName;
  }

  public boolean isneedDown()
  {
    return (this.apkOpType == null) || (this.apkOpType != ApkOpTypeEnum.AUTOUN);
  }

  public boolean isvalidate()
  {
    return (!TextUtils.isEmpty(this.downLoadPath)) && (!TextUtils.isEmpty(this.downLoadPath)) && (!TextUtils.isEmpty(this.md5Sum)) && (!TextUtils.isEmpty(this.netEnv)) && (!TextUtils.isEmpty(this.resourceName));
  }

  public void setApkOpType(ApkOpTypeEnum paramApkOpTypeEnum)
  {
    this.apkOpType = paramApkOpTypeEnum;
  }

  public void setDownLoadPath(String paramString)
  {
    this.downLoadPath = paramString;
  }

  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }

  public void setMd5Sum(String paramString)
  {
    this.md5Sum = paramString;
  }

  public void setNetEnv(String paramString)
  {
    this.netEnv = paramString;
  }

  public void setResourceName(String paramString)
  {
    this.resourceName = paramString;
  }

  public String toString()
  {
    return "ResourceItem [downloadUrl=" + this.downloadUrl + ", resourceName=" + this.resourceName + ", md5Sum=" + this.md5Sum + ", netEnv=" + this.netEnv + ", downLoadPath=" + this.downLoadPath + ", apkOpType=" + this.apkOpType + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.ResourceItem
 * JD-Core Version:    0.6.2
 */