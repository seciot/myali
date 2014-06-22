package com.alipay.mobile.about.ui;

import android.app.ProgressDialog;
import java.util.List;

final class aj
  implements Runnable
{
  aj(ai paramai, List paramList)
  {
  }

  public final void run()
  {
    if (MultiPictureSelectorActivity.dexopt(this.b.a) != null)
      MultiPictureSelectorActivity.dexopt(this.b.a).dismiss();
    MultiPictureSelectorActivity.getBundleByComponentName(this.b.a).addAll(this.a);
    MultiPictureSelectorActivity.d(this.b.a).notifyDataSetChanged();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.aj
 * JD-Core Version:    0.6.2
 */