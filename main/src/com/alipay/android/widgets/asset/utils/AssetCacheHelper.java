package com.alipay.android.widgets.asset.utils;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;
import com.alipay.mobile.framework.service.common.SecurityCacheService;
import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult;

public class AssetCacheHelper
{
  public static String a = "_CACHE_OPEN_WAP";
  public static String b = "TRUE";
  public static String c = "_wealthWidgetHomeData";
  public static String d = "_wealthWidgetHomeData_8_1";
  public static int e = 2592000;
  private static AssetCacheHelper f;
  private MicroApplicationContext g = AlipayApplication.getInstance().getMicroApplicationContext();
  private GenericMemCacheService h = ((CacheManagerService)this.g.findServiceByInterface(CacheManagerService.class.getName())).getMemCacheService();
  private SecurityCacheService i = (SecurityCacheService)this.g.findServiceByInterface(SecurityCacheService.class.getName());

  public static AssetCacheHelper a()
  {
    if (f == null)
      f = new AssetCacheHelper();
    return f;
  }

  // ERROR //
  public final WealthHomeInfoResult a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 79	com/alipay/android/widgets/asset/utils/AssetCacheHelper:i	Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    //   4: aload_1
    //   5: getstatic 37	com/alipay/android/widgets/asset/utils/AssetCacheHelper:d	Ljava/lang/String;
    //   8: new 88	com/alipay/android/widgets/asset/utils/a
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 91	com/alipay/android/widgets/asset/utils/a:<init>	(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V
    //   16: invokevirtual 95	com/alipay/mobile/framework/service/common/SecurityCacheService:get	(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    //   19: checkcast 97	com/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult
    //   22: astore_3
    //   23: new 99	java/lang/StringBuilder
    //   26: dup
    //   27: ldc 101
    //   29: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_3
    //   33: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: pop
    //   40: aload_3
    //   41: areturn
    //   42: astore_2
    //   43: aconst_null
    //   44: astore_3
    //   45: ldc 2
    //   47: invokevirtual 63	java/lang/Class:getName	()Ljava/lang/String;
    //   50: pop
    //   51: aload_3
    //   52: areturn
    //   53: astore 5
    //   55: goto -10 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   0	23	42	java/lang/Exception
    //   23	40	53	java/lang/Exception
  }

  public final Object a(String paramString1, String paramString2)
  {
    Object localObject = this.h.get(paramString1, paramString2);
    if (localObject != null)
      return localObject;
    return null;
  }

  public final void a(WealthHomeInfoResult paramWealthHomeInfoResult, String paramString)
  {
    if (paramWealthHomeInfoResult == null)
      return;
    try
    {
      this.i.set(paramString, d, paramWealthHomeInfoResult);
      new StringBuilder("设置缓存，wealthHomeResult=").append(paramWealthHomeInfoResult).toString();
      return;
    }
    catch (Exception localException)
    {
      AssetCacheHelper.class.getName();
    }
  }

  public final void a(String paramString1, String paramString2, Object paramObject)
  {
    this.h.put(paramString1, null, paramString2, paramObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.utils.AssetCacheHelper
 * JD-Core Version:    0.6.2
 */