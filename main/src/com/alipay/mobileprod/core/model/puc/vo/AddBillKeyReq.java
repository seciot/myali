package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseReqVO;
import java.io.Serializable;

public class AddBillKeyReq extends BaseReqVO
  implements Serializable
{
  public String agreementId;
  public String billKey;
  public String groupId;
  public String instId;
  public String ownerName;
  public String publicId;
  public String subBizType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.AddBillKeyReq
 * JD-Core Version:    0.6.2
 */