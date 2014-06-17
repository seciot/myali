package com.alipay.publiccore.biz.relation.msg.result;

public class BaseResult
{
  public int resultCode;
  public String resultMsg;

  public int getResultCode()
  {
    return this.resultCode;
  }

  public String getResultMsg()
  {
    return this.resultMsg;
  }

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setResultMsg(String paramString)
  {
    this.resultMsg = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.BaseResult
 * JD-Core Version:    0.6.2
 */