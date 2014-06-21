package com.alipay.mobile.alipassapp.ui.common;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.alipassapp.biz.model.e;
import com.alipay.mobile.common.lbs.LBSLocation;
import com.alipay.mobile.common.lbs.LBSLocationListener;
import com.alipay.mobile.common.lbs.LBSLocationManagerProxy;
import com.alipay.mobile.h5container.extenal.ICallInfo;

final class j
  implements LBSLocationListener
{
  j(AlipassJsBridge paramAlipassJsBridge, ICallInfo paramICallInfo)
  {
  }

  public final void onLocationUpdate(LBSLocation paramLBSLocation)
  {
    new StringBuilder("位置信息location=").append(paramLBSLocation).toString();
    e locale = new e();
    locale.a(paramLBSLocation.getLatitude());
    locale.b(paramLBSLocation.getLongitude());
    locale.a(paramLBSLocation.getCity());
    Object localObject = JSON.toJSON(locale);
    new StringBuilder("位置信息positionObj=").append(localObject).toString();
    if (localObject == null)
      return;
    this.a.callBack((JSONObject)localObject);
    LBSLocationManagerProxy.getInstance().removeUpdates(AlipassJsBridge.getBundle(this.b), this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.j
 * JD-Core Version:    0.6.2
 */