package com.alipay.mobile.alipassapp.ui;

import android.content.res.Resources;
import android.os.AsyncTask;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;

final class bh extends AsyncTask<String, Object, Object>
{
  private bh(AlipassPreviewActivity paramAlipassPreviewActivity)
  {
  }

  protected final void onPostExecute(Object paramObject)
  {
    if (paramObject != null);
    try
    {
      if ((paramObject instanceof AlipassInfo))
      {
        AlipassPreviewActivity.v(this.a, (AlipassInfo)paramObject);
        AlipassPreviewActivity.c(this.a);
        if (!AlipassPreviewActivity.d(this.a))
          this.a.getInitLevel();
      }
      super.onPostExecute(paramObject);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        AlipassPreviewActivity.removeBundle(this.a);
        this.a.v(102, this.a.getResources().getString(R.string.alipass_add_failed));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.bh
 * JD-Core Version:    0.6.2
 */