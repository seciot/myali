package com.alipay.mobileprod.biz.deposit.dto;

import com.alipay.mobileprod.core.model.deposit.BaseReqVO;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class ConfirmDepositReq extends BaseReqVO
  implements Serializable
{
  public String accountNo = null;
  public Map<String, String> extDatas = new HashMap();
  public String faceDisplayValue = null;
  public String faceValue = null;
  public String gameAreaValue = null;
  public String gameSkuValue = null;
  public String gameSubAreaValue = null;
  public String itemValue = null;
  public String permitAccount = null;
  public int type = 0;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.deposit.dto.ConfirmDepositReq
 * JD-Core Version:    0.6.2
 */