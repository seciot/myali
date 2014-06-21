package com.alipay.android.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.android.app.util.FrameUtils;
import com.alipay.android.app.util.StringUtil;

final class e extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("pid", -1);
    FrameUtils.getBundle(PayEngine.a(StringUtil.b(paramIntent.getStringExtra("externalInfo")), i));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.e
 * JD-Core Version:    0.6.2
 */