package com.alipay.mobile.about.service;

import android.os.Bundle;
import com.alipay.mobile.common.cache.disk.CacheException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.TaskScheduleService;
import com.alipay.mobile.framework.service.ext.about.UpdateInfo;
import com.alipay.mobile.framework.service.ext.about.UpdateServices;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.download.ExternalDownloadManager;
import com.alipay.mobileapp.common.service.facade.version.ClientVersionServiceFacade;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;

public class UpdateServicesImpl extends UpdateServices
{
  private TaskScheduleService a;
  private CacheManagerService b;
  private ClientVersionServiceFacade c;

  private boolean a(ClientUpdateCheckRes paramClientUpdateCheckRes)
  {
    if (paramClientUpdateCheckRes.getResultStatus() != 202);
    while (true)
    {
      return false;
      try
      {
        byte[] arrayOfByte = this.b.getDiskCacheService().get(null, "about_ignore_update_version");
        if ((arrayOfByte != null) && (new String(arrayOfByte).equals(paramClientUpdateCheckRes.getNewestVersion())))
          return true;
      }
      catch (CacheException localCacheException)
      {
      }
    }
    return false;
  }

  private void b(ClientUpdateCheckRes paramClientUpdateCheckRes)
  {
    if (paramClientUpdateCheckRes != null)
      if ((paramClientUpdateCheckRes == null) || (paramClientUpdateCheckRes.getResultStatus() == 201) || (a(paramClientUpdateCheckRes)))
        break label48;
    label48: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        this.b.getMemCacheService().put(null, null, "about_update_info_cache_key", paramClientUpdateCheckRes);
      return;
    }
  }

  public void checkUpdate(String paramString)
  {
    this.a.parallelExecute(new h(this, paramString));
  }

  protected void onCreate(Bundle paramBundle)
  {
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    this.a = ((TaskScheduleService)localMicroApplicationContext.findServiceByInterface(TaskScheduleService.class.getName()));
    this.b = ((CacheManagerService)localMicroApplicationContext.findServiceByInterface(CacheManagerService.class.getName()));
    this.c = ((ClientVersionServiceFacade)((RpcService)localMicroApplicationContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(ClientVersionServiceFacade.class));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void update(UpdateInfo paramUpdateInfo)
  {
    b(m.a(paramUpdateInfo));
  }

  public void update(String paramString)
  {
    update(paramString, false);
  }

  public void update(String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.length() == 0) || ("null".equals(paramString)))
      new StringBuilder("下载新客户端路径错误：").append(paramString).toString();
    new StringBuilder("下载新客户端：").append(paramString).toString();
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    ExternalDownloadManager localExternalDownloadManager = (ExternalDownloadManager)localMicroApplicationContext.getExtServiceByInterface(ExternalDownloadManager.class.getName());
    l locall = new l(this, paramBoolean, localMicroApplicationContext);
    DownloadRequest localDownloadRequest = new DownloadRequest();
    localDownloadRequest.setAppId(null);
    localDownloadRequest.setDescription("钱包升级更新");
    localDownloadRequest.setDownloadUrl(paramString);
    localDownloadRequest.setFileName("Alipay.apk");
    localDownloadRequest.setShowRunningNotification(true);
    localDownloadRequest.setTitle("支付宝钱包");
    localExternalDownloadManager.addDownload(localDownloadRequest, locall);
    a.a = true;
  }

  // ERROR //
  public void updateImmediately()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/alipay/mobile/about/service/UpdateServicesImpl:b	Lcom/alipay/mobile/framework/service/common/CacheManagerService;
    //   6: invokevirtual 115	com/alipay/mobile/framework/service/common/CacheManagerService:getMemCacheService	()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    //   9: aconst_null
    //   10: ldc 117
    //   12: invokevirtual 243	com/alipay/mobile/framework/service/common/GenericMemCacheService:get	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   15: checkcast 19	com/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull +187 -> 207
    //   23: invokestatic 247	com/alipay/mobile/about/service/m:e	()Landroid/app/Activity;
    //   26: astore_3
    //   27: aload_3
    //   28: ifnull +179 -> 207
    //   31: new 174	java/lang/StringBuilder
    //   34: dup
    //   35: ldc 249
    //   37: invokespecial 178	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: aload_2
    //   41: invokevirtual 48	com/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes:getNewestVersion	()Ljava/lang/String;
    //   44: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 185	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: pop
    //   51: aload_0
    //   52: invokevirtual 141	com/alipay/mobile/about/service/UpdateServicesImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   55: invokeinterface 252 1 0
    //   60: astore 9
    //   62: aload 9
    //   64: getstatic 258	com/alipay/mobile/clientsecurity/R$string:i	I
    //   67: invokevirtual 262	com/alipay/mobile/framework/AlipayApplication:getText	(I)Ljava/lang/CharSequence;
    //   70: invokevirtual 263	java/lang/Object:toString	()Ljava/lang/String;
    //   73: astore 10
    //   75: aload 9
    //   77: getstatic 266	com/alipay/mobile/clientsecurity/R$string:l	I
    //   80: invokevirtual 262	com/alipay/mobile/framework/AlipayApplication:getText	(I)Ljava/lang/CharSequence;
    //   83: invokevirtual 263	java/lang/Object:toString	()Ljava/lang/String;
    //   86: astore 11
    //   88: aload 9
    //   90: getstatic 269	com/alipay/mobile/clientsecurity/R$string:k	I
    //   93: invokevirtual 262	com/alipay/mobile/framework/AlipayApplication:getText	(I)Ljava/lang/CharSequence;
    //   96: invokevirtual 263	java/lang/Object:toString	()Ljava/lang/String;
    //   99: astore 12
    //   101: aload_2
    //   102: invokevirtual 272	com/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes:getGuideMemo	()Ljava/lang/String;
    //   105: astore 13
    //   107: aload 13
    //   109: ifnonnull +101 -> 210
    //   112: aconst_null
    //   113: astore 14
    //   115: new 274	com/alipay/mobile/about/service/g
    //   118: dup
    //   119: aload_2
    //   120: aload_0
    //   121: aload_0
    //   122: getfield 25	com/alipay/mobile/about/service/UpdateServicesImpl:b	Lcom/alipay/mobile/framework/service/common/CacheManagerService;
    //   125: invokespecial 277	com/alipay/mobile/about/service/g:<init>	(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;Lcom/alipay/mobile/framework/service/common/CacheManagerService;)V
    //   128: astore 15
    //   130: new 279	com/alipay/mobile/about/service/i
    //   133: dup
    //   134: aload_0
    //   135: invokespecial 282	com/alipay/mobile/about/service/i:<init>	(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)V
    //   138: astore 16
    //   140: new 284	android/os/Handler
    //   143: dup
    //   144: invokestatic 290	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   147: invokespecial 293	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   150: astore 17
    //   152: aload_2
    //   153: invokevirtual 23	com/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes:getResultStatus	()I
    //   156: istore 18
    //   158: iload 18
    //   160: tableswitch	default:+28 -> 188, 202:+66->226, 203:+158->318, 204:+96->256
    //   189: aconst_null
    //   190: dload_0
    //   191: invokestatic 301	java/lang/Thread:sleep	(J)V
    //   194: aload_0
    //   195: getfield 25	com/alipay/mobile/about/service/UpdateServicesImpl:b	Lcom/alipay/mobile/framework/service/common/CacheManagerService;
    //   198: invokevirtual 115	com/alipay/mobile/framework/service/common/CacheManagerService:getMemCacheService	()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    //   201: ldc 117
    //   203: invokevirtual 304	com/alipay/mobile/framework/service/common/GenericMemCacheService:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   206: pop
    //   207: aload_0
    //   208: monitorexit
    //   209: return
    //   210: aload 13
    //   212: ldc_w 306
    //   215: ldc_w 308
    //   218: invokevirtual 312	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   221: astore 14
    //   223: goto -108 -> 115
    //   226: aload_0
    //   227: getfield 25	com/alipay/mobile/about/service/UpdateServicesImpl:b	Lcom/alipay/mobile/framework/service/common/CacheManagerService;
    //   230: invokevirtual 31	com/alipay/mobile/framework/service/common/CacheManagerService:getDiskCacheService	()Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    //   233: aconst_null
    //   234: aconst_null
    //   235: ldc 33
    //   237: aload_2
    //   238: invokevirtual 48	com/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes:getNewestVersion	()Ljava/lang/String;
    //   241: invokevirtual 316	java/lang/String:getBytes	()[B
    //   244: invokestatic 322	java/lang/System:currentTimeMillis	()J
    //   247: ldc2_w 323
    //   250: ldc_w 326
    //   253: invokevirtual 329	com/alipay/mobile/framework/service/common/DiskCacheService:put	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    //   256: aload 17
    //   258: new 331	com/alipay/mobile/about/service/j
    //   261: dup
    //   262: aload_0
    //   263: aload 10
    //   265: aload_2
    //   266: aload 14
    //   268: aload 16
    //   270: aload 11
    //   272: aload 15
    //   274: aload 12
    //   276: invokespecial 334	com/alipay/mobile/about/service/j:<init>	(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
    //   279: invokevirtual 338	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   282: pop
    //   283: goto -95 -> 188
    //   286: astore 4
    //   288: new 174	java/lang/StringBuilder
    //   291: dup
    //   292: ldc_w 340
    //   295: invokespecial 178	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   298: aload 4
    //   300: invokevirtual 343	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   303: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: invokevirtual 185	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   309: pop
    //   310: goto -122 -> 188
    //   313: astore_1
    //   314: aload_0
    //   315: monitorexit
    //   316: aload_1
    //   317: athrow
    //   318: aload 17
    //   320: new 345	com/alipay/mobile/about/service/k
    //   323: dup
    //   324: aload_0
    //   325: aload 10
    //   327: aload_2
    //   328: aload 14
    //   330: aload 16
    //   332: aload 11
    //   334: aload 15
    //   336: invokespecial 348	com/alipay/mobile/about/service/k:<init>	(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    //   339: invokevirtual 338	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   342: pop
    //   343: goto -155 -> 188
    //   346: astore 6
    //   348: goto -154 -> 194
    //
    // Exception table:
    //   from	to	target	type
    //   31	107	286	java/lang/Exception
    //   115	158	286	java/lang/Exception
    //   210	223	286	java/lang/Exception
    //   226	256	286	java/lang/Exception
    //   256	283	286	java/lang/Exception
    //   318	343	286	java/lang/Exception
    //   2	19	313	finally
    //   23	27	313	finally
    //   31	107	313	finally
    //   115	158	313	finally
    //   188	194	313	finally
    //   194	207	313	finally
    //   210	223	313	finally
    //   226	256	313	finally
    //   256	283	313	finally
    //   288	310	313	finally
    //   318	343	313	finally
    //   188	194	346	java/lang/InterruptedException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.UpdateServicesImpl
 * JD-Core Version:    0.6.2
 */