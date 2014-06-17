package com.alipay.mobilewealth.biz.service.gw.model.common;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.Map;

public class RecommendChannelInfo extends ToString
  implements Serializable
{
  public String assignedChannel;
  public String availableLimit;
  public String bankLogUrl;
  public String bankName;
  public BizItem bizItem;
  public String bizProduct;
  public String cardLast4No;
  public String cardNo;
  public String channelType;
  public Map<String, String> extInfos;
  public String instId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.common.RecommendChannelInfo
 * JD-Core Version:    0.6.2
 */