package com.alipay.android.app.pay;

import com.alipay.android.app.display.event.AllowBackChangedEventArgs;

class ActivityWindowScriptable$14 extends AllowBackChangedEventArgs
{
  ActivityWindowScriptable$14(ActivityWindowScriptable paramActivityWindowScriptable, String paramString1, String paramString2)
  {
  }

  public String getDataByKey(String paramString)
  {
    if ("value".equals(paramString))
      return this.val$value;
    if ("message".equals(paramString))
      return this.val$message;
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.14
 * JD-Core Version:    0.6.2
 */