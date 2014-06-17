package com.alipay.statusbar.common.sal.mobilegw;

import java.util.List;

public class TodoQueryResult
{
  public int maxShowCount;
  public List<TodoRemind> reminds;
  public int resultCode;
  public int totalCount;

  public int getMaxShowCount()
  {
    return this.maxShowCount;
  }

  public List<TodoRemind> getReminds()
  {
    return this.reminds;
  }

  public int getResultCode()
  {
    return this.resultCode;
  }

  public int getTotalCount()
  {
    return this.totalCount;
  }

  public void setMaxShowCount(int paramInt)
  {
    this.maxShowCount = paramInt;
  }

  public void setReminds(List<TodoRemind> paramList)
  {
    this.reminds = paramList;
  }

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.statusbar.common.sal.mobilegw.TodoQueryResult
 * JD-Core Version:    0.6.2
 */