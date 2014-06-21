package com.alipay.android.mini.uielement;

import android.content.Context;
import android.os.CountDownTimer;
import android.widget.Button;
import com.alipay.android.app.R.string;

final class h extends CountDownTimer
{
  h(UIButton paramUIButton, long paramLong1, long paramLong2)
  {
    super(paramLong1, paramLong2);
  }

  public final void onFinish()
  {
    if (UIButton.getBundle(this.a) == null);
    do
    {
      return;
      UIButton.getBundle(this.a).setEnabled(true);
    }
    while (this.a.getBundleVersion() == null);
    UIButton.getBundle(this.a).setText(this.a.getBundleVersion());
  }

  public final void onTick(long paramLong)
  {
    if (UIButton.getBundle(this.a) == null)
      return;
    Context localContext = UIButton.getBundle(this.a).getContext();
    UIButton.getBundle(this.a).setText(paramLong / 1000L + localContext.getString(R.string.BundlesManagerImpl));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.h
 * JD-Core Version:    0.6.2
 */