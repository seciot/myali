package com.alipay.mobileprod.biz.deposit.dto;

import com.alipay.mobileprod.core.model.deposit.BaseRespVO;
import java.io.Serializable;

public class ConfirmDepositRes extends BaseRespVO
  implements Serializable
{
  public String accountNo = null;
  public String bizSubType;
  public String bizType = "trade";
  public String faceDisplayValue = null;
  public String goodsName = null;
  public String permitAccount = null;
  public String price = null;
  public String tradeNo = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.dto.ConfirmDepositRes
 * JD-Core Version:    0.6.2
 */