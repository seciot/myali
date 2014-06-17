package com.alipay.android.app.helper;

import android.text.TextUtils;

public class Tid
{
  private String a;
  private String b;
  private long c;

  public String getTid()
  {
    return this.a;
  }

  public String getTidSeed()
  {
    return this.b;
  }

  public long getTimestamp()
  {
    return this.c;
  }

  public boolean isEmpty()
  {
    return TextUtils.isEmpty(this.a);
  }

  public void setTid(String paramString)
  {
    this.a = paramString;
  }

  public void setTidSeed(String paramString)
  {
    this.b = paramString;
  }

  public void setTimestamp(long paramLong)
  {
    this.c = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.Tid
 * JD-Core Version:    0.6.2
 */