package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.biz.transfer.vo.TransferRecordVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

public class HistoryRecordResp extends BaseRespVO
{
  public boolean redDotSwitch;
  public List<TransferRecordVO> transferRecordList;

  public List<TransferRecordVO> getTransferRecordList()
  {
    return this.transferRecordList;
  }

  public boolean isRedDotSwitch()
  {
    return this.redDotSwitch;
  }

  public void setRedDotSwitch(boolean paramBoolean)
  {
    this.redDotSwitch = paramBoolean;
  }

  public void setTransferRecordList(List<TransferRecordVO> paramList)
  {
    this.transferRecordList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.HistoryRecordResp
 * JD-Core Version:    0.6.2
 */