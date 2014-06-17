package com.alipay.mobilebill.biz.shared.bill.model;

import com.alipay.mobilebill.biz.shared.contact.model.ContactData;
import java.util.List;

public class BillInfo
{
  public List<String> actions;
  public String backTax;
  public String billKey;
  public String billName;
  public String billSource;
  public String billType;
  public String bizInNo;
  public String bizInNos;
  public String bizOutNo;
  public String bizStateDesc;
  public String bizSubType;
  public String bizType;
  public boolean canDelete = true;
  public String category;
  public List<FlagTraceInfo> ccrTrace;
  public String consumeFee;
  public String consumeMemo;
  public String consumeStatus;
  public String consumeTitle;
  public ContactData contactData;
  public String deliveryManMobile;
  public String discountInfo;
  public List<FundDetail> failFundDetails;
  public String foreignCurrencyDesc;
  public List<FundDetail> fundDetails;
  public long gmtCreate;
  public String gmtCreateDesc;
  public String gmtLastModifyDesc;
  public String goodsLogo;
  public String goodsTitles;
  public String inOut;
  public String instId;
  public String instName;
  public String invoiceNo;
  public String logisticsErrorCode;
  public String logisticsFee;
  public String logisticsName;
  public List<TraceInfo> logisticsTrace;
  public String messageCosumeTitle;
  public String oppositeLogo;
  public String oppositeLogonId;
  public String oppositeName;
  public String oppositeUserid;
  public String otherFee;
  public String parValue;
  public boolean peerpayApplied;
  public PeerpayModel peerpayModel;
  public List<FlagTraceInfo> preTransferDetails;
  public String productLaunch;
  public String receiveAddress;
  public String refundReason;
  public String refundTime;
  public String regularOppsiteName;
  public String secPayBizSubType;
  public String secPayBizType;

  @Deprecated
  public String serviceFee;
  public String tmallBatchDesc;
  public String tradeType;
  public String transferSpeed;
  public List<FlagTraceInfo> transferToCardDetails;
  public String voiceMemoUrl;

  public List<String> getActions()
  {
    return this.actions;
  }

  public String getBackTax()
  {
    return this.backTax;
  }

  public String getBillKey()
  {
    return this.billKey;
  }

  public String getBillName()
  {
    return this.billName;
  }

  public String getBillSource()
  {
    return this.billSource;
  }

  public String getBillType()
  {
    return this.billType;
  }

  public String getBizInNo()
  {
    return this.bizInNo;
  }

  public String getBizInNos()
  {
    return this.bizInNos;
  }

  public String getBizOutNo()
  {
    return this.bizOutNo;
  }

  public String getBizStateDesc()
  {
    return this.bizStateDesc;
  }

  public String getBizSubType()
  {
    return this.bizSubType;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public String getCategory()
  {
    return this.category;
  }

  public List<FlagTraceInfo> getCcrTrace()
  {
    return this.ccrTrace;
  }

  public String getConsumeFee()
  {
    return this.consumeFee;
  }

  public String getConsumeMemo()
  {
    return this.consumeMemo;
  }

  public String getConsumeStatus()
  {
    return this.consumeStatus;
  }

  public String getConsumeTitle()
  {
    return this.consumeTitle;
  }

  public ContactData getContactData()
  {
    return this.contactData;
  }

  public String getDeliveryManMobile()
  {
    return this.deliveryManMobile;
  }

  public String getDiscountInfo()
  {
    return this.discountInfo;
  }

  public List<FundDetail> getFailFundDetails()
  {
    return this.failFundDetails;
  }

  public List<FundDetail> getFundDetails()
  {
    return this.fundDetails;
  }

  public long getGmtCreate()
  {
    return this.gmtCreate;
  }

  public String getGmtCreateDesc()
  {
    return this.gmtCreateDesc;
  }

  public String getGmtLastModifyDesc()
  {
    return this.gmtLastModifyDesc;
  }

  public String getGoodsLogo()
  {
    return this.goodsLogo;
  }

  public String getGoodsTitles()
  {
    return this.goodsTitles;
  }

  public String getInOut()
  {
    return this.inOut;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public String getInstName()
  {
    return this.instName;
  }

  public String getInvoiceNo()
  {
    return this.invoiceNo;
  }

  public String getLogisticsErrorCode()
  {
    return this.logisticsErrorCode;
  }

  public String getLogisticsFee()
  {
    return this.logisticsFee;
  }

  public String getLogisticsName()
  {
    return this.logisticsName;
  }

  public List<TraceInfo> getLogisticsTrace()
  {
    return this.logisticsTrace;
  }

  public String getOppositeLogonId()
  {
    return this.oppositeLogonId;
  }

  public String getOppositeName()
  {
    return this.oppositeName;
  }

  public String getOppositeUserid()
  {
    return this.oppositeUserid;
  }

  public String getOtherFee()
  {
    return this.otherFee;
  }

  public PeerpayModel getPeerpayModel()
  {
    return this.peerpayModel;
  }

  public List<FlagTraceInfo> getPreTransferDetails()
  {
    return this.preTransferDetails;
  }

  public String getReceiveAddress()
  {
    return this.receiveAddress;
  }

  public String getRefundReason()
  {
    return this.refundReason;
  }

  public String getRefundTime()
  {
    return this.refundTime;
  }

  public String getSecPayBizSubType()
  {
    return this.secPayBizSubType;
  }

  public String getSecPayBizType()
  {
    return this.secPayBizType;
  }

  public String getServiceFee()
  {
    return this.serviceFee;
  }

  public String getTmallBatchDesc()
  {
    return this.tmallBatchDesc;
  }

  public String getTradeType()
  {
    return this.tradeType;
  }

  public String getTransferSpeed()
  {
    return this.transferSpeed;
  }

  public List<FlagTraceInfo> getTransferToCardDetails()
  {
    return this.transferToCardDetails;
  }

  public boolean isCanDelete()
  {
    return this.canDelete;
  }

  public boolean isPeerpayApplied()
  {
    return this.peerpayApplied;
  }

  public void setActions(List<String> paramList)
  {
    this.actions = paramList;
  }

  public void setBackTax(String paramString)
  {
    this.backTax = paramString;
  }

  public void setBillKey(String paramString)
  {
    this.billKey = paramString;
  }

  public void setBillName(String paramString)
  {
    this.billName = paramString;
  }

  public void setBillSource(String paramString)
  {
    this.billSource = paramString;
  }

  public void setBillType(String paramString)
  {
    this.billType = paramString;
  }

  public void setBizInNo(String paramString)
  {
    this.bizInNo = paramString;
  }

  public void setBizInNos(String paramString)
  {
    this.bizInNos = paramString;
  }

  public void setBizOutNo(String paramString)
  {
    this.bizOutNo = paramString;
  }

  public void setBizStateDesc(String paramString)
  {
    this.bizStateDesc = paramString;
  }

  public void setBizSubType(String paramString)
  {
    this.bizSubType = paramString;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setCanDelete(boolean paramBoolean)
  {
    this.canDelete = paramBoolean;
  }

  public void setCategory(String paramString)
  {
    this.category = paramString;
  }

  public void setCcrTrace(List<FlagTraceInfo> paramList)
  {
    this.ccrTrace = paramList;
  }

  public void setConsumeFee(String paramString)
  {
    this.consumeFee = paramString;
  }

  public void setConsumeMemo(String paramString)
  {
    this.consumeMemo = paramString;
  }

  public void setConsumeStatus(String paramString)
  {
    this.consumeStatus = paramString;
  }

  public void setConsumeTitle(String paramString)
  {
    this.consumeTitle = paramString;
  }

  public void setContactData(ContactData paramContactData)
  {
    this.contactData = paramContactData;
  }

  public void setDeliveryManMobile(String paramString)
  {
    this.deliveryManMobile = paramString;
  }

  public void setDiscountInfo(String paramString)
  {
    this.discountInfo = paramString;
  }

  public void setFailFundDetails(List<FundDetail> paramList)
  {
    this.failFundDetails = paramList;
  }

  public void setFundDetails(List<FundDetail> paramList)
  {
    this.fundDetails = paramList;
  }

  public void setGmtCreate(long paramLong)
  {
    this.gmtCreate = paramLong;
  }

  public void setGmtCreateDesc(String paramString)
  {
    this.gmtCreateDesc = paramString;
  }

  public void setGmtLastModifyDesc(String paramString)
  {
    this.gmtLastModifyDesc = paramString;
  }

  public void setGoodsLogo(String paramString)
  {
    this.goodsLogo = paramString;
  }

  public void setGoodsTitles(String paramString)
  {
    this.goodsTitles = paramString;
  }

  public void setInOut(String paramString)
  {
    this.inOut = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setInstName(String paramString)
  {
    this.instName = paramString;
  }

  public void setInvoiceNo(String paramString)
  {
    this.invoiceNo = paramString;
  }

  public void setLogisticsErrorCode(String paramString)
  {
    this.logisticsErrorCode = paramString;
  }

  public void setLogisticsFee(String paramString)
  {
    this.logisticsFee = paramString;
  }

  public void setLogisticsName(String paramString)
  {
    this.logisticsName = paramString;
  }

  public void setLogisticsTrace(List<TraceInfo> paramList)
  {
    this.logisticsTrace = paramList;
  }

  public void setOppositeLogonId(String paramString)
  {
    this.oppositeLogonId = paramString;
  }

  public void setOppositeName(String paramString)
  {
    this.oppositeName = paramString;
  }

  public void setOppositeUserid(String paramString)
  {
    this.oppositeUserid = paramString;
  }

  public void setOtherFee(String paramString)
  {
    this.otherFee = paramString;
  }

  public void setPeerpayApplied(boolean paramBoolean)
  {
    this.peerpayApplied = paramBoolean;
  }

  public void setPeerpayModel(PeerpayModel paramPeerpayModel)
  {
    this.peerpayModel = paramPeerpayModel;
  }

  public void setPreTransferDetails(List<FlagTraceInfo> paramList)
  {
    this.preTransferDetails = paramList;
  }

  public void setReceiveAddress(String paramString)
  {
    this.receiveAddress = paramString;
  }

  public void setRefundReason(String paramString)
  {
    this.refundReason = paramString;
  }

  public void setRefundTime(String paramString)
  {
    this.refundTime = paramString;
  }

  public void setSecPayBizSubType(String paramString)
  {
    this.secPayBizSubType = paramString;
  }

  public void setSecPayBizType(String paramString)
  {
    this.secPayBizType = paramString;
  }

  public void setServiceFee(String paramString)
  {
    this.serviceFee = paramString;
  }

  public void setTmallBatchDesc(String paramString)
  {
    this.tmallBatchDesc = paramString;
  }

  public void setTradeType(String paramString)
  {
    this.tradeType = paramString;
  }

  public void setTransferSpeed(String paramString)
  {
    this.transferSpeed = paramString;
  }

  public void setTransferToCardDetails(List<FlagTraceInfo> paramList)
  {
    this.transferToCardDetails = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.bill.model.BillInfo
 * JD-Core Version:    0.6.2
 */