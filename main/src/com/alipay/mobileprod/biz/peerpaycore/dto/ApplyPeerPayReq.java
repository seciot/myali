package com.alipay.mobileprod.biz.peerpaycore.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;
import java.io.Serializable;

public class ApplyPeerPayReq extends BaseReqVO
  implements Serializable
{
  public String bizNo;
  public String bizType;
  public String canAddContact;
  public String emotionID;
  public String message;
  public String peerPayAccount;
  public String peerPayUserID;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.peerpaycore.dto.ApplyPeerPayReq
 * JD-Core Version:    0.6.2
 */