package com.alipay.mobile.common.transport.spdy.mwallet;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class NetSpdyInfoGather
{
  private static Map a = new ConcurrentHashMap();
  private String b;
  private boolean c;
  private int d;
  private boolean e;
  private String f;
  private boolean g;

  public NetSpdyInfoGather(String paramString)
  {
    this.b = paramString;
    this.d = 0;
    this.e = false;
  }

  public static NetSpdyInfoGather getSpdyErrorByNetkey(String paramString)
  {
    NetSpdyInfoGather localNetSpdyInfoGather1 = (NetSpdyInfoGather)a.get(paramString);
    if (localNetSpdyInfoGather1 != null)
      return localNetSpdyInfoGather1;
    try
    {
      if (a.get(paramString) != null)
      {
        NetSpdyInfoGather localNetSpdyInfoGather3 = (NetSpdyInfoGather)a.get(paramString);
        return localNetSpdyInfoGather3;
      }
    }
    finally
    {
    }
    new StringBuilder("netKey=").append(paramString).append(",create NetSpdyInfoGather").toString();
    NetSpdyInfoGather localNetSpdyInfoGather2 = new NetSpdyInfoGather(paramString);
    a.put(paramString, new NetSpdyInfoGather(paramString));
    return localNetSpdyInfoGather2;
  }

  public void addBizErrorTimes()
  {
    try
    {
      this.d = (1 + this.d);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getBizErrorTimes()
  {
    return this.d;
  }

  public String getErrorId()
  {
    return this.f;
  }

  public String getNetKey()
  {
    return this.b;
  }

  public boolean isConnetionError()
  {
    return this.e;
  }

  public boolean isSpdyClose()
  {
    return this.c;
  }

  public boolean isWriteGlobal()
  {
    return this.g;
  }

  public void setBizErrorTimes(int paramInt)
  {
    try
    {
      this.d = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setConnetionError(boolean paramBoolean, String paramString)
  {
    try
    {
      this.e = paramBoolean;
      this.f = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setErrorId(String paramString)
  {
    this.f = paramString;
  }

  public void setNetKey(String paramString)
  {
    this.b = paramString;
  }

  public void setSpdyClose(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public void setWriteGlobal(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void writeGlobalError(Context paramContext)
  {
    try
    {
      if (!this.g)
      {
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("Ydps_Route", 0);
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putInt(this.b, 1 + localSharedPreferences.getInt(this.b, 0));
        localEditor.commit();
        this.g = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.mwallet.NetSpdyInfoGather
 * JD-Core Version:    0.6.2
 */