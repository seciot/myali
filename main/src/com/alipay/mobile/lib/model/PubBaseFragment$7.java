package com.alipay.mobile.lib.model;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

class PubBaseFragment$7
  implements DialogInterface.OnClickListener
{
  PubBaseFragment$7(PubBaseFragment paramPubBaseFragment, boolean paramBoolean)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.val$needFinish)
    {
      this.this$0.mContext.finish();
      return;
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.PubBaseFragment.7
 * JD-Core Version:    0.6.2
 */