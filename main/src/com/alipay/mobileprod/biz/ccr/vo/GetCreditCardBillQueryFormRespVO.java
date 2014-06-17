package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.biz.shared.ccr.domain.CertTypeModel;
import com.alipay.mobileprod.core.model.ccr.BaseRespVO;
import java.util.List;

public class GetCreditCardBillQueryFormRespVO extends BaseRespVO
{
  public List<CertTypeModel> certTypeList;
  public String needCardNo = "false";
  public String needCheckCode = "false";
  public String needCvv2 = "false";
  public String needExpdate = "false";
  public String needFastPaySign = "false";
  public String needIdentity = "false";
  public String needIndtype = "false";
  public String needMobile = "false";
  public String needUserName = "false";

  public List<CertTypeModel> getCertTypeList()
  {
    return this.certTypeList;
  }

  public String getNeedCardNo()
  {
    return this.needCardNo;
  }

  public String getNeedCheckCode()
  {
    return this.needCheckCode;
  }

  public String getNeedCvv2()
  {
    return this.needCvv2;
  }

  public String getNeedExpdate()
  {
    return this.needExpdate;
  }

  public String getNeedFastPaySign()
  {
    return this.needFastPaySign;
  }

  public String getNeedIdentity()
  {
    return this.needIdentity;
  }

  public String getNeedIndtype()
  {
    return this.needIndtype;
  }

  public String getNeedMobile()
  {
    return this.needMobile;
  }

  public String getNeedUserName()
  {
    return this.needUserName;
  }

  public void setCertTypeList(List<CertTypeModel> paramList)
  {
    this.certTypeList = paramList;
  }

  public void setNeedCardNo(String paramString)
  {
    this.needCardNo = paramString;
  }

  public void setNeedCheckCode(String paramString)
  {
    this.needCheckCode = paramString;
  }

  public void setNeedCvv2(String paramString)
  {
    this.needCvv2 = paramString;
  }

  public void setNeedExpdate(String paramString)
  {
    this.needExpdate = paramString;
  }

  public void setNeedFastPaySign(String paramString)
  {
    this.needFastPaySign = paramString;
  }

  public void setNeedIdentity(String paramString)
  {
    this.needIdentity = paramString;
  }

  public void setNeedIndtype(String paramString)
  {
    this.needIndtype = paramString;
  }

  public void setNeedMobile(String paramString)
  {
    this.needMobile = paramString;
  }

  public void setNeedUserName(String paramString)
  {
    this.needUserName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetCreditCardBillQueryFormRespVO
 * JD-Core Version:    0.6.2
 */