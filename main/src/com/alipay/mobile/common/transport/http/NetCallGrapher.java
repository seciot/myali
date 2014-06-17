package com.alipay.mobile.common.transport.http;

import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import java.util.Random;

public class NetCallGrapher
{
  private int a;
  private int b;
  private String c;
  private String d;
  private boolean e;
  private boolean f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private boolean l;
  private String m;
  private String n;
  private String o;
  private String p;
  private boolean q;
  private String r;
  private long s;
  private long t;
  private long u;
  private int v;
  private int w;

  public NetCallGrapher()
  {
  }

  public NetCallGrapher(String paramString1, String paramString2, String paramString3)
  {
    this.i = paramString1;
    this.j = paramString2;
    this.k = paramString3;
  }

  private static String a(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.replaceAll(",", "#");
  }

  public String getApi()
  {
    return this.h;
  }

  public String getCallUrl()
  {
    return this.m;
  }

  public long getCenterTime()
  {
    return this.t;
  }

  public String getClientVersion()
  {
    return this.i;
  }

  public String getCookieOrigin()
  {
    return this.n;
  }

  public long getEndTime()
  {
    return this.u;
  }

  public String getErrorCode()
  {
    return this.g;
  }

  public String getErrorCode1()
  {
    return this.r;
  }

  public int getNet0()
  {
    return this.a;
  }

  public int getNet1()
  {
    return this.b;
  }

  public String getNetKey()
  {
    return this.a + "_" + this.b;
  }

  public String getOs()
  {
    return this.j;
  }

  public String getOsVersion()
  {
    return this.k;
  }

  public String getProtocol()
  {
    return this.d;
  }

  public String getProtocol1()
  {
    return this.o;
  }

  public int getRandom1()
  {
    return this.v;
  }

  public int getRandom2()
  {
    return this.w;
  }

  public long getStartTime()
  {
    return this.s;
  }

  public String getTime()
  {
    return this.c;
  }

  public String getTime1()
  {
    return this.p;
  }

  public boolean isDownLev()
  {
    return this.e;
  }

  public boolean isSuccess()
  {
    return this.f;
  }

  public boolean isSuccess1()
  {
    return this.q;
  }

  public boolean isUpdateThis()
  {
    return this.l;
  }

  public void recordExcuteTime(String paramString)
  {
    this.e = false;
  }

  public void setApi(String paramString)
  {
    this.h = paramString;
  }

  public void setCallUrl(String paramString)
  {
    this.m = paramString;
  }

  public void setCenterTime(long paramLong)
  {
    this.t = paramLong;
  }

  public void setClientVersion(String paramString)
  {
    this.i = paramString;
  }

  public void setCookieOrigin(String paramString)
  {
    this.n = paramString;
  }

  public void setDownHttpsCall(Exception paramException)
  {
    this.o = "https";
    this.e = true;
    this.f = false;
    this.q = true;
    this.t = System.currentTimeMillis();
    this.g = paramException.getMessage();
  }

  public void setDownLev(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public void setEndTime(long paramLong)
  {
    this.u = paramLong;
  }

  public void setErrorCode(String paramString)
  {
    if (this.e == true)
    {
      this.q = false;
      this.r = paramString;
    }
    while (true)
    {
      this.u = System.currentTimeMillis();
      return;
      this.f = false;
      this.g = paramString;
    }
  }

  public void setErrorCode1(String paramString)
  {
    this.r = paramString;
  }

  public void setExtUrl(String paramString1, String paramString2)
  {
    this.m = paramString1;
    this.n = paramString2;
  }

  public void setHttpsCall()
  {
    this.d = "https";
    this.e = false;
    this.f = true;
  }

  public void setNet0(int paramInt)
  {
    this.a = paramInt;
  }

  public void setNet1(int paramInt)
  {
    this.b = paramInt;
  }

  public void setNetInfo(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public void setOs(String paramString)
  {
    this.j = paramString;
  }

  public void setOsVersion(String paramString)
  {
    this.k = paramString;
  }

  public void setProtocol(String paramString)
  {
    this.d = paramString;
  }

  public void setProtocol1(String paramString)
  {
    this.o = paramString;
  }

  public void setRandom1(int paramInt)
  {
    this.v = paramInt;
  }

  public void setRandom2(int paramInt)
  {
    this.w = paramInt;
  }

  public void setSpdyCall()
  {
    this.d = "spdy";
    this.e = false;
    this.f = true;
  }

  public void setStartTime(long paramLong)
  {
    this.s = paramLong;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setSuccess1(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  public void setTime(String paramString)
  {
    this.c = paramString;
  }

  public void setTime1(String paramString)
  {
    this.p = paramString;
  }

  public void setUpdateThis(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public String toString()
  {
    return "net:" + this.a + "," + this.b + ";api:" + this.h + ";protocol:" + this.d + ";downLev:" + this.e + ";success:" + this.f + ";errorCode:" + this.g + ";success1:" + this.q + ";errorCode1:" + this.r + ";protocol1:" + this.o + ";startTime:" + this.s + ";centerTime:" + this.t + ";endTime:" + this.u;
  }

  public void upGrapher2Server(Context paramContext)
  {
    while (true)
    {
      try
      {
        if ((!TextUtils.isEmpty(this.h)) && (this.v != 0))
        {
          if (this.w == 0)
            return;
          Random localRandom = new Random();
          int i1;
          if ((TextUtils.equals(this.d, "spdy")) && (localRandom.nextInt(this.v) == 0))
          {
            i1 = 1;
            if (this.e)
            {
              this.c = (this.t - this.s);
              this.p = (this.u - this.t);
              if (this.f)
                continue;
              BehaviourIdEnum localBehaviourIdEnum4 = BehaviourIdEnum.MONITOR;
              String str5 = a(this.g);
              String[] arrayOfString4 = new String[6];
              arrayOfString4[0] = (this.a + "|" + this.b);
              arrayOfString4[1] = this.c;
              arrayOfString4[2] = this.d;
              if (!this.e)
                break label855;
              str6 = "T";
              arrayOfString4[3] = str6;
              arrayOfString4[4] = ("Android|" + Build.VERSION.SDK_INT + "|" + SpdyStrategy.STRATEGY_VERSION);
              arrayOfString4[5] = this.h;
              AlipayLogAgent.writeLog(paramContext, localBehaviourIdEnum4, "F", str5, "", "", "MonitorPoint_NetworkError", "", "", "", "s", "c", arrayOfString4);
              if (!this.e)
                continue;
              if (this.q)
                continue;
              BehaviourIdEnum localBehaviourIdEnum3 = BehaviourIdEnum.MONITOR;
              String str3 = a(this.r);
              String[] arrayOfString3 = new String[6];
              arrayOfString3[0] = (this.a + "|" + this.b);
              arrayOfString3[1] = this.p;
              arrayOfString3[2] = this.o;
              if (!this.e)
                break label871;
              str4 = "T";
              arrayOfString3[3] = str4;
              arrayOfString3[4] = ("Android|" + Build.VERSION.SDK_INT + "|" + SpdyStrategy.STRATEGY_VERSION);
              arrayOfString3[5] = this.h;
              AlipayLogAgent.writeLog(paramContext, localBehaviourIdEnum3, "F", str3, "", "", "MonitorPoint_NetworkError", "", "", "", "s", "c", arrayOfString3);
            }
          }
          else
          {
            if (localRandom.nextInt(this.w) != 0)
              continue;
            i1 = 1;
            continue;
          }
          this.c = (this.u - this.s);
          continue;
          if (i1 == 0)
            continue;
          BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.MONITOR;
          String[] arrayOfString1 = new String[6];
          arrayOfString1[0] = (this.a + "|" + this.b);
          arrayOfString1[1] = this.c;
          arrayOfString1[2] = this.d;
          if (!this.e)
            break label863;
          str1 = "T";
          arrayOfString1[3] = str1;
          arrayOfString1[4] = ("Android|" + Build.VERSION.SDK_INT + "|" + SpdyStrategy.STRATEGY_VERSION);
          arrayOfString1[5] = this.h;
          AlipayLogAgent.writeLog(paramContext, localBehaviourIdEnum1, "T", null, "", "", "MonitorPoint_NetworkDigest", "", "", "", "s", "c", arrayOfString1);
          continue;
          if (i1 != 0)
          {
            BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.MONITOR;
            String[] arrayOfString2 = new String[6];
            arrayOfString2[0] = (this.a + "|" + this.b);
            arrayOfString2[1] = this.p;
            arrayOfString2[2] = this.o;
            if (this.e)
            {
              str2 = "T";
              arrayOfString2[3] = str2;
              arrayOfString2[4] = ("Android|" + Build.VERSION.SDK_INT + "|" + SpdyStrategy.STRATEGY_VERSION);
              arrayOfString2[5] = this.h;
              AlipayLogAgent.writeLog(paramContext, localBehaviourIdEnum2, "T", null, "", "", "MonitorPoint_NetworkDigest", "", "", "", "s", "c", arrayOfString2);
              return;
            }
            String str2 = "F";
            continue;
            i1 = 0;
            continue;
          }
        }
        return;
      }
      catch (Exception localException)
      {
        return;
      }
      label855: String str6 = "F";
      continue;
      label863: String str1 = "F";
      continue;
      label871: String str4 = "F";
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.NetCallGrapher
 * JD-Core Version:    0.6.2
 */