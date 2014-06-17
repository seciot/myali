package com.alipay.aggrbillinfo.biz.mgnt.task.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;

public class CaptchaResult extends Result
{
  public String captchaBase64;

  public String getCaptchaBase64()
  {
    return this.captchaBase64;
  }

  public void setCaptchaBase64(String paramString)
  {
    this.captchaBase64 = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.task.info.CaptchaResult
 * JD-Core Version:    0.6.2
 */