package com.alipay.mobile.alipassapp.ui.common;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class ab
  implements View.OnClickListener
{
  ab(AlipassOperationViewPager paramAlipassOperationViewPager)
  {
  }

  public final void onClick(View paramView)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("is_verify", "true");
    localBundle.putBoolean("is_dynamic", true);
    localBundle.putString("passid", AlipassOperationViewPager.access$600(this.a).getPassBaseInfo().getPassId());
    try
    {
      AlipassOperationViewPager.access$1100(this.a).getMicroApplicationContext().startApp("20000062", "20000045", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ab
 * JD-Core Version:    0.6.2
 */