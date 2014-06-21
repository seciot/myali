package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import android.os.Handler;
import com.alipay.mobile.alipassapp.biz.common.i;
import com.alipay.mobile.commonui.widget.APImageView;

final class ff
  implements Runnable
{
  ff(MemberFirstDetailActivity paramMemberFirstDetailActivity, String paramString1, String paramString2, APImageView paramAPImageView)
  {
  }

  public final void run()
  {
    try
    {
      MemberFirstDetailActivity.a();
      Bitmap localBitmap = i.v(this.a, this.b);
      if (MemberFirstDetailActivity.getBundle(this.d) == null)
        return;
      MemberFirstDetailActivity.a();
      MemberFirstDetailActivity.stop().post(new fg(this, localBitmap));
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      MemberFirstDetailActivity.a();
      localOutOfMemoryError.getMessage();
      return;
    }
    catch (Exception localException)
    {
      MemberFirstDetailActivity.a();
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ff
 * JD-Core Version:    0.6.2
 */