package com.alipay.mobileprod.biz.shared.account.domain.ex;

public class UploadHeadImgRes
{
  public String memo;
  public int resultStatus = 101;
  public String userHeadImgPath;

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public String getUserHeadImgPath()
  {
    return this.userHeadImgPath;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }

  public void setUserHeadImgPath(String paramString)
  {
    this.userHeadImgPath = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.account.domain.ex.UploadHeadImgRes
 * JD-Core Version:    0.6.2
 */