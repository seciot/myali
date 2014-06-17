package com.alipay.mobile.alipassapp.biz.model;

import java.io.File;

public abstract class f
{
  public static final String V_1 = "1";
  public static final String V_2 = "2";
  private long lastModified;
  private String passFileName;
  private File passPath;

  public long getLastModified()
  {
    return this.lastModified;
  }

  public String getPassFileName()
  {
    return this.passFileName;
  }

  public File getPassPath()
  {
    return this.passPath;
  }

  public void setLastModifiedTime(long paramLong)
  {
    this.lastModified = paramLong;
  }

  public void setPassFileName(String paramString)
  {
    this.passFileName = paramString;
  }

  public void setPassPath(File paramFile)
  {
    this.passPath = paramFile;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.f
 * JD-Core Version:    0.6.2
 */