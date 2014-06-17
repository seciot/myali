package com.alipay.mobilesecurity.core.model.mainpage.operations;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.util.List;

public class OperationsLogReq extends ToString
{
  public String direct;
  public String endDate;
  public String loginId;
  public List<String> normType;
  public int pageNum;
  public String startDate;
  public String status;

  public String getDirect()
  {
    return this.direct;
  }

  public String getEndDate()
  {
    return this.endDate;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public List<String> getNormType()
  {
    return this.normType;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public String getStartDate()
  {
    return this.startDate;
  }

  public String getStatus()
  {
    return this.status;
  }

  public void setDirect(String paramString)
  {
    this.direct = paramString;
  }

  public void setEndDate(String paramString)
  {
    this.endDate = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setNormType(List<String> paramList)
  {
    this.normType = paramList;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setStartDate(String paramString)
  {
    this.startDate = paramString;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogReq
 * JD-Core Version:    0.6.2
 */