package com.alipay.mobile.appstoreapp.ui;

import android.graphics.drawable.StateListDrawable;
import com.alipay.mobile.appstoreapp.util.IconLoadHelper;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class b
  implements Runnable
{
  b(a parama)
  {
  }

  public final void run()
  {
    StateListDrawable localStateListDrawable = IconLoadHelper.a(AppDetailActivity.e(this.a.a).getIcon(), AppDetailActivity.e(this.a.a).isAlipayApp());
    AppDetailActivity.f(this.a.a).setImageDrawable(localStateListDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.b
 * JD-Core Version:    0.6.2
 */