package com.alipay.android.widget.security.service;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.TaskScheduleService;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingCallback;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingService;
import com.alipay.mobile.framework.service.ext.security.TaobaoQueryBindingCallback;
import com.alipay.mobilesecurity.biz.gw.service.bind.TaobaoBindingFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoQuickBindingReq;

public class TaobaoBindingServiceImpl extends TaobaoBindingService
{
  private RpcService a;
  private TaobaoQueryBindingCallback b;
  private TaobaoBindingCallback c;
  private MicroApplicationContext d;
  private MicroApplication e;
  private boolean f;
  private boolean g;
  private TaskScheduleService h;

  public void bindingFinish(MobileSecurityResult paramMobileSecurityResult, boolean paramBoolean)
  {
    if (this.c != null)
    {
      if (paramBoolean)
        this.c.quickBindingSuccess(paramMobileSecurityResult);
    }
    else
      return;
    this.c.quickBindingFail(paramMobileSecurityResult);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.d = getMicroApplicationContext();
    this.a = ((RpcService)this.d.findServiceByInterface(RpcService.class.getName()));
    this.h = ((TaskScheduleService)this.d.findServiceByInterface(TaskScheduleService.class.getName()));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void queryTaobaoBindingByMobile(String paramString)
  {
    if (this.f)
      return;
    try
    {
      this.f = true;
      this.h.parallelExecute(new f(this, paramString));
      return;
    }
    finally
    {
      this.f = false;
    }
  }

  public void setBindingCallback(TaobaoBindingCallback paramTaobaoBindingCallback)
  {
    this.c = paramTaobaoBindingCallback;
  }

  public void setMicroApplication(MicroApplication paramMicroApplication)
  {
    this.e = paramMicroApplication;
  }

  public void setQueryBindingCallback(TaobaoQueryBindingCallback paramTaobaoQueryBindingCallback)
  {
    this.b = paramTaobaoQueryBindingCallback;
  }

  public MobileSecurityResult taobaoQuickBinding(String paramString1, String paramString2)
  {
    if (this.g)
      return null;
    try
    {
      this.g = true;
      TaobaoBindingFacade localTaobaoBindingFacade = (TaobaoBindingFacade)this.a.getRpcProxy(TaobaoBindingFacade.class);
      TaobaoQuickBindingReq localTaobaoQuickBindingReq = new TaobaoQuickBindingReq();
      localTaobaoQuickBindingReq.setNick(paramString1);
      localTaobaoQuickBindingReq.setMobile(paramString2);
      MobileSecurityResult localMobileSecurityResult = localTaobaoBindingFacade.taobaoQuickBinding(localTaobaoQuickBindingReq);
      return localMobileSecurityResult;
    }
    finally
    {
      this.g = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.TaobaoBindingServiceImpl
 * JD-Core Version:    0.6.2
 */