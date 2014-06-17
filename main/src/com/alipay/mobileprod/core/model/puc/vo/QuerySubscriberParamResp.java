package com.alipay.mobileprod.core.model.puc.vo;

import com.alipay.mobileprod.core.model.puc.BaseRespVO;
import com.alipay.mobileprod.core.model.puc.domain.ModelField;
import java.io.Serializable;
import java.util.List;

public class QuerySubscriberParamResp extends BaseRespVO
  implements Serializable
{
  public String ackCodeTip;
  public String agreementUrl;
  public boolean canSubscriber;
  public boolean cannotCancelPaperBill;
  public String groupId;
  public List<ModelField> inputFieldList;
  public String instName;
  public boolean isActualTimeSubscribe;
  public boolean needAckCode;
  public boolean needCancelPaperBill;
  public String ownerName;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.vo.QuerySubscriberParamResp
 * JD-Core Version:    0.6.2
 */