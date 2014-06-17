package com.taobao.securityjni.bcast;

import android.content.Context;
import android.content.Intent;
import java.lang.reflect.Array;
import java.util.ArrayList;

public class AppStateManager
{
  public static final String DNS_ACTION = "setaobao.bbox.DNS";
  public static final String EXTRA_DNS_IP = "IPAddress";
  public static final String EXTRA_DNS_LOCAL = "DNSinfolocal";
  public static final String EXTRA_DNS_NET = "DNSinfonet";
  public static final String EXTRA_RT = "RTinfo";
  public static final String EXTRA_SPITEP = "SPITEPinfo";
  public static int Init = 0;
  public static final String RT_ACTION = "setaobao.bbox.RT";
  public static final int RT_VALUE_100_PERMISSION = 10;
  public static final int RT_VALUE_INVALID = -1;
  public static final int RT_VALUE_LIKELY_1 = 1;
  public static final int RT_VALUE_LIKELY_2 = 2;
  public static final int RT_VALUE_LIKELY_3 = 3;
  public static final int RT_VALUE_LIKELY_4 = 4;
  public static final int RT_VALUE_LIKELY_5 = 5;
  public static final int RT_VALUE_LIKELY_6 = 6;
  public static final int RT_VALUE_LIKELY_7 = 7;
  public static final int RT_VALUE_LIKELY_8 = 8;
  public static final int RT_VALUE_LIKELY_9 = 9;
  public static final int RT_VALUE_UNDETECTABLE = 0;
  public static final String SPITEP_ACTION = "setaobao.bbox.SPITEP";
  public static final int SPITEP_VALUE_NS_0 = 0;
  public static final int SPITEP_VALUE_NS_1 = 1;
  public static final int SPITEP_VALUE_NS_2 = 2;
  public static final int SPITEP_VALUE_NS_3 = 3;

  public static final ArrayList ParserDomainIP(Intent paramIntent)
  {
    byte[] arrayOfByte = paramIntent.getByteArrayExtra("IPAddress");
    if (arrayOfByte == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    byte[][] arrayOfByte1 = null;
    while (true)
    {
      if (i >= arrayOfByte.length)
        break label201;
      int j = 0xFF & arrayOfByte[i];
      String str = new String(arrayOfByte, i + 1, j);
      int k = i + (j + 1);
      int m = 0xFF & arrayOfByte[k];
      if (1 + (m + k) > arrayOfByte.length)
        break;
      int n = m / 4;
      if (n > 0)
      {
        int[] arrayOfInt = { n, 4 };
        arrayOfByte1 = (byte[][])Array.newInstance(Byte.TYPE, arrayOfInt);
        for (int i1 = 0; i1 < n; i1++)
          System.arraycopy(arrayOfByte, k + 1 + i1 * 4, arrayOfByte1[i1], 0, 4);
      }
      i = k + (m + 1);
      AppStateManager.DoaminIP localDoaminIP = new AppStateManager.DoaminIP();
      localDoaminIP.name = str;
      localDoaminIP.ip = arrayOfByte1;
      localArrayList.add(localDoaminIP);
    }
    label201: return localArrayList;
  }

  public static final void SendDNSBroadCast(Context paramContext, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("setaobao.bbox.DNS");
    localIntent.putExtra("DNSinfolocal", paramInt1);
    localIntent.putExtra("DNSinfonet", paramInt2);
    localIntent.putExtra("IPAddress", paramArrayOfByte);
    paramContext.sendBroadcast(localIntent, "com.setaobao.bbox.permission.APP_STATE");
  }

  public static final void SendRTBroadCast(Context paramContext, int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 10))
      paramInt = -1;
    Intent localIntent = new Intent();
    localIntent.setAction("setaobao.bbox.RT");
    localIntent.putExtra("RTinfo", paramInt);
    paramContext.sendBroadcast(localIntent, "com.setaobao.bbox.permission.APP_STATE");
  }

  public static final void SendSPITEPBroadCast(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("setaobao.bbox.SPITEP");
    localIntent.putExtra("SPITEPinfo", paramInt);
    paramContext.sendBroadcast(localIntent, "com.setaobao.bbox.permission.APP_STATE");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.bcast.AppStateManager
 * JD-Core Version:    0.6.2
 */