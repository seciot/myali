package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.biz.recharge.vo.EcardVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

public class QueryEcardRes extends BaseRespVO
{
  public String areaName;
  public String catName;
  public String cmsMsg;
  public List<EcardVO> ecardVOList;
  public String mobile;
  public String showCatname;

  public String getAreaName()
  {
    return this.areaName;
  }

  public String getCatName()
  {
    return this.catName;
  }

  public String getCmsMsg()
  {
    return this.cmsMsg;
  }

  public List<EcardVO> getEcardVOList()
  {
    return this.ecardVOList;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public String getShowCatname()
  {
    return this.showCatname;
  }

  public void setAreaName(String paramString)
  {
    this.areaName = paramString;
  }

  public void setCatName(String paramString)
  {
    this.catName = paramString;
  }

  public void setCmsMsg(String paramString)
  {
    this.cmsMsg = paramString;
  }

  public void setEcardVOList(List<EcardVO> paramList)
  {
    this.ecardVOList = paramList;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }

  public void setShowCatname(String paramString)
  {
    this.showCatname = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.QueryEcardRes
 * JD-Core Version:    0.6.2
 */