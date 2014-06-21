package com.alipay.mobile.discoverywidget.ui.a;

import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.android.widgets.discovery.DiscoveryWidgetGroup;
import com.alipay.kabaoprod.biz.mwallet.pass.request.HomePageWidgetReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverywidget.a.d;
import com.alipay.mobile.discoverywidget.e;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EBean;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.HashMap;

@EBean
public class a
{
  private static boolean l = false;
  public WidgetMsgFlag a = null;
  private MicroApplicationContext b;
  private Context c;
  private UserInfo d = null;
  private String e = null;
  private com.alipay.mobile.discoverywidget.Bundle.AppBundle f;
  private com.alipay.mobile.discoverywidget.Bundle.AppBundle g = null;
  private d h;
  private HashMap<String, com.alipay.mobile.discoverywidget.AppBundle.a> i;
  private CacheManagerService j;
  private String k = "_DiscoveryWidgetHomeData";

  private void a()
  {
    this.j = ((CacheManagerService)this.b.findServiceByInterface(CacheManagerService.class.getName()));
    this.g = new com.alipay.mobile.discoverywidget.AppBundle.a.a(this.b);
    this.d = UserInfoHelper.getInstance().getUserInfo(this.b);
    if (this.d != null)
    {
      this.e = this.d.getUserId();
      return;
    }
    DiscoveryWidgetGroup.class.getName();
  }

  private HashMap<String, com.alipay.mobile.discoverywidget.AppBundle.a> b()
  {
    try
    {
      byte[] arrayOfByte = (byte[])this.j.getValue(this.e, this.k);
      if (arrayOfByte != null)
      {
        HashMap localHashMap = (HashMap)JSON.parseObject(new String(arrayOfByte), new c(this), new Feature[0]);
        return localHashMap;
      }
    }
    catch (Exception localException)
    {
      DiscoveryWidgetGroup.class.getName();
    }
    return null;
  }

  public final void a(HomePageWidgetReq paramHomePageWidgetReq)
  {
    DiscoveryWidgetGroup.class.getName();
    this.d = UserInfoHelper.getInstance().getUserInfo(this.b);
    if ((this.d == null) || (StringUtils.isBlank(this.d.getUserId())))
      return;
    this.e = this.d.getUserId();
    IndexWidgetResult localIndexWidgetResult = null;
    this.i = b();
    if ((this.i == null) || (this.i.get(this.e) == null))
      this.f.initDiscoveryLayout();
    while (true)
    {
      if (localIndexWidgetResult != null)
        this.f.discoveryNotify(localIndexWidgetResult);
      b(paramHomePageWidgetReq);
      return;
      HashMap localHashMap = this.i;
      localIndexWidgetResult = null;
      if (localHashMap != null)
      {
        Object localObject = this.i.get(this.e);
        localIndexWidgetResult = null;
        if (localObject != null)
          localIndexWidgetResult = ((com.alipay.mobile.discoverywidget.AppBundle.a)this.i.get(this.e)).a();
      }
    }
  }

  @UiThread
  protected void a(IndexWidgetResult paramIndexWidgetResult)
  {
    long l1 = System.currentTimeMillis();
    if (paramIndexWidgetResult == null)
      return;
    if (paramIndexWidgetResult.success)
    {
      this.f.discoveryNotify(paramIndexWidgetResult);
      this.i = this.h.b();
      com.alipay.mobile.discoverywidget.AppBundle.a locala = (com.alipay.mobile.discoverywidget.AppBundle.a)this.i.get(this.e);
      if (locala == null)
        locala = new com.alipay.mobile.discoverywidget.AppBundle.a();
      locala.getBundle(paramIndexWidgetResult);
      this.i.put(this.e, locala);
      if ((!paramIndexWidgetResult.redMark) || (paramIndexWidgetResult.tabRedMarkTip == null))
        break label307;
      if (!"new".equalsIgnoreCase(paramIndexWidgetResult.tabRedMarkTip))
        break label252;
      this.a.showMsgFlagNew();
    }
    label307: 
    while (true)
    {
      String str = JSONObject.toJSONString(this.i);
      new StringBuilder("the cacheData put is ").append(str).toString();
      byte[] arrayOfByte = str.getBytes();
      this.j.put2Cache(this.e, null, this.k, arrayOfByte, arrayOfByte, System.currentTimeMillis(), 9999999L, "text");
      long l2 = System.currentTimeMillis();
      DiscoveryWidgetGroup.class.getName();
      new StringBuilder("Discovery-handleGetDiscoveryInfo耗时：").append(l2 - l1).toString();
      return;
      this.b.Alert("提醒", paramIndexWidgetResult.resultView, this.c.getString(e.a), new b(this), null, null);
      break;
      label252: if ("hui".equalsIgnoreCase(paramIndexWidgetResult.tabRedMarkTip))
      {
        this.a.showMsgFlag("惠");
      }
      else
      {
        this.a.setMsgStyle("num");
        this.a.showMsgFlag(Integer.valueOf(paramIndexWidgetResult.tabRedMarkTip).intValue());
        continue;
        this.a.setVisibility(4);
      }
    }
  }

  public final void a(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = paramMicroApplicationContext;
    this.c = paramMicroApplicationContext.getApplicationContext();
    this.h = d.a();
    a();
  }

  public final void a(MicroApplicationContext paramMicroApplicationContext, com.alipay.mobile.discoverywidget.BundlesManagerImpl.c paramc)
  {
    this.b = paramMicroApplicationContext;
    this.c = paramMicroApplicationContext.getApplicationContext();
    this.f = paramc;
    this.h = d.a();
    a();
  }

  @Background
  protected void b(HomePageWidgetReq paramHomePageWidgetReq)
  {
    long l1 = System.currentTimeMillis();
    if (l)
    {
      DiscoveryWidgetGroup.class.getName();
      return;
    }
    try
    {
      l = true;
      long l2 = System.currentTimeMillis();
      new IndexWidgetResult();
      try
      {
        IndexWidgetResult localIndexWidgetResult = this.g.getBundle(paramHomePageWidgetReq);
        a(localIndexWidgetResult);
        long l4 = System.currentTimeMillis() - l2;
        DiscoveryWidgetGroup.class.getName();
        new StringBuilder("Discovery-rpcGetDiscoveryInfo 耗时(ms)：").append(l4).toString();
        long l3 = System.currentTimeMillis() - l1;
        DiscoveryWidgetGroup.class.getName();
        new StringBuilder("Discovery-processRequest 耗时(ms)：").append(l3).toString();
        return;
      }
      catch (RpcException localRpcException)
      {
        while (true)
        {
          DiscoveryWidgetGroup.class.getName();
          new StringBuilder("RPC异常").append(localRpcException).toString();
        }
      }
    }
    finally
    {
      l = false;
    }
  }

  @UiThread
  protected void b(IndexWidgetResult paramIndexWidgetResult)
  {
    DiscoveryWidgetGroup.class.getName();
    if ((paramIndexWidgetResult.redMark) && (paramIndexWidgetResult.tabRedMarkTip != null))
    {
      if ("new".equalsIgnoreCase(paramIndexWidgetResult.tabRedMarkTip))
      {
        this.a.showMsgFlagNew();
        return;
      }
      if ("hui".equalsIgnoreCase(paramIndexWidgetResult.tabRedMarkTip))
      {
        this.a.showMsgFlag("惠");
        return;
      }
      this.a.setMsgStyle("num");
      this.a.showMsgFlag(Integer.valueOf(paramIndexWidgetResult.tabRedMarkTip).intValue());
      return;
    }
    this.a.setVisibility(4);
  }

  @Background
  public void c(HomePageWidgetReq paramHomePageWidgetReq)
  {
    new IndexWidgetResult();
    try
    {
      IndexWidgetResult localIndexWidgetResult = this.g.getBundle(paramHomePageWidgetReq);
      if ((localIndexWidgetResult != null) && (localIndexWidgetResult.success))
      {
        b(localIndexWidgetResult);
        return;
      }
      DiscoveryWidgetGroup.class.getName();
      return;
    }
    catch (RpcException localRpcException)
    {
      DiscoveryWidgetGroup.class.getName();
      new StringBuilder("RPC异常").append(localRpcException).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverywidget.ui.a.a
 * JD-Core Version:    0.6.2
 */