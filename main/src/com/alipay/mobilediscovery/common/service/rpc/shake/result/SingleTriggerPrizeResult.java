package com.alipay.mobilediscovery.common.service.rpc.shake.result;

import com.alipay.mobilediscovery.common.service.rpc.shake.info.ShakePrizeInfo;
import com.alipay.mobilediscovery.common.service.rpc.shake.info.ShakeTipsInfo;
import com.alipay.mobilediscovery.common.service.rpc.shake.info.WinPrizeInfo;
import java.io.Serializable;

public class SingleTriggerPrizeResult extends CommonResult
  implements Serializable
{
  public ShakePrizeInfo prizeInfo;
  public String thisProviderName;
  public ShakeTipsInfo tipsInfo;
  public String triggerPrizeCode = "F";
  public WinPrizeInfo winPrizeInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilediscovery.common.service.rpc.shake.result.SingleTriggerPrizeResult
 * JD-Core Version:    0.6.2
 */