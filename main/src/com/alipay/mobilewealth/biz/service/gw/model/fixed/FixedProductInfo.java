package com.alipay.mobilewealth.biz.service.gw.model.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedProductInfo extends ToString
  implements Serializable
{
  public List<BizItem> bizItems;
  public String button;
  public boolean byShares;
  public String detailTips;
  public String duringNum;
  public String duringTips;
  public String duringUnit;
  public BizItem expireType;
  public double maxAmount;
  public double minAmount;
  public double onSaleCount;
  public String productCode;
  public String productId;
  public String productImg;
  public String productName;
  public String profitRate;
  public float proportion;
  public String publishInfo;
  public String publishInst;
  public String publishName;
  public String raiseTimeTips;
  public int rateShowType;
  public String rateType;
  public String remainDayTips;
  public String remainDays;
  public boolean showPublishInst;
  public String soldOrder;
  public String status;
  public double unitPrice;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedProductInfo
 * JD-Core Version:    0.6.2
 */