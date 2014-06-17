package com.alipay.android.phone.home.manager;

import android.app.Activity;
import android.graphics.Bitmap;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.AppIconLoadCallback;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import java.lang.ref.WeakReference;

final class g
  implements AppIconLoadCallback
{
  g(BaseAppsItemAdapter paramBaseAppsItemAdapter, App paramApp, ViewHolder paramViewHolder)
  {
  }

  public final void onLoad(Bitmap paramBitmap)
  {
    Activity localActivity = (Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
    if (localActivity != null)
      localActivity.runOnUiThread(new h(this, paramBitmap));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.g
 * JD-Core Version:    0.6.2
 */