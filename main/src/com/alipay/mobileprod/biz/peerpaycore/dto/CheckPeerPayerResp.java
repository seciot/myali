package com.alipay.mobileprod.biz.peerpaycore.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;
import java.io.Serializable;

public class CheckPeerPayerResp extends BaseRespVO
  implements Serializable
{
  public String applyerID;
  public String applyerIsAllow;
  public String applyerReason;
  public String peerPayIsAllow;
  public String peerPayReason;
  public String peerpayID;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.peerpaycore.dto.CheckPeerPayerResp
 * JD-Core Version:    0.6.2
 */