package com.taobao.security;

import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.taobao.securityjni.connector.b;
import java.util.Date;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ProtocolManager
{
  private static ProtocalEntry a = new ProtocalEntry();
  private static ProtocalEntry b = new ProtocalEntry();
  private static final ReentrantReadWriteLock c = localReentrantReadWriteLock;
  private static final Lock d = localReentrantReadWriteLock.readLock();
  private static final Lock e = c.writeLock();

  static
  {
    ReentrantReadWriteLock localReentrantReadWriteLock = new ReentrantReadWriteLock();
  }

  static b a(ContextWrapper paramContextWrapper)
  {
    a locala = new a(paramContextWrapper);
    com.taobao.securityjni.connector.a locala1 = new com.taobao.securityjni.connector.a();
    locala1.a(locala);
    Object localObject = locala;
    for (int i = 0; i < 2; i++)
    {
      localObject = (b)locala1.a();
      if (((b)localObject).a == 0)
        break;
    }
    return localObject;
  }

  static void a(b paramb, ContextWrapper paramContextWrapper)
  {
    if ((paramb == null) || (paramContextWrapper == null));
    label336: label340: 
    while (true)
    {
      return;
      ProtocalEntry localProtocalEntry = (ProtocalEntry)paramb.d;
      if ((paramb.a == 0) && (localProtocalEntry != null))
      {
        Date localDate = new Date();
        int i = localDate.getMonth();
        int j = localDate.getDate();
        if (paramContextWrapper != null)
        {
          SharedPreferences localSharedPreferences = paramContextWrapper.getSharedPreferences("pcigdata", 0);
          if (localSharedPreferences != null)
          {
            SharedPreferences.Editor localEditor = localSharedPreferences.edit();
            localEditor.putInt("Month", i);
            localEditor.putInt("Day", j);
            localEditor.commit();
          }
        }
        if (a(localProtocalEntry.ep, localProtocalEntry.fp, localProtocalEntry.bs, localProtocalEntry.v))
        {
          String str1 = localProtocalEntry.v;
          String str2;
          if ((str1 == null) || ("".equals(str1)))
          {
            str2 = null;
            localProtocalEntry.v = str2;
            String str3 = localProtocalEntry.v;
            String str4 = a.v;
            if ((str3 == null) || ("".equals(str3)) || (str3.equals(str4)) || (str3.equals(ProtocalEntry.DEFAULT.v)))
              break label336;
          }
          for (int k = 1; ; k = 0)
          {
            if (k == 0)
              break label340;
            b(localProtocalEntry.ep, localProtocalEntry.fp, localProtocalEntry.bs, localProtocalEntry.v);
            storeDataToFile(paramContextWrapper);
            return;
            int m = str1.length();
            if (m <= 0)
            {
              str2 = "000";
              break;
            }
            if (m == 1)
            {
              str2 = "00" + str1;
              break;
            }
            if (m == 2)
            {
              str2 = "0" + str1;
              break;
            }
            str2 = str1.substring(m - 3, m);
            break;
          }
        }
      }
    }
  }

  private static boolean a(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    return (paramInt1 != -1) && (paramString1 != null) && (!"".equals(paramString1)) && (paramInt2 != -1) && (paramString2 != null) && (!"".equals(paramString2));
  }

  private static void b(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    e.lock();
    if (paramString2.equals(a.v))
    {
      e.unlock();
      return;
    }
    b.ep = a.ep;
    b.fp = a.fp;
    b.bs = a.bs;
    b.v = a.v;
    b.filter = a.filter;
    a.ep = paramInt1;
    a.fp = paramString1;
    a.bs = paramInt2;
    a.v = paramString2;
    a.filter = new c(paramString1);
    a.filter.a();
    e.unlock();
  }

  public static void getCurrentConfig(ProtocalEntry paramProtocalEntry)
  {
    d.lock();
    if (paramProtocalEntry != null)
    {
      paramProtocalEntry.bs = a.bs;
      paramProtocalEntry.ep = a.ep;
      paramProtocalEntry.fp = a.fp;
      paramProtocalEntry.v = a.v;
      paramProtocalEntry.filter = a.filter;
    }
    d.unlock();
  }

  public static boolean protocolHandler(ContextWrapper paramContextWrapper)
  {
    boolean bool = true;
    if (paramContextWrapper != null)
    {
      SharedPreferences localSharedPreferences2 = paramContextWrapper.getSharedPreferences("pcigdata", 0);
      if (localSharedPreferences2 != null)
      {
        int m = localSharedPreferences2.getInt("ep", -1);
        int n = localSharedPreferences2.getInt("bs", -1);
        String str1 = localSharedPreferences2.getString("fp", null);
        String str2 = localSharedPreferences2.getString("v", null);
        if (a(m, str1, n, str2))
          b(m, str1, n, str2);
      }
    }
    int[] arrayOfInt = new int[2];
    arrayOfInt[bool] = -1;
    arrayOfInt[0] = -1;
    if (paramContextWrapper != null)
    {
      SharedPreferences localSharedPreferences1 = paramContextWrapper.getSharedPreferences("pcigdata", 0);
      if (localSharedPreferences1 != null)
      {
        arrayOfInt[0] = localSharedPreferences1.getInt("Month", -1);
        arrayOfInt[bool] = localSharedPreferences1.getInt("Day", -1);
      }
    }
    Date localDate = new Date();
    if ((arrayOfInt[0] >= 0) && (arrayOfInt[0] < 12) && (arrayOfInt[bool] > 0) && (arrayOfInt[bool] < 32))
    {
      int j = localDate.getMonth();
      int k = localDate.getDate();
      if ((j != arrayOfInt[0]) || (k > arrayOfInt[bool]));
    }
    for (int i = 0; ; i = bool)
    {
      if (i == 0);
      b localb;
      do
      {
        return false;
        localb = a(paramContextWrapper);
      }
      while ((localb == null) || (localb.a == -5) || (localb.a == -7));
      a(localb, paramContextWrapper);
      if (!a.fp.equals(b.fp));
      while (true)
      {
        return bool;
        bool = false;
      }
    }
  }

  public static ProtocalEntry recoverConfigFromCache()
  {
    e.lock();
    a.ep = b.ep;
    a.fp = b.fp;
    a.bs = b.bs;
    a.v = b.v;
    a.filter = b.filter;
    ProtocalEntry localProtocalEntry = new ProtocalEntry(a.ep, a.bs, a.filter, a.v);
    e.unlock();
    return localProtocalEntry;
  }

  public static ProtocalEntry recoverConfigFromOrg()
  {
    e.lock();
    a.ep = ProtocalEntry.DEFAULT.ep;
    a.fp = ProtocalEntry.DEFAULT.fp;
    a.bs = ProtocalEntry.DEFAULT.bs;
    a.v = ProtocalEntry.DEFAULT.v;
    a.filter = ProtocalEntry.DEFAULT.filter;
    ProtocalEntry localProtocalEntry = new ProtocalEntry(a.ep, a.bs, a.filter, a.v);
    e.unlock();
    return localProtocalEntry;
  }

  public static int storeDataToFile(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper != null)
    {
      SharedPreferences localSharedPreferences = paramContextWrapper.getSharedPreferences("pcigdata", 0);
      if (localSharedPreferences != null)
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        ProtocalEntry localProtocalEntry = new ProtocalEntry();
        getCurrentConfig(localProtocalEntry);
        localEditor.putInt("ep", localProtocalEntry.ep);
        localEditor.putInt("bs", localProtocalEntry.bs);
        localEditor.putString("fp", localProtocalEntry.fp);
        localEditor.putString("v", localProtocalEntry.v);
        localEditor.commit();
        return 0;
      }
    }
    return -1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.ProtocolManager
 * JD-Core Version:    0.6.2
 */