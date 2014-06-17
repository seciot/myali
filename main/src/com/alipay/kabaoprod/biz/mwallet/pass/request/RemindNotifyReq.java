package com.alipay.kabaoprod.biz.mwallet.pass.request;

public class RemindNotifyReq
{
  public String passCategory;
  public String passId;

  public String getPassCategory()
  {
    return this.passCategory;
  }

  public String getPassId()
  {
    return this.passId;
  }

  public void setPassCategory(String paramString)
  {
    this.passCategory = paramString;
  }

  public void setPassId(String paramString)
  {
    this.passId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.request.RemindNotifyReq
 * JD-Core Version:    0.6.2
 */