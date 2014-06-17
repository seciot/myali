package com.alipay.mobilesecurity.core.model.mainpage.operations;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.util.List;

public class OperationsLogRes extends MobileSecurityResult
{
  public List<OperationsLog> operateLogList;
  public String pageNumEndDate;

  public List<OperationsLog> getOperateLogList()
  {
    return this.operateLogList;
  }

  public String getPageNumEndDate()
  {
    return this.pageNumEndDate;
  }

  public void setOperateLogList(List<OperationsLog> paramList)
  {
    this.operateLogList = paramList;
  }

  public void setPageNumEndDate(String paramString)
  {
    this.pageNumEndDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogRes
 * JD-Core Version:    0.6.2
 */