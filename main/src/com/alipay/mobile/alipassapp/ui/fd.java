package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import android.os.Handler;
import com.alipay.mobile.alipassapp.biz.common.i;
import com.alipay.mobile.commonui.widget.APImageView;

final class fd
  implements Runnable
{
  fd(MemberFirstDetailActivity paramMemberFirstDetailActivity, String paramString1, APImageView paramAPImageView, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      MemberFirstDetailActivity.getInstance();
      Bitmap localBitmap = i.getBundle(this.a);
      if (MemberFirstDetailActivity.getBundle(this.d) == null)
      {
        MemberFirstDetailActivity.getInstance();
        return;
      }
      MemberFirstDetailActivity.getInstance();
      MemberFirstDetailActivity.stop().post(new fe(this, localBitmap));
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      MemberFirstDetailActivity.getInstance();
      localOutOfMemoryError.getMessage();
      return;
    }
    catch (Exception localException)
    {
      MemberFirstDetailActivity.getInstance();
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fd
 * JD-Core Version:    0.6.2
 */