package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class ConsultChargeFeeResp extends BaseRespVO
{
  public String chargeFee;
  public String transferSpeed;
  public String transferSpeedDes;

  public String getChargeFee()
  {
    return this.chargeFee;
  }

  public String getTransferSpeed()
  {
    return this.transferSpeed;
  }

  public String getTransferSpeedDes()
  {
    return this.transferSpeedDes;
  }

  public void setChargeFee(String paramString)
  {
    this.chargeFee = paramString;
  }

  public void setTransferSpeed(String paramString)
  {
    this.transferSpeed = paramString;
  }

  public void setTransferSpeedDes(String paramString)
  {
    this.transferSpeedDes = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.ConsultChargeFeeResp
 * JD-Core Version:    0.6.2
 */