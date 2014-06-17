package com.alipay.mobilebill.biz.bill.model.billdetail;

import com.alipay.mobile.framework.service.ext.BizResult;
import com.alipay.mobilebill.common.util.ToString;
import java.util.List;

public class BillDetailInfo extends ToString
{
  private String bizStateAreaTipInfo;
  private String bizStateDesc;
  public String bizStateDescSuffix;
  private int bizStatusLogo;
  private String deliveryManMobile;
  private List<BillDetailButton> detailButtons;
  private List<BillDetailField> detailFields;
  private String invoiceNo;
  public String mdapLogParam;
  private BizResult result;
  private BillDetailTraceInfo traceInfo;
  private boolean useMoaDirectButtonLayout = false;

  public String getBizStateAreaTipInfo()
  {
    return this.bizStateAreaTipInfo;
  }

  public String getBizStateDesc()
  {
    return this.bizStateDesc;
  }

  public String getBizStateDescSuffix()
  {
    return this.bizStateDescSuffix;
  }

  public int getBizStatusLogo()
  {
    return this.bizStatusLogo;
  }

  public String getDeliveryManMobile()
  {
    return this.deliveryManMobile;
  }

  public List<BillDetailButton> getDetailButtons()
  {
    return this.detailButtons;
  }

  public List<BillDetailField> getDetailFields()
  {
    return this.detailFields;
  }

  public String getInvoiceNo()
  {
    return this.invoiceNo;
  }

  public String getMdapLogParam()
  {
    return this.mdapLogParam;
  }

  public BizResult getResult()
  {
    return this.result;
  }

  public BillDetailTraceInfo getTraceInfo()
  {
    return this.traceInfo;
  }

  public boolean isUseMoaDirectButtonLayout()
  {
    return this.useMoaDirectButtonLayout;
  }

  public void setBizStateAreaTipInfo(String paramString)
  {
    this.bizStateAreaTipInfo = paramString;
  }

  public void setBizStateDesc(String paramString)
  {
    this.bizStateDesc = paramString;
  }

  public void setBizStateDescSuffix(String paramString)
  {
    this.bizStateDescSuffix = paramString;
  }

  public void setBizStatusLogo(int paramInt)
  {
    this.bizStatusLogo = paramInt;
  }

  public void setDeliveryManMobile(String paramString)
  {
    this.deliveryManMobile = paramString;
  }

  public void setDetailButtons(List<BillDetailButton> paramList)
  {
    this.detailButtons = paramList;
  }

  public void setDetailFields(List<BillDetailField> paramList)
  {
    this.detailFields = paramList;
  }

  public void setInvoiceNo(String paramString)
  {
    this.invoiceNo = paramString;
  }

  public void setMdapLogParam(String paramString)
  {
    this.mdapLogParam = paramString;
  }

  public void setResult(BizResult paramBizResult)
  {
    this.result = paramBizResult;
  }

  public void setTraceInfo(BillDetailTraceInfo paramBillDetailTraceInfo)
  {
    this.traceInfo = paramBillDetailTraceInfo;
  }

  public void setUseMoaDirectButtonLayout(boolean paramBoolean)
  {
    this.useMoaDirectButtonLayout = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.bill.model.billdetail.BillDetailInfo
 * JD-Core Version:    0.6.2
 */