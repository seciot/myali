package com.alipay.mobile.security.securitycommon.service;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.common.lbs.LBSLocation;
import com.alipay.mobile.common.lbs.LBSLocationManagerProxy;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;
import com.alipay.mobile.framework.service.ext.security.bean.CellIdInfo;
import com.alipay.mobile.framework.service.ext.security.bean.LocationInfo;

public class LocationInfoServiceImpl extends LocationInfoService
{
  private CacheManagerService a;
  private boolean b;
  private int[] c = { 1, 2, 8, 3 };
  private int[] d = { 4, 7, 5, 6 };

  private static CellIdInfo a(TelephonyManager paramTelephonyManager)
  {
    try
    {
      CellIdInfo localCellIdInfo = new CellIdInfo();
      CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)paramTelephonyManager.getCellLocation();
      if (localCdmaCellLocation == null)
        return null;
      int i = localCdmaCellLocation.getNetworkId();
      int j = Integer.parseInt(paramTelephonyManager.getNetworkOperator().substring(0, 3));
      int k = Integer.parseInt(String.valueOf(localCdmaCellLocation.getSystemId()));
      localCellIdInfo.setCid(localCdmaCellLocation.getBaseStationId());
      localCellIdInfo.setMcc(j);
      localCellIdInfo.setMnc(k);
      localCellIdInfo.setLac(i);
      localCellIdInfo.setType("cdma");
      return localCellIdInfo;
    }
    catch (Exception localException)
    {
      new StringBuilder().append(localException.getMessage()).toString();
    }
    return null;
  }

  private void a(LocationInfo paramLocationInfo, Context paramContext, LBSLocation paramLBSLocation)
  {
    if ((paramLBSLocation != null) && (paramLocationInfo != null))
      while (true)
      {
        CellIdInfo localCellIdInfo1;
        try
        {
          paramLocationInfo.setLatitude(paramLBSLocation.getLatitude());
          paramLocationInfo.setLongitude(paramLBSLocation.getLongitude());
          paramLocationInfo.setAccuracy(paramLBSLocation.getAccuracy());
          TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
          new CellIdInfo();
          int i = localTelephonyManager.getNetworkType();
          new StringBuilder("getCellIDInfo-->        NetworkType = ").append(i).toString();
          int j = localTelephonyManager.getPhoneType();
          new StringBuilder("getCellIDInfo-->        phoneType = ").append(j).toString();
          if (a(i, this.c))
          {
            localObject = b(localTelephonyManager);
            paramLocationInfo.setCellId(JSON.toJSONString(localObject));
            paramLocationInfo.setMac(((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress());
            return;
          }
          if (a(i, this.d))
          {
            localObject = a(localTelephonyManager);
            continue;
          }
          localCellIdInfo1 = b(localTelephonyManager);
          if (localCellIdInfo1 == null)
          {
            CellIdInfo localCellIdInfo2 = a(localTelephonyManager);
            localObject = localCellIdInfo2;
            continue;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        Object localObject = localCellIdInfo1;
      }
  }

  private static boolean a(int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramInt == paramArrayOfInt[j])
          bool = true;
      }
      else
        return bool;
    }
  }

  // ERROR //
  private static CellIdInfo b(TelephonyManager paramTelephonyManager)
  {
    // Byte code:
    //   0: new 24	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo
    //   3: dup
    //   4: invokespecial 25	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: invokevirtual 31	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   12: checkcast 196	android/telephony/gsm/GsmCellLocation
    //   15: astore 4
    //   17: aload 4
    //   19: ifnonnull +5 -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload 4
    //   26: invokevirtual 199	android/telephony/gsm/GsmCellLocation:getLac	()I
    //   29: istore 5
    //   31: aload_0
    //   32: invokevirtual 41	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   35: iconst_0
    //   36: iconst_3
    //   37: invokevirtual 47	java/lang/String:substring	(II)Ljava/lang/String;
    //   40: invokestatic 53	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   43: istore 10
    //   45: iload 10
    //   47: istore 7
    //   49: aload_0
    //   50: invokevirtual 41	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   53: iconst_3
    //   54: iconst_5
    //   55: invokevirtual 47	java/lang/String:substring	(II)Ljava/lang/String;
    //   58: invokestatic 53	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   61: istore 12
    //   63: iload 12
    //   65: istore 8
    //   67: aload_1
    //   68: aload 4
    //   70: invokevirtual 202	android/telephony/gsm/GsmCellLocation:getCid	()I
    //   73: invokevirtual 67	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo:setCid	(I)V
    //   76: aload_1
    //   77: iload 7
    //   79: invokevirtual 70	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo:setMcc	(I)V
    //   82: aload_1
    //   83: iload 8
    //   85: invokevirtual 73	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo:setMnc	(I)V
    //   88: aload_1
    //   89: iload 5
    //   91: invokevirtual 76	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo:setLac	(I)V
    //   94: aload_1
    //   95: ldc 204
    //   97: invokevirtual 82	com/alipay/mobile/framework/service/ext/security/bean/CellIdInfo:setType	(Ljava/lang/String;)V
    //   100: aload_1
    //   101: areturn
    //   102: iconst_0
    //   103: istore 8
    //   105: aload_0
    //   106: ifnull -39 -> 67
    //   109: new 84	java/lang/StringBuilder
    //   112: dup
    //   113: ldc 206
    //   115: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload_0
    //   119: invokevirtual 41	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   122: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: ldc 208
    //   127: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: pop
    //   134: iconst_0
    //   135: istore 8
    //   137: goto -70 -> 67
    //   140: astore_2
    //   141: new 84	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   148: aload_2
    //   149: invokevirtual 88	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   152: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: pop
    //   159: aconst_null
    //   160: areturn
    //   161: astore 11
    //   163: goto -61 -> 102
    //   166: astore 6
    //   168: iconst_0
    //   169: istore 7
    //   171: goto -69 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   0	17	140	java/lang/Exception
    //   24	31	140	java/lang/Exception
    //   31	45	140	java/lang/Exception
    //   49	63	140	java/lang/Exception
    //   67	100	140	java/lang/Exception
    //   109	134	140	java/lang/Exception
    //   49	63	161	java/lang/Throwable
    //   31	45	166	java/lang/Throwable
  }

  public LocationInfo getCacheLocationInfo()
  {
    LocationInfo localLocationInfo = (LocationInfo)this.a.getMemCacheService().get(null, "locationInfoKey");
    if ((localLocationInfo == null) || ((TextUtils.isEmpty(localLocationInfo.getLatitude())) && (TextUtils.isEmpty(localLocationInfo.getLongitude()))))
    {
      localLocationInfo = new LocationInfo();
      LBSLocation localLBSLocation = LBSLocationManagerProxy.getInstance().getLastKnownLocation(AlipayApplication.getInstance());
      a(localLocationInfo, AlipayApplication.getInstance(), localLBSLocation);
    }
    return localLocationInfo;
  }

  public LocationInfo getLocationInfo()
  {
    LocationInfo localLocationInfo = new LocationInfo();
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    LBSLocationManagerProxy.getInstance().requestLocationUpdates(localAlipayApplication, new LocationInfoServiceImpl.1(this, localLocationInfo, localAlipayApplication));
    if (!this.b)
      try
      {
        "LocationInfoServiceImpl".wait(10000L);
        return localLocationInfo;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
      finally
      {
      }
    return localLocationInfo;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = ((CacheManagerService)getMicroApplicationContext().findServiceByInterface(CacheManagerService.class.getName()));
  }

  public void putCacheLocationInfo()
  {
    this.a.getMemCacheService().put(null, null, "locationInfoKey", getLocationInfo());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.service.LocationInfoServiceImpl
 * JD-Core Version:    0.6.2
 */