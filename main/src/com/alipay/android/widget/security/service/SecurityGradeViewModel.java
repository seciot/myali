package com.alipay.android.widget.security.service;

import java.io.Serializable;
import java.util.Map;

public class SecurityGradeViewModel
  implements Serializable
{
  private static final long serialVersionUID = -6319491002655071004L;
  private String cellphone;
  private Map<Integer, String> firstBlock = null;
  private Boolean isShowArrowBaoling;
  private Boolean isShowArrowBindPhone;
  private Boolean isShowArrowCertified;
  private Boolean isShowArrowGestureSet;
  private Boolean isShowArrowPortraitSet;
  private Boolean isShowArrowPushSet;
  private Boolean isShowArrowTIDSet;
  private String level;
  private String logonId;
  private String memo;
  private int score;
  private Map<Integer, String> secondBlock = null;
  private int showWarnTxt;
  private String userName;

  public String getCellphone()
  {
    return this.cellphone;
  }

  public Map<Integer, String> getFirstBlock()
  {
    return this.firstBlock;
  }

  public Boolean getIsShowArrowBaoling()
  {
    return this.isShowArrowBaoling;
  }

  public Boolean getIsShowArrowBindPhone()
  {
    return this.isShowArrowBindPhone;
  }

  public Boolean getIsShowArrowCertified()
  {
    return this.isShowArrowCertified;
  }

  public Boolean getIsShowArrowGestureSet()
  {
    return this.isShowArrowGestureSet;
  }

  public Boolean getIsShowArrowPortraitSet()
  {
    return this.isShowArrowPortraitSet;
  }

  public Boolean getIsShowArrowPushSet()
  {
    return this.isShowArrowPushSet;
  }

  public Boolean getIsShowArrowTIDSet()
  {
    return this.isShowArrowTIDSet;
  }

  public String getLevel()
  {
    return this.level;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public int getScore()
  {
    return this.score;
  }

  public Map<Integer, String> getSecondBlock()
  {
    return this.secondBlock;
  }

  public int getShowWarnTxt()
  {
    return this.showWarnTxt;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public void setCellphone(String paramString)
  {
    this.cellphone = paramString;
  }

  public void setFirstBlock(Map<Integer, String> paramMap)
  {
    this.firstBlock = paramMap;
  }

  public void setIsShowArrowBaoling(Boolean paramBoolean)
  {
    this.isShowArrowBaoling = paramBoolean;
  }

  public void setIsShowArrowBindPhone(Boolean paramBoolean)
  {
    this.isShowArrowBindPhone = paramBoolean;
  }

  public void setIsShowArrowCertified(Boolean paramBoolean)
  {
    this.isShowArrowCertified = paramBoolean;
  }

  public void setIsShowArrowGestureSet(Boolean paramBoolean)
  {
    this.isShowArrowGestureSet = paramBoolean;
  }

  public void setIsShowArrowPortraitSet(Boolean paramBoolean)
  {
    this.isShowArrowPortraitSet = paramBoolean;
  }

  public void setIsShowArrowPushSet(Boolean paramBoolean)
  {
    this.isShowArrowPushSet = paramBoolean;
  }

  public void setIsShowArrowTIDSet(Boolean paramBoolean)
  {
    this.isShowArrowTIDSet = paramBoolean;
  }

  public void setLevel(String paramString)
  {
    this.level = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public void setSecondBlock(Map<Integer, String> paramMap)
  {
    this.secondBlock = paramMap;
  }

  public void setShowWarnTxt(int paramInt)
  {
    this.showWarnTxt = paramInt;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.SecurityGradeViewModel
 * JD-Core Version:    0.6.2
 */