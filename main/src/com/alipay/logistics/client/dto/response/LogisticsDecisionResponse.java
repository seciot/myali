package com.alipay.logistics.client.dto.response;

import java.io.Serializable;

public class LogisticsDecisionResponse extends LogisticsPayBillQueryResult
  implements Serializable
{
  public String logisticsBizType;
  public String logisticsCirculation;

  public String getLogisticsBizType()
  {
    return this.logisticsBizType;
  }

  public String getLogisticsCirculation()
  {
    return this.logisticsCirculation;
  }

  public void setLogisticsBizType(String paramString)
  {
    this.logisticsBizType = paramString;
  }

  public void setLogisticsCirculation(String paramString)
  {
    this.logisticsCirculation = paramString;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("success:");
    localStringBuilder.append(getSuccess());
    localStringBuilder.append(",errorCode:");
    localStringBuilder.append(getErrorCode());
    localStringBuilder.append(",errorMsg");
    localStringBuilder.append(getErrorMsg());
    localStringBuilder.append(",payAmont:");
    localStringBuilder.append(getPayAmount());
    localStringBuilder.append(",queryAmount:");
    localStringBuilder.append(getQueryAmount());
    localStringBuilder.append(",deliverMobile:");
    localStringBuilder.append(getDeliverMobile());
    localStringBuilder.append(",goodsName:");
    localStringBuilder.append(getGoodsName());
    localStringBuilder.append(",payable:");
    localStringBuilder.append(getPayable());
    localStringBuilder.append(",ispaid:");
    localStringBuilder.append(getIsPaid());
    localStringBuilder.append(",isnotify:");
    localStringBuilder.append(getIsNotify());
    localStringBuilder.append(",orderId:");
    localStringBuilder.append(getOrderId());
    localStringBuilder.append(",amtcanmodify:");
    localStringBuilder.append(getAmtCanModify());
    localStringBuilder.append(",logisticsBizType:");
    localStringBuilder.append(this.logisticsBizType);
    localStringBuilder.append(",logisticsCirculation:");
    localStringBuilder.append(this.logisticsCirculation);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.LogisticsDecisionResponse
 * JD-Core Version:    0.6.2
 */