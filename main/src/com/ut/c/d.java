package com.ut.c;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.ut.a.a.a.a.a;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class d
{
  private static final Pattern aM = Pattern.compile("[\\s0-]{0,15}");

  public static String h(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str1 = localTelephonyManager.getDeviceId();
        str2 = str1;
        localObject = str2;
        if ((g.D((String)localObject)) || (aM.matcher((CharSequence)localObject).matches()) || (((String)localObject).contains("|")))
          localObject = y();
        return localObject;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localObject = null;
        continue;
        String str2 = null;
      }
    }
  }

  public static String i(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str1 = localTelephonyManager.getSubscriberId();
        str2 = str1;
        localObject = str2;
        if ((g.D((String)localObject)) || (aM.matcher((CharSequence)localObject).matches()) || (((String)localObject).contains("|")))
          localObject = y();
        return localObject;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localObject = null;
        continue;
        String str2 = null;
      }
    }
  }

  public static final String y()
  {
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = (int)System.nanoTime();
    int k = new Random().nextInt();
    int m = new Random().nextInt();
    byte[] arrayOfByte1 = b.getBytes(i);
    byte[] arrayOfByte2 = b.getBytes(j);
    byte[] arrayOfByte3 = b.getBytes(k);
    byte[] arrayOfByte4 = b.getBytes(m);
    byte[] arrayOfByte5 = new byte[16];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte5, 0, 4);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte5, 4, 4);
    System.arraycopy(arrayOfByte3, 0, arrayOfByte5, 8, 4);
    System.arraycopy(arrayOfByte4, 0, arrayOfByte5, 12, 4);
    return a.getBundle(arrayOfByte5);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.c.d
 * JD-Core Version:    0.6.2
 */