package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class ChangeSpeedReq extends BaseReqVO
{
  public String changeToSpeed;
  public String transferNo;

  public String getChangeToSpeed()
  {
    return this.changeToSpeed;
  }

  public String getTransferNo()
  {
    return this.transferNo;
  }

  public void setChangeToSpeed(String paramString)
  {
    this.changeToSpeed = paramString;
  }

  public void setTransferNo(String paramString)
  {
    this.transferNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.ChangeSpeedReq
 * JD-Core Version:    0.6.2
 */