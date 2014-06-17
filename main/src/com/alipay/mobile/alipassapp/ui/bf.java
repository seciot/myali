package com.alipay.mobile.alipassapp.ui;

import android.content.res.Resources;
import android.widget.Toast;
import com.alipay.mobile.alipassapp.R.string;

final class bf
  implements Runnable
{
  bf(AlipassPreviewActivity paramAlipassPreviewActivity)
  {
  }

  public final void run()
  {
    Toast.makeText(this.a, this.a.getResources().getString(R.string.alipass_add_failed_msg), 0).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.bf
 * JD-Core Version:    0.6.2
 */