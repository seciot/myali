package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.core.model.rec.alert.BaseReqVO;
import java.io.Serializable;

public class OperatorAlertReq extends BaseReqVO
  implements Serializable
{
  public String alertType;
  public String checkCode;
  public String mobileNo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.OperatorAlertReq
 * JD-Core Version:    0.6.2
 */