package com.aps;

import android.content.ContentResolver;
import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.params.HttpParams;

public class n
{
  static float a(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble.length != 4)
      return 0.0F;
    float[] arrayOfFloat = new float[1];
    Location.distanceBetween(paramArrayOfDouble[0], paramArrayOfDouble[1], paramArrayOfDouble[2], paramArrayOfDouble[3], arrayOfFloat);
    return arrayOfFloat[0];
  }

  static int a(int paramInt)
  {
    return -113 + paramInt * 2;
  }

  static int a(CellLocation paramCellLocation, Context paramContext)
  {
    if (a(paramContext))
    {
      new Object[] { "air plane mode on" };
      return 9;
    }
    if ((paramCellLocation instanceof GsmCellLocation))
      return 1;
    try
    {
      Class.forName("android.telephony.cdma.CdmaCellLocation");
      return 2;
    }
    catch (Exception localException)
    {
    }
    return 9;
  }

  static long a()
  {
    return System.currentTimeMillis();
  }

  static void a(Context paramContext, String paramString)
  {
    if (paramString == null)
      paramString = "null";
    char[] arrayOfChar2;
    int i;
    if (("http://apilocate.amap.com/mobile".indexOf("test") == -1) && ("http://aps.amap.com/APS/r".indexOf("test") == -1) && (f.d.indexOf("test") == -1))
    {
      char[] arrayOfChar1 = "http://apilocate.amap.com/mobile".substring(7, 8).toCharArray();
      arrayOfChar2 = "http://aps.amap.com/APS/r".substring(7, 8).toCharArray();
      if ((arrayOfChar1 == null) || (!Character.isLetter(arrayOfChar1[0])))
        i = 1;
    }
    while (true)
    {
      if ((i != 0) && (paramContext != null))
      {
        Toast.makeText(paramContext, paramString, 0).show();
        new Object[] { paramString };
      }
      return;
      if ((arrayOfChar2 == null) || (!Character.isLetter(arrayOfChar2[0])))
        i = 1;
      else
        i = 0;
    }
  }

  static void a(Throwable paramThrowable)
  {
  }

  static void a(HttpParams paramHttpParams, int paramInt)
  {
    paramHttpParams.setIntParameter("http.connection.timeout", paramInt);
    paramHttpParams.setIntParameter("http.socket.timeout", paramInt);
    paramHttpParams.setLongParameter("http.conn-manager.timeout", paramInt);
  }

  static void a(Object[] paramArrayOfObject)
  {
  }

  static boolean a(Context paramContext)
  {
    if (paramContext == null)
      return false;
    ContentResolver localContentResolver = paramContext.getContentResolver();
    if (b() < 17);
    try
    {
      int j = ((Integer)l.a("android.provider.Settings$System", "getInt", new Object[] { localContentResolver, ((String)l.a("android.provider.Settings$System", "AIRPLANE_MODE_ON")).toString() }, new Class[] { ContentResolver.class, String.class })).intValue();
      return j == 1;
      try
      {
        int i = ((Integer)l.a("android.provider.Settings$Global", "getInt", new Object[] { localContentResolver, ((String)l.a("android.provider.Settings$Global", "AIRPLANE_MODE_ON")).toString() }, new Class[] { ContentResolver.class, String.class })).intValue();
        return i == 1;
      }
      catch (Exception localException1)
      {
      }
      label144: return false;
    }
    catch (Exception localException2)
    {
      break label144;
    }
  }

  static boolean a(c paramc)
  {
    if (paramc == null);
    double d1;
    double d2;
    float f;
    do
    {
      do
        return false;
      while ((paramc.f().equals("5")) || (paramc.f().equals("6")));
      d1 = paramc.a();
      d2 = paramc.b();
      f = paramc.c();
    }
    while ((d1 == 0.0D) && (d2 == 0.0D) && (f == 0.0D));
    return true;
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = null;
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localGZIPOutputStream.write(paramArrayOfByte);
      localGZIPOutputStream.close();
      arrayOfByte = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return arrayOfByte;
  }

  static String[] a(TelephonyManager paramTelephonyManager)
  {
    String str = null;
    if (paramTelephonyManager != null)
      str = paramTelephonyManager.getNetworkOperator();
    String[] arrayOfString = { "0", "0" };
    if ((str != null) && (str.indexOf("null") == -1) && (str.length() > 4))
    {
      arrayOfString[0] = str.substring(0, 3);
      arrayOfString[1] = str.substring(3, 5);
      return arrayOfString;
    }
    new Object[] { "get mcc and mnc e" };
    return arrayOfString;
  }

  static int b()
  {
    try
    {
      int j = l.b("android.os.Build$VERSION", "SDK_INT");
      return j;
    }
    catch (Exception localException1)
    {
      try
      {
        int i = Integer.parseInt(l.a("android.os.Build$VERSION", "SDK").toString());
        return i;
      }
      catch (Exception localException2)
      {
      }
    }
    return 0;
  }

  static NetworkInfo b(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)b(paramContext, "connectivity");
    if (localConnectivityManager != null);
    while (true)
    {
      try
      {
        NetworkInfo localNetworkInfo2 = localConnectivityManager.getActiveNetworkInfo();
        localNetworkInfo1 = localNetworkInfo2;
        return localNetworkInfo1;
      }
      catch (SecurityException localSecurityException)
      {
        return null;
      }
      NetworkInfo localNetworkInfo1 = null;
    }
  }

  static Object b(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return null;
    return paramContext.getApplicationContext().getSystemService(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.n
 * JD-Core Version:    0.6.2
 */