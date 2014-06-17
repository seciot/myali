package com.alipay.mobile.alipassapp.ui;

import android.content.res.Resources;
import android.widget.Toast;
import com.alipay.mobile.alipassapp.R.string;

final class bg
  implements Runnable
{
  bg(AlipassPreviewActivity paramAlipassPreviewActivity)
  {
  }

  public final void run()
  {
    Toast.makeText(this.a, this.a.getResources().getString(R.string.alipass_add_success), 0).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.bg
 * JD-Core Version:    0.6.2
 */