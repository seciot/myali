package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedAssetInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class MyFixedAssetInfoQueryResult extends CommonPageResult
  implements Serializable
{
  public String appointDealTips;
  public String appointmentId;
  public String appointmentText;
  public String appointmentTitle;
  public List<FixedAssetInfo> assetInfos;
  public BizItem expiredItem;
  public boolean hasAppointment;
  public boolean hiddenAsset;
  public boolean showApponitment;
  public String totalAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.MyFixedAssetInfoQueryResult
 * JD-Core Version:    0.6.2
 */