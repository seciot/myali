package com.alipay.mobile.about.ui;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.alipay.mobile.about.b.e;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

final class ae
  implements Runnable
{
  ae(ad paramad)
  {
  }

  public final void run()
  {
    try
    {
      Activity localActivity = FloatWindowBigView.access$000(this.a.b);
      if (localActivity != null)
      {
        View localView = localActivity.getWindow().getDecorView();
        localView.setDrawingCacheEnabled(true);
        localView.buildDrawingCache();
        Bitmap localBitmap1 = localView.getDrawingCache();
        Rect localRect = new Rect();
        localActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
        int i = localRect.top;
        Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, i, localActivity.getWindowManager().getDefaultDisplay().getWidth(), localActivity.getWindowManager().getDefaultDisplay().getHeight() - i);
        localView.destroyDrawingCache();
        e.a(localBitmap2, localActivity);
      }
      AlipayApplication.getInstance().getMicroApplicationContext().Toast("截图已成功，请在相册中查看。", 1);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ae
 * JD-Core Version:    0.6.2
 */