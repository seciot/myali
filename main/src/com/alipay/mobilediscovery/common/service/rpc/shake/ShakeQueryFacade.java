package com.alipay.mobilediscovery.common.service.rpc.shake;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilediscovery.common.service.rpc.shake.req.ShareContentReq;
import com.alipay.mobilediscovery.common.service.rpc.shake.req.TriggerCountReq;
import com.alipay.mobilediscovery.common.service.rpc.shake.result.ShareContentResult;
import com.alipay.mobilediscovery.common.service.rpc.shake.result.SingleShakeTriggerResult;
import com.alipay.mobilediscovery.common.service.rpc.shake.result.ThemeQueryResult;
import com.alipay.mobilediscovery.common.service.rpc.shake.result.WinPrizeResult;

public abstract interface ShakeQueryFacade
{
  @OperationType("alipay.mobilediscovery.shake.getSingleShakeThemeAndTriggerCount")
  @CheckLogin
  public abstract ThemeQueryResult getSingleShakeThemeAndTriggerCount(TriggerCountReq paramTriggerCountReq);

  @OperationType("alipay.mobilediscovery.shake.queryShareContent")
  @CheckLogin
  public abstract ShareContentResult queryShareContent(ShareContentReq paramShareContentReq);

  @OperationType("alipay.mobilediscovery.shake.querySingleTriggerCount")
  @CheckLogin
  public abstract SingleShakeTriggerResult querySingleTriggerCount(TriggerCountReq paramTriggerCountReq);

  @OperationType("alipay.mobilediscovery.shake.queryWinPrize")
  @CheckLogin
  public abstract WinPrizeResult queryWinPrize();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilediscovery.common.service.rpc.shake.ShakeQueryFacade
 * JD-Core Version:    0.6.2
 */