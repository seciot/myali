package com.alipay.mobileprod.biz.peerpaycore.dto;

import com.alipay.mobileprod.biz.peerpaycore.vo.PPContactUserVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.io.Serializable;
import java.util.List;

public class GetPPContactListResp extends BaseRespVO
  implements Serializable
{
  public List<PPContactUserVO> ppContactList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.peerpaycore.dto.GetPPContactListResp
 * JD-Core Version:    0.6.2
 */