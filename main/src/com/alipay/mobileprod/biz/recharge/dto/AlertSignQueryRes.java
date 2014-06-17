package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.biz.recharge.vo.AlertSignVO;
import com.alipay.mobileprod.core.model.rec.alert.BaseRespVO;
import java.io.Serializable;
import java.util.List;

public class AlertSignQueryRes extends BaseRespVO
  implements Serializable
{
  public boolean addSwitch;
  public List<AlertSignVO> alertSignList;
  public AlertSignVO bindingMobileAlertSign;
  public int maxListSize;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.AlertSignQueryRes
 * JD-Core Version:    0.6.2
 */