package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import android.os.Handler;
import com.alipay.mobile.alipassapp.biz.common.i;
import com.alipay.mobile.commonui.widget.APImageView;

final class ey
  implements Runnable
{
  ey(MemberChargeOffActivity paramMemberChargeOffActivity, String paramString1, APImageView paramAPImageView, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      MemberChargeOffActivity.getInstance();
      Bitmap localBitmap = i.getBundle(this.a);
      if (this.b == null)
      {
        MemberChargeOffActivity.getInstance();
        return;
      }
      MemberChargeOffActivity.getInstance();
      MemberChargeOffActivity.stop().post(new ez(this, localBitmap));
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      MemberChargeOffActivity.getInstance();
      localOutOfMemoryError.getMessage();
      return;
    }
    catch (Exception localException)
    {
      MemberChargeOffActivity.getInstance();
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ey
 * JD-Core Version:    0.6.2
 */