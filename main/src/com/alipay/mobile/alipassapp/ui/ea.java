package com.alipay.mobile.alipassapp.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.alipassapp.biz.common.i;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import java.util.List;

final class ea
  implements Runnable
{
  ea(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void run()
  {
    try
    {
      AlipassInfo.Operation.OperationString localOperationString = (AlipassInfo.Operation.OperationString)MemberCardDetailActivity.j(this.a).getOperation().get(0);
      Bitmap localBitmap = i.getBundle(localOperationString.getMessage());
      this.a.runOnUiThread(new eb(this, localBitmap, localOperationString));
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      MemberCardDetailActivity.b();
      localOutOfMemoryError.getMessage();
      return;
    }
    catch (Exception localException)
    {
      MemberCardDetailActivity.b();
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ea
 * JD-Core Version:    0.6.2
 */