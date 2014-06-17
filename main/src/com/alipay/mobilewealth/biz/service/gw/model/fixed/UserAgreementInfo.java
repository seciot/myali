package com.alipay.mobilewealth.biz.service.gw.model.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class UserAgreementInfo extends ToString
  implements Serializable
{
  public List<BizItem> bizItems;
  public boolean signedFund;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.fixed.UserAgreementInfo
 * JD-Core Version:    0.6.2
 */