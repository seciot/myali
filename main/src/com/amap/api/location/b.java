package com.amap.api.location;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import com.aps.g;
import com.aps.h;
import com.aps.i;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  implements Runnable
{
  private static b e;
  private i a = null;
  private volatile boolean b = true;
  private Thread c = null;
  private Context d;
  private long f = 2000L;
  private a.a g;

  protected b(Context paramContext, a.a parama)
  {
    this.d = paramContext;
    this.a = g.a();
    com.amap.api.location.core.b.a(paramContext);
    this.a.a(paramContext);
    this.a.a("api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##" + com.amap.api.location.core.b.b(paramContext) + "," + com.amap.api.location.core.b.a());
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      localJSONObject1.put("key", com.amap.api.location.core.b.b(paramContext));
      localJSONObject1.put("X-INFO", com.amap.api.location.core.b.a(paramContext).b());
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("ex", com.aps.b.b(com.amap.api.location.core.b.a(paramContext).d().getBytes()));
      localJSONObject1.put("X-BIZ", localJSONObject2);
      localJSONObject1.put("User-Agent", com.amap.api.location.core.c.b);
      this.a.a(localJSONObject1);
      this.g = parama;
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  private static AMapLocation a(com.aps.c paramc)
  {
    AMapLocation localAMapLocation = new AMapLocation("");
    localAMapLocation.setProvider("lbs");
    localAMapLocation.setLatitude(paramc.b());
    localAMapLocation.setLongitude(paramc.a());
    localAMapLocation.setAccuracy(paramc.c());
    localAMapLocation.setTime(paramc.d());
    Bundle localBundle = new Bundle();
    localBundle.putString("citycode", paramc.g());
    localBundle.putString("desc", paramc.h());
    localBundle.putString("adcode", paramc.i());
    localAMapLocation.setExtras(localBundle);
    String str1 = paramc.g();
    String str2 = paramc.h();
    String str3 = paramc.i();
    while (true)
    {
      try
      {
        String[] arrayOfString = str2.split(" ");
        localAMapLocation.setCityCode(str1);
        localAMapLocation.setAdCode(str3);
        if (!str1.equals(""))
        {
          if ((str1.endsWith("010")) || (str1.endsWith("021")) || (str1.endsWith("022")))
            break label250;
          boolean bool = str1.endsWith("023");
          i = 0;
          if (bool)
            break label250;
          if (i != 0)
          {
            if (arrayOfString.length <= 2)
              break;
            localAMapLocation.setCity(arrayOfString[0]);
            localAMapLocation.setDistrict(arrayOfString[1]);
            return localAMapLocation;
          }
        }
        if (arrayOfString.length <= 3)
          break;
        localAMapLocation.setProvince(arrayOfString[0]);
        localAMapLocation.setCity(arrayOfString[1]);
        localAMapLocation.setDistrict(arrayOfString[2]);
        return localAMapLocation;
      }
      catch (Exception localException)
      {
        return localAMapLocation;
      }
      label250: int i = 1;
    }
    return localAMapLocation;
  }

  static b a(Context paramContext, a.a parama)
  {
    if (e == null)
      e = new b(paramContext, parama);
    return e;
  }

  private com.aps.c c()
  {
    try
    {
      i locali = this.a;
      Object localObject = null;
      if (locali != null)
      {
        com.aps.c localc = this.a.b();
        localObject = localc;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private boolean d()
  {
    boolean bool1 = System.currentTimeMillis() - a.c < 5L * this.f;
    boolean bool2 = false;
    if (bool1)
    {
      a.b = false;
      bool2 = true;
    }
    return bool2;
  }

  void a()
  {
    this.b = false;
    if (this.c != null)
      this.c.interrupt();
    this.a.c();
    this.a = null;
    e = null;
  }

  void a(long paramLong)
  {
    if (paramLong > this.f)
      this.f = paramLong;
  }

  void a(PendingIntent paramPendingIntent)
  {
    this.a.a(paramPendingIntent);
  }

  void a(h paramh, PendingIntent paramPendingIntent)
  {
    this.a.a(paramh, paramPendingIntent);
  }

  int b()
  {
    if (this.a != null)
      return this.a.e();
    return 0;
  }

  public void run()
  {
    Looper.prepare();
    while (true)
    {
      if ((this.b) && (!Thread.interrupted()))
        this.c = Thread.currentThread();
      try
      {
        if ((!a.b) || (d()))
        {
          boolean bool = a.d;
          if (bool);
        }
        else
        {
          try
          {
            Thread.sleep(this.f);
            if (com.amap.api.location.core.a.a == -1)
              com.amap.api.location.core.a.a(this.d);
            try
            {
              Thread.sleep(this.f);
            }
            catch (Exception localException7)
            {
            }
            return;
          }
          catch (Exception localException5)
          {
            if (com.amap.api.location.core.a.a == -1)
              com.amap.api.location.core.a.a(this.d);
            try
            {
              Thread.sleep(this.f);
              return;
            }
            catch (Exception localException6)
            {
              return;
            }
          }
        }
        com.aps.c localc = c();
        Object localObject2 = null;
        if (localc != null)
        {
          AMapLocation localAMapLocation = a(localc);
          localObject2 = localAMapLocation;
        }
        if ((localObject2 != null) && (a.d) && ((!a.b) || (d())))
        {
          Message localMessage = new Message();
          localMessage.obj = localObject2;
          localMessage.what = a.a;
          this.g.sendMessage(localMessage);
        }
        if (com.amap.api.location.core.a.a == -1)
          com.amap.api.location.core.a.a(this.d);
        try
        {
          Thread.sleep(this.f);
        }
        catch (Exception localException4)
        {
        }
      }
      catch (Exception localException2)
      {
        if (com.amap.api.location.core.a.a == -1)
          com.amap.api.location.core.a.a(this.d);
        try
        {
          Thread.sleep(this.f);
        }
        catch (Exception localException3)
        {
        }
      }
      finally
      {
        if (com.amap.api.location.core.a.a == -1)
          com.amap.api.location.core.a.a(this.d);
        try
        {
          Thread.sleep(this.f);
          throw localObject1;
        }
        catch (Exception localException1)
        {
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.b
 * JD-Core Version:    0.6.2
 */