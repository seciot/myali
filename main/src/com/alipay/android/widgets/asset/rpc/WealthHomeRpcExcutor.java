package com.alipay.android.widgets.asset.rpc;

import android.app.Activity;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.ext.RpcExcutor;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobilewealth.biz.service.gw.api.home.WealthHomeInfoManager;
import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult;

public class WealthHomeRpcExcutor extends RpcExcutor<WealthHomeInfoResult>
{
  private WealthHomeInfoManager a = (WealthHomeInfoManager)getRpcProxy(WealthHomeInfoManager.class);
  private MicroApplicationContext b = AlipayApplication.getInstance().getMicroApplicationContext();
  private AssetDynamicDataProcessor c;

  public WealthHomeRpcExcutor(AssetDynamicDataProcessor paramAssetDynamicDataProcessor, Activity paramActivity)
  {
    super(paramActivity, 0);
    setShowNetworkErrorView(false);
    this.c = paramAssetDynamicDataProcessor;
  }

  public void onRpcException(RpcException paramRpcException, Object[] paramArrayOfObject)
  {
    runOnUiThreadDelay(new a(this), 30L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.rpc.WealthHomeRpcExcutor
 * JD-Core Version:    0.6.2
 */