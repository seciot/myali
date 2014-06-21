package com.alipay.android.app.display.uielement;

import android.text.TextUtils;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.widget.CustomEditText.OnDoneListener;

final class e
  implements CustomEditText.OnDoneListener
{
  e(BaseEditElement paramBaseEditElement)
  {
  }

  public final void a()
  {
    if (TextUtils.isEmpty(this.a.getFullBundleName()))
      return;
    MspEventArgs localMspEventArgs = new MspEventArgs(EventType.z);
    this.a.getBundle(localMspEventArgs);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.e
 * JD-Core Version:    0.6.2
 */