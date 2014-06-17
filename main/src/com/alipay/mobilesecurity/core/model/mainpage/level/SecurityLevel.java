package com.alipay.mobilesecurity.core.model.mainpage.level;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class SecurityLevel extends ToString
{
  public String level;
  public String memo;
  public int score;

  public String getLevel()
  {
    return this.level;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public int getScore()
  {
    return this.score;
  }

  public void setLevel(String paramString)
  {
    this.level = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setScore(int paramInt)
  {
    this.score = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.level.SecurityLevel
 * JD-Core Version:    0.6.2
 */