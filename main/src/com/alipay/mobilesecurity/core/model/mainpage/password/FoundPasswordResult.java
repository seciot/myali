package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.MobileSmsResult;

public class FoundPasswordResult extends MobileSmsResult
{
  public boolean certified;
  public int isSmsSwitch;

  public int getIsSmsSwitch()
  {
    return this.isSmsSwitch;
  }

  public boolean isCertified()
  {
    return this.certified;
  }

  public void setCertified(boolean paramBoolean)
  {
    this.certified = paramBoolean;
  }

  public void setIsSmsSwitch(int paramInt)
  {
    this.isSmsSwitch = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.FoundPasswordResult
 * JD-Core Version:    0.6.2
 */