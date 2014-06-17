package com.alipay.android.widgets.asset.rpc;

import android.app.Activity;
import android.content.Context;
import com.alipay.android.widgets.asset.AssetWidgetGroup;
import com.alipay.android.widgets.asset.utils.AssetCacheHelper;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult;
import com.googlecode.androidannotations.annotations.EBean;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@EBean
public class AssetDynamicDataProcessor
{
  private MicroApplicationContext a = AlipayApplication.getInstance().getMicroApplicationContext();
  private WealthHomeRpcExcutor b;
  private Map<String, WealthHomeInfoResult> c = new ConcurrentHashMap();
  private AssetWidgetGroup d;
  private boolean e = false;

  public AssetDynamicDataProcessor(Context paramContext)
  {
    this.b = new WealthHomeRpcExcutor(this, (Activity)paramContext);
  }

  public final void a()
  {
    UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(this.a);
    if ((localUserInfo == null) || (!this.c.containsKey(localUserInfo.getUserId())))
      this.d.a(null);
  }

  public final void a(AssetWidgetGroup paramAssetWidgetGroup)
  {
    this.d = paramAssetWidgetGroup;
  }

  public final void a(WealthHomeInfoResult paramWealthHomeInfoResult, boolean paramBoolean)
  {
    if ((paramWealthHomeInfoResult != null) && (paramWealthHomeInfoResult.success))
    {
      this.d.a(paramWealthHomeInfoResult);
      this.e = true;
      UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(this.a);
      if ((localUserInfo != null) && (paramBoolean))
      {
        this.c.put(localUserInfo.getUserId(), paramWealthHomeInfoResult);
        AssetCacheHelper.a().a(paramWealthHomeInfoResult, localUserInfo.getUserId());
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    c(b(paramBoolean));
  }

  public final boolean b(boolean paramBoolean)
  {
    UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(this.a);
    if (localUserInfo != null)
    {
      if ((!this.e) || (!this.d.a()))
        break label36;
      paramBoolean = false;
    }
    label36: WealthHomeInfoResult localWealthHomeInfoResult;
    do
    {
      return paramBoolean;
      if (this.c.get(localUserInfo.getUserId()) != null)
      {
        a((WealthHomeInfoResult)this.c.get(localUserInfo.getUserId()), false);
        return false;
      }
      localWealthHomeInfoResult = AssetCacheHelper.a().a(localUserInfo.getUserId());
      new StringBuilder("get cache = ").append(localWealthHomeInfoResult).toString();
    }
    while (localWealthHomeInfoResult == null);
    this.c.put(localUserInfo.getUserId(), localWealthHomeInfoResult);
    a(localWealthHomeInfoResult, false);
    return false;
  }

  public final void c(boolean paramBoolean)
  {
    this.b.setShowProgressDialog(paramBoolean);
    this.b.start(new Object[0]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.rpc.AssetDynamicDataProcessor
 * JD-Core Version:    0.6.2
 */