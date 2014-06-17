package com.alipay.mobileprod.biz.deposit.dto;

import com.alipay.mobileprod.core.model.deposit.BaseReqVO;
import java.io.Serializable;

public class QueryItemDetailReq extends BaseReqVO
  implements Serializable
{
  public String faceValue = null;
  public String itemValue = null;
  public int type = 0;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.dto.QueryItemDetailReq
 * JD-Core Version:    0.6.2
 */