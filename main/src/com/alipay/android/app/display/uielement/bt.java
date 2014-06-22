package com.alipay.android.app.display.uielement;

import android.view.View;
import android.widget.RadioGroup;
import java.util.List;

final class bt
  implements Runnable
{
  bt(UIRadioGroup paramUIRadioGroup, String paramString)
  {
  }

  public final void run()
  {
    if (UIRadioGroup.dexopt(this.b) != null)
      for (int i = 0; i < UIRadioGroup.getBundle(this.b).size(); i++)
        if (((bn)UIRadioGroup.getBundle(this.b).get(i)).e().equals(this.a))
          UIRadioGroup.dexopt(this.b).getChildAt(i).setSelected(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bt
 * JD-Core Version:    0.6.2
 */