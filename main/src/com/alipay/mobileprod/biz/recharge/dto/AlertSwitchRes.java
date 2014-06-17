package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.core.model.rec.alert.BaseRespVO;
import java.io.Serializable;

public class AlertSwitchRes extends BaseRespVO
  implements Serializable
{
  public int bindingMobileStatus;
  public boolean totalSwitch;
  public boolean valid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.AlertSwitchRes
 * JD-Core Version:    0.6.2
 */