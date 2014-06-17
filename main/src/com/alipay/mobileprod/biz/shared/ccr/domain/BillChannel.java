package com.alipay.mobileprod.biz.shared.ccr.domain;

import java.io.Serializable;

public class BillChannel extends BaseModel
  implements Serializable
{
  public String bankMark;
  public String phone;
  public int phoneSwitch;
  public String smsMobile;
  public int smsSwitch;
  public String smsTelecom;
  public String smsTemplate;
  public String smsUnicon;

  public String getBankMark()
  {
    return this.bankMark;
  }

  public String getPhone()
  {
    return this.phone;
  }

  public int getPhoneSwitch()
  {
    return this.phoneSwitch;
  }

  public String getSmsMobile()
  {
    return this.smsMobile;
  }

  public int getSmsSwitch()
  {
    return this.smsSwitch;
  }

  public String getSmsTelecom()
  {
    return this.smsTelecom;
  }

  public String getSmsTemplate()
  {
    return this.smsTemplate;
  }

  public String getSmsUnicon()
  {
    return this.smsUnicon;
  }

  public void setBankMark(String paramString)
  {
    this.bankMark = paramString;
  }

  public void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public void setPhoneSwitch(int paramInt)
  {
    this.phoneSwitch = paramInt;
  }

  public void setSmsMobile(String paramString)
  {
    this.smsMobile = paramString;
  }

  public void setSmsSwitch(int paramInt)
  {
    this.smsSwitch = paramInt;
  }

  public void setSmsTelecom(String paramString)
  {
    this.smsTelecom = paramString;
  }

  public void setSmsTemplate(String paramString)
  {
    this.smsTemplate = paramString;
  }

  public void setSmsUnicon(String paramString)
  {
    this.smsUnicon = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.ccr.domain.BillChannel
 * JD-Core Version:    0.6.2
 */