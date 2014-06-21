package com.alipay.android.phone.home.ui;

import android.widget.TabHost;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.nfd.nfdbiz.IOnActiveBoardVisibleChange;
import java.lang.ref.WeakReference;

final class m
  implements IOnActiveBoardVisibleChange
{
  m(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void onVisibleChange(boolean paramBoolean)
  {
    LogCatLog.i("wif", ((TabHost)HeaderAreaLayout.k(this.a).get()).getCurrentTabTag());
    if (((!paramBoolean) || ((paramBoolean) && (HeaderAreaLayout.k(this.a).get() != null) && (!"20000002".endsWith(((TabHost)HeaderAreaLayout.k(this.a).get()).getCurrentTabTag())))) && (2 == HeaderAreaLayout.d(this.a).stop()))
    {
      HeaderAreaLayout.d(this.a).a();
      HeaderAreaLayout.d(this.a).changeState(1);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.m
 * JD-Core Version:    0.6.2
 */