package com.alipay.mobile.onsitepay.phoneblacklist;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.alipay.livetradeprod.core.model.rpc.CheckPhoneModelReq;
import com.alipay.livetradeprod.core.model.rpc.CheckPhoneModelRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackList;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackListCallBack;

public class PhoneBlackListImpl extends PhoneBlackList
{
  final String a = "PhoneBlackListImpl";
  final String b = "phoneBlackList";
  PhoneBlackListCallBack c = null;
  Context d = null;
  private String e = null;

  protected final void a()
  {
    CheckPhoneModelReq localCheckPhoneModelReq = new CheckPhoneModelReq();
    localCheckPhoneModelReq.manufacturer = Build.MANUFACTURER;
    localCheckPhoneModelReq.phoneModel = Build.MODEL;
    localCheckPhoneModelReq.osVersion = Build.VERSION.RELEASE;
    CheckPhoneModelRes localCheckPhoneModelRes = null;
    try
    {
      localCheckPhoneModelRes = ((SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class)).checkPhoneModel(localCheckPhoneModelReq);
      new StringBuilder("从服务器获取黑名单2 =").append(localCheckPhoneModelRes.resultStr).toString();
      if (localCheckPhoneModelRes != null)
        checkPhoneBlackUI(localCheckPhoneModelRes);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void checkPhoneBlackUI(CheckPhoneModelRes paramCheckPhoneModelRes)
  {
    if ((paramCheckPhoneModelRes != null) && (paramCheckPhoneModelRes.success))
    {
      String str = paramCheckPhoneModelRes.resultStr;
      com.alipay.mobile.onsitepay.payer.sound.a.a(this.d, "phoneBlackList", str);
      storeBlacksInLocal(str);
      this.c.callBack(str);
      new StringBuilder("CheckPhoneBlack blacks=").append(str).toString();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void queryPhoneBlackList(Context paramContext, PhoneBlackListCallBack paramPhoneBlackListCallBack)
  {
    if (this.e != null)
    {
      new StringBuilder("获取缓存 PhoneBlackListImpl blackList=").append(this.e).toString();
      paramPhoneBlackListCallBack.callBack(this.e);
      return;
    }
    this.c = paramPhoneBlackListCallBack;
    this.d = paramContext;
    new StringBuilder("获取本地 PhoneBlackListImpl blackList=").append(this.e).toString();
    this.e = com.alipay.mobile.onsitepay.payer.sound.a.a(paramContext, "phoneBlackList");
    if ((this.e == null) || ("".equals(this.e)))
      this.e = null;
    paramPhoneBlackListCallBack.callBack(this.e);
    new Thread(new a(this, (byte)0)).start();
  }

  public void storeBlacksInLocal(String paramString)
  {
    this.e = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.phoneblacklist.PhoneBlackListImpl
 * JD-Core Version:    0.6.2
 */