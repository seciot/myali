package com.alipay.android.app.display.uielement;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import java.util.Iterator;
import java.util.List;

final class bp
  implements RadioGroup.OnCheckedChangeListener
{
  bp(UIRadioGroup paramUIRadioGroup)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    Iterator localIterator = UIRadioGroup.getBundle(this.a).iterator();
    while (localIterator.hasNext())
    {
      bn localbn = (bn)localIterator.next();
      if (localbn.i() == paramInt)
        UIRadioGroup.a(this.a, localbn.e());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bp
 * JD-Core Version:    0.6.2
 */