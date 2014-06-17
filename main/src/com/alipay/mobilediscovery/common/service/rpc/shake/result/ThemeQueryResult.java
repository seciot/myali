package com.alipay.mobilediscovery.common.service.rpc.shake.result;

import com.alipay.mobilediscovery.common.service.rpc.shake.info.ShakePrizeInfo;
import com.alipay.mobilediscovery.common.service.rpc.shake.info.ShakeThemeInfo;
import java.io.Serializable;

public class ThemeQueryResult extends CommonResult
  implements Serializable
{
  public ShakePrizeInfo prizeInfo;
  public ShakeThemeInfo themeInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilediscovery.common.service.rpc.shake.result.ThemeQueryResult
 * JD-Core Version:    0.6.2
 */