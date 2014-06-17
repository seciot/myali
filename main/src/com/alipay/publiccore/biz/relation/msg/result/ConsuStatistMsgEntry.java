package com.alipay.publiccore.biz.relation.msg.result;

public class ConsuStatistMsgEntry extends BaseMsgEntry
{
  public String month;
  public String monthDec;
  public String monthInc;
  public String statistDesc;

  public String getMonth()
  {
    return this.month;
  }

  public String getMonthDec()
  {
    return this.monthDec;
  }

  public String getMonthInc()
  {
    return this.monthInc;
  }

  public String getStatistDesc()
  {
    return this.statistDesc;
  }

  public void setMonth(String paramString)
  {
    this.month = paramString;
  }

  public void setMonthDec(String paramString)
  {
    this.monthDec = paramString;
  }

  public void setMonthInc(String paramString)
  {
    this.monthInc = paramString;
  }

  public void setStatistDesc(String paramString)
  {
    this.statistDesc = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.ConsuStatistMsgEntry
 * JD-Core Version:    0.6.2
 */