package com.ut.device;

import android.content.Context;
import android.content.Intent;
import com.ut.a.a.a.a.a;
import com.ut.b.c;
import com.ut.c.b;
import com.ut.c.f;
import com.ut.c.g;
import com.ut.c.h;
import java.io.ByteArrayOutputStream;
import java.util.Random;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class d
{
  private static final Object U = new Object();
  private static d V = null;
  private c T = null;
  private String W = null;
  private e X = null;
  private String Y = "xx_utdid_key";
  private String Z = "xx_utdid_domain";
  private boolean aa = false;
  private Context mContext = null;

  public d(Context paramContext)
  {
    this.mContext = paramContext;
    this.T = new c(paramContext, ".DataStorage", "ContextData", false, true);
    this.X = new e();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(g.s(this.Y));
    this.Y = String.format("K_%d", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(g.s(this.Z));
    this.Z = String.format("D_%d", arrayOfObject2);
  }

  public static d f(Context paramContext)
  {
    if ((paramContext != null) && (V == null));
    synchronized (U)
    {
      if (V == null)
        V = new d(paramContext);
      return V;
    }
  }

  private static String f(byte[] paramArrayOfByte)
  {
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(new SecretKeySpec("d6fc3a4a06adbde89223bvefedc24fecde188aaa9161".getBytes(), localMac.getAlgorithm()));
    return a.a(localMac.doFinal(paramArrayOfByte));
  }

  private void k()
  {
    String str1 = l();
    String str2 = this.T.getString(this.Y);
    if ((!g.D(str1)) && (g.D(str2)))
      v(str1);
    if ((g.D(str1)) && (!g.D(str2)))
      u(str2);
  }

  private String l()
  {
    try
    {
      if (h.A() >= 11)
      {
        Object localObject1 = this.mContext.getSystemService("clipboard");
        if (localObject1 != null)
        {
          Object localObject2 = f.a(localObject1, "getPrimaryClip");
          if (localObject2 != null)
          {
            int i = com.ut.c.e.getInt(f.a(localObject2, "getItemCount"));
            if (i > 0)
            {
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = Integer.valueOf(i - 1);
              Class[] arrayOfClass = new Class[1];
              arrayOfClass[0] = Integer.TYPE;
              Object localObject3 = f.a(localObject2, "getItemAt", arrayOfObject, arrayOfClass);
              if (localObject3 != null)
              {
                Object localObject4 = f.a(localObject3, "getIntent");
                if ((localObject4 instanceof Intent))
                {
                  Intent localIntent = (Intent)localObject4;
                  if (localIntent != null)
                  {
                    String str1 = localIntent.getStringExtra(this.Y);
                    if (!g.D(str1))
                    {
                      String str2 = this.X.x(str1);
                      if (str2 != null)
                        return str1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private final byte[] m()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = new Random().nextInt();
    byte[] arrayOfByte1 = b.getBytes(i);
    byte[] arrayOfByte2 = b.getBytes(j);
    localByteArrayOutputStream.write(arrayOfByte1, 0, 4);
    localByteArrayOutputStream.write(arrayOfByte2, 0, 4);
    localByteArrayOutputStream.write(3);
    localByteArrayOutputStream.write(0);
    try
    {
      String str2 = com.ut.c.d.h(this.mContext);
      str1 = str2;
      localByteArrayOutputStream.write(b.getBytes(g.s(str1)), 0, 4);
      localByteArrayOutputStream.write(b.getBytes(g.s(f(localByteArrayOutputStream.toByteArray()))));
      return localByteArrayOutputStream.toByteArray();
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = new Random().nextInt();
    }
  }

  private void u(String paramString)
  {
    try
    {
      if (h.A() >= 11)
      {
        Object localObject1 = this.mContext.getSystemService("clipboard");
        if (localObject1 != null)
          try
          {
            Class localClass2 = Class.forName("android.content.ClipData");
            localClass1 = localClass2;
            if (localClass1 != null)
            {
              Intent localIntent = new Intent();
              localIntent.putExtra(this.Y, paramString);
              Object[] arrayOfObject1 = new Object[2];
              arrayOfObject1[0] = this.Z;
              arrayOfObject1[1] = localIntent;
              Object localObject2 = f.a(localClass1, "newIntent", arrayOfObject1, new Class[] { CharSequence.class, Intent.class });
              if (localObject2 != null)
              {
                Object[] arrayOfObject2 = { localObject2 };
                Class[] arrayOfClass = new Class[1];
                arrayOfClass[0] = localObject2.getClass();
                f.a(localObject1, "setPrimaryClip", arrayOfObject2, arrayOfClass);
                return;
              }
            }
          }
          catch (ClassNotFoundException localClassNotFoundException)
          {
            while (true)
            {
              localClassNotFoundException.printStackTrace();
              Class localClass1 = null;
            }
          }
      }
    }
    catch (Exception localException)
    {
    }
  }

  private void v(String paramString)
  {
    this.T.putString(this.Y, paramString);
    this.T.putString("v", "1");
    this.T.commit();
  }

  private void w(String paramString)
  {
    u(paramString);
    v(paramString);
  }

  public String getValue()
  {
    try
    {
      Object localObject2;
      if (this.W != null)
        localObject2 = this.W;
      while (true)
      {
        return localObject2;
        String str1 = this.T.getString(this.Y);
        if ((g.D(str1)) || (!this.aa))
        {
          k();
          this.aa = true;
        }
        if (g.D(str1))
          str1 = this.T.getString(this.Y);
        if (!g.D(str1))
        {
          this.W = this.X.x(str1);
          localObject2 = this.W;
        }
        else
        {
          try
          {
            byte[] arrayOfByte = m();
            if (arrayOfByte != null)
            {
              String str2 = this.X.g(arrayOfByte);
              if (str2 != null)
              {
                w(str2);
                this.W = a.a(arrayOfByte);
                localObject2 = this.W;
                continue;
              }
              String str3 = e.n();
              localObject2 = str3;
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            localObject2 = null;
          }
        }
      }
    }
    finally
    {
    }
  }

  public void t(String paramString)
  {
    try
    {
      if (!g.D(paramString))
      {
        String str1 = l();
        String str2 = this.T.getString(this.Y);
        if (g.D(str1))
          v(str1);
        if ((g.D(str2)) || (!paramString.equals(str2)))
          u(str2);
      }
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.d
 * JD-Core Version:    0.6.2
 */