package com.alipay.mobile.base.engine;

import android.content.Context;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.DownloadService;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.quinox.engine.ApkEngineManager;
import com.alipay.mobileapp.biz.rpc.appengine.facade.AndroidEngineReq;
import com.alipay.mobileapp.biz.rpc.appengine.facade.AndroidEngineRes;
import com.alipay.mobileapp.biz.rpc.appengine.facade.AndroidEngineServiceFacade;
import java.io.File;

public class ApkEngineUpdater extends Thread
{
  private Context a;
  private RpcService b;

  public ApkEngineUpdater(Context paramContext)
  {
    this.a = paramContext;
    this.b = ((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName()));
  }

  public void run()
  {
    super.run();
    ApkEngineManager localApkEngineManager = ApkEngineManager.getInstance(AlipayApplication.getInstance());
    AndroidEngineServiceFacade localAndroidEngineServiceFacade = (AndroidEngineServiceFacade)this.b.getRpcProxy(AndroidEngineServiceFacade.class);
    AndroidEngineReq localAndroidEngineReq = new AndroidEngineReq();
    String str1 = localApkEngineManager.getVersion();
    localAndroidEngineReq.setEngineVersion(str1);
    try
    {
      AndroidEngineRes localAndroidEngineRes2 = localAndroidEngineServiceFacade.syncAndroidAppEngine(localAndroidEngineReq);
      localAndroidEngineRes1 = localAndroidEngineRes2;
      if (localAndroidEngineRes1 != null)
      {
        int i = localAndroidEngineRes1.getResultStatus();
        new StringBuilder("Resp result status is ").append(i).toString();
        if (i == 100)
        {
          str2 = localAndroidEngineRes1.getNewEngineVersion();
          String str3 = localAndroidEngineRes1.getMemo();
          new StringBuilder("Result[").append(str3).append("]downloadUrl[").append(localAndroidEngineRes1.getDownloadUrl()).append("]version[").append(str2).append("]currentVersion[").append(str1).append("]").toString();
          if (((str3 == null) || (!"201".equals(str3))) && (str2 != null) && (str1.compareTo(str2) < 0))
            break label216;
        }
      }
      return;
    }
    catch (Exception localException)
    {
      String str2;
      label216: String str4;
      do
      {
        AndroidEngineRes localAndroidEngineRes1;
        while (true)
          localAndroidEngineRes1 = null;
        str4 = localAndroidEngineRes1.getDownloadUrl();
      }
      while ((str4 == null) || ("".equals(str4)));
      String str5 = this.a.getCacheDir().getAbsolutePath() + File.separator + "tmpEngine_" + str2 + ".apk";
      DownloadService localDownloadService = (DownloadService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(DownloadService.class.getName());
      new StringBuilder("begin download file ").append(str5).toString();
      localDownloadService.addDownload(str4, str5, null, new a(this, str5, localApkEngineManager));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.engine.ApkEngineUpdater
 * JD-Core Version:    0.6.2
 */