package com.alipay.mobileprod.biz.recharge;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignQueryRes;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.alipay.mobileprod.biz.recharge.dto.AlertSwitchRes;
import com.alipay.mobileprod.biz.recharge.dto.OperatorAlertReq;

public abstract interface MobileOperatorAlertService
{
  @OperationType("alipay.virtual.recharge.mobile.alertCancel")
  public abstract AlertSignRes alertCancel(OperatorAlertReq paramOperatorAlertReq);

  @OperationType("alipay.virtual.recharge.mobile.alertSign")
  public abstract AlertSignRes alertSign(OperatorAlertReq paramOperatorAlertReq);

  @OperationType("alipay.virtual.recharge.mobile.alertSignQuery")
  public abstract AlertSignQueryRes alertSignQuery(OperatorAlertReq paramOperatorAlertReq);

  @OperationType("alipay.virtual.recharge.mobile.operatorAlertSwitch")
  public abstract AlertSwitchRes alertSwitch(OperatorAlertReq paramOperatorAlertReq);

  @OperationType("alipay.virtual.recharge.mobile.preAlertSign")
  public abstract AlertSignRes preAlertSign(OperatorAlertReq paramOperatorAlertReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.MobileOperatorAlertService
 * JD-Core Version:    0.6.2
 */