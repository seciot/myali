package com.alipay.android.app.pay;

import com.alipay.android.app.display.event.SubmitEventArgs;

class ActivityWindowScriptable$10 extends SubmitEventArgs
{
  ActivityWindowScriptable$10(ActivityWindowScriptable paramActivityWindowScriptable, String paramString)
  {
  }

  public String getDataByKey(String paramString)
  {
    if ("id".equalsIgnoreCase(paramString))
      return this.val$id;
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.10
 * JD-Core Version:    0.6.2
 */