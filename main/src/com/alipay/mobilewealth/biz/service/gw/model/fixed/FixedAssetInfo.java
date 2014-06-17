package com.alipay.mobilewealth.biz.service.gw.model.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedAssetInfo extends ToString
  implements Serializable
{
  public String assetCode;
  public String assetId;
  public String assetImg;
  public String assetMemo;
  public String assetName;
  public String assetStatus;
  public List<BizItem> bizItems;
  public boolean canPledge;
  public String detailTips;
  public String duringNum;
  public String duringUnit;
  public BizItem expireType;
  public List<FixedPledgeInfo> pledgeInfoList;
  public String pledgeTips;
  public String productId;
  public BizItem profitInfo;
  public List<String> profitInfoSpecial;
  public String profitRate;
  public String publishInst;
  public String remainDays;
  public float remainDuringPercent;
  public boolean showRedDot;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedAssetInfo
 * JD-Core Version:    0.6.2
 */