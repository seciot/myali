package com.alipay.statusbar.common.sal.mobilegw;

import java.util.Date;

public class CommonTodoQueryRequest
{
  public String channelPak;
  public Date endDate;
  public int pageNum;
  public int pageSize;
  public String terminal;
  public String terminalId;
  public String version;

  public String getChannelPak()
  {
    return this.channelPak;
  }

  public Date getEndDate()
  {
    return this.endDate;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public String getTerminal()
  {
    return this.terminal;
  }

  public String getTerminalId()
  {
    return this.terminalId;
  }

  public String getVersion()
  {
    return this.version;
  }

  public void setChannelPak(String paramString)
  {
    this.channelPak = paramString;
  }

  public void setEndDate(Date paramDate)
  {
    this.endDate = paramDate;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setTerminal(String paramString)
  {
    this.terminal = paramString;
  }

  public void setTerminalId(String paramString)
  {
    this.terminalId = paramString;
  }

  public void setVersion(String paramString)
  {
    this.version = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.statusbar.common.sal.mobilegw.CommonTodoQueryRequest
 * JD-Core Version:    0.6.2
 */