package com.alipay.android.phone.home.ui;

import android.media.MediaPlayer;
import com.alipay.android.phone.openplatform.R.raw;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;

final class o
  implements Runnable
{
  o(n paramn)
  {
  }

  public final void run()
  {
    try
    {
      MediaPlayer localMediaPlayer = MediaPlayer.create(AlipayApplication.getInstance().getApplicationContext(), R.raw.a);
      localMediaPlayer.setLooping(false);
      localMediaPlayer.seekTo(0);
      localMediaPlayer.start();
      return;
    }
    catch (Exception localException)
    {
      LogCatLog.e(HeaderAreaLayout.h(this.a.b), localException.getMessage());
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.o
 * JD-Core Version:    0.6.2
 */