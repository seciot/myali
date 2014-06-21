package com.aps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

final class am extends BroadcastReceiver
{
  am(s params)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str1 = paramIntent.getAction();
      if (("android.intent.action.MEDIA_BAD_REMOVAL".equals(str1)) || ("android.intent.action.MEDIA_CHECKING".equals(str1)) || ("android.intent.action.MEDIA_EJECT".equals(str1)) || ("android.intent.action.MEDIA_NOFS".equals(str1)) || ("android.intent.action.MEDIA_REMOVED".equals(str1)) || ("android.intent.action.MEDIA_SHARED".equals(str1)) || ("android.intent.action.MEDIA_UNMOUNTABLE".equals(str1)) || ("android.intent.action.MEDIA_UNMOUNTED".equals(str1)))
      {
        Uri localUri = paramIntent.getData();
        if (localUri != null)
        {
          String str2 = localUri.getPath();
          if (str2 != null)
          {
            s.f(this.a).getBundle(str2);
            s.g(this.a).getBundle(str2);
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.am
 * JD-Core Version:    0.6.2
 */