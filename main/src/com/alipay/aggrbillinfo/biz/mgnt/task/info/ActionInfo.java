package com.alipay.aggrbillinfo.biz.mgnt.task.info;

import com.alipay.aggrbillinfo.common.service.facade.model.ToString;

public class ActionInfo extends ToString
{
  public String actionId;
  public int actionType;
  public boolean canSkip;
  public String captchaBase64;
  public String captchaUrl;
  public boolean hideInput;
  public String prompt;
  public String skipPrompt;

  public String getActionId()
  {
    return this.actionId;
  }

  public int getActionType()
  {
    return this.actionType;
  }

  public String getCaptchaBase64()
  {
    return this.captchaBase64;
  }

  public String getCaptchaUrl()
  {
    return this.captchaUrl;
  }

  public String getPrompt()
  {
    return this.prompt;
  }

  public String getSkipPrompt()
  {
    return this.skipPrompt;
  }

  public boolean isCanSkip()
  {
    return this.canSkip;
  }

  public boolean isHideInput()
  {
    return this.hideInput;
  }

  public void setActionId(String paramString)
  {
    this.actionId = paramString;
  }

  public void setActionType(int paramInt)
  {
    this.actionType = paramInt;
  }

  public void setCanSkip(boolean paramBoolean)
  {
    this.canSkip = paramBoolean;
  }

  public void setCaptchaBase64(String paramString)
  {
    this.captchaBase64 = paramString;
  }

  public void setCaptchaUrl(String paramString)
  {
    this.captchaUrl = paramString;
  }

  public void setHideInput(boolean paramBoolean)
  {
    this.hideInput = paramBoolean;
  }

  public void setPrompt(String paramString)
  {
    this.prompt = paramString;
  }

  public void setSkipPrompt(String paramString)
  {
    this.skipPrompt = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.task.info.ActionInfo
 * JD-Core Version:    0.6.2
 */