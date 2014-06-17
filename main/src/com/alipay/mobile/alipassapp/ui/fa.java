package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import android.os.Handler;
import com.alipay.mobile.alipassapp.biz.common.i;
import com.alipay.mobile.commonui.widget.APImageView;

final class fa
  implements Runnable
{
  fa(MemberChargeOffActivity paramMemberChargeOffActivity, String paramString1, String paramString2, APImageView paramAPImageView)
  {
  }

  public final void run()
  {
    try
    {
      MemberChargeOffActivity.a();
      Bitmap localBitmap = i.a(this.a, this.b);
      if (this.c == null)
        return;
      MemberChargeOffActivity.a();
      MemberChargeOffActivity.b().post(new fb(this, localBitmap));
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      MemberChargeOffActivity.a();
      localOutOfMemoryError.getMessage();
      return;
    }
    catch (Exception localException)
    {
      MemberChargeOffActivity.a();
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fa
 * JD-Core Version:    0.6.2
 */