package com.alipay.mobilebill.biz.shared.contact.model;

import java.util.Date;

public class ContactModel
{
  public BillModel billModel;
  public String contactDataType;
  public Date gmtCreate;
  public RecordModel recordModel;
  public StatistModel statistModel;

  public BillModel getBillModel()
  {
    return this.billModel;
  }

  public String getContactDataType()
  {
    return this.contactDataType;
  }

  public Date getGmtCreate()
  {
    return this.gmtCreate;
  }

  public RecordModel getRecordModel()
  {
    return this.recordModel;
  }

  public StatistModel getStatistModel()
  {
    return this.statistModel;
  }

  public void setBillModel(BillModel paramBillModel)
  {
    this.billModel = paramBillModel;
  }

  public void setContactDataType(String paramString)
  {
    this.contactDataType = paramString;
  }

  public void setGmtCreate(Date paramDate)
  {
    this.gmtCreate = paramDate;
  }

  public void setRecordModel(RecordModel paramRecordModel)
  {
    this.recordModel = paramRecordModel;
  }

  public void setStatistModel(StatistModel paramStatistModel)
  {
    this.statistModel = paramStatistModel;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.ContactModel
 * JD-Core Version:    0.6.2
 */