package com.alipay.mobile.common.transport.http.legacy;

import android.content.Context;

public class Request
{
  private String a;
  private String b;
  private boolean c;

  public Request(String paramString)
  {
    this.a = paramString;
  }

  public String getPostData()
  {
    return this.b;
  }

  public boolean getRelAccount()
  {
    return this.c;
  }

  public String getUrl(Context paramContext)
  {
    return this.a;
  }

  public void setPostData(String paramString)
  {
    this.b = paramString;
  }

  public void setRelAccount(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.legacy.Request
 * JD-Core Version:    0.6.2
 */