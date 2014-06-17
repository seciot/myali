package com.alipay.android.app.pay;

import android.app.Activity;
import android.text.TextUtils;
import com.alipay.android.app.script.ILoadingScriptable;

class ActivityWindowScriptable$13
  implements ILoadingScriptable
{
  ActivityWindowScriptable$13(ActivityWindowScriptable paramActivityWindowScriptable)
  {
  }

  public void dismiss()
  {
    if (ActivityWindowScriptable.d())
    {
      ActivityWindowScriptable.e(this.this$0);
      return;
    }
    ActivityWindowScriptable.d(this.this$0).runOnUiThread(new ActivityWindowScriptable.13.1(this));
  }

  public void setText(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    if (ActivityWindowScriptable.d())
    {
      ActivityWindowScriptable.a(this.this$0, paramString);
      return;
    }
    ActivityWindowScriptable.d(this.this$0).runOnUiThread(new ActivityWindowScriptable.13.2(this, paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.13
 * JD-Core Version:    0.6.2
 */