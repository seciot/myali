package com.alipay.mobile.withdraw.ui;

import android.widget.EditText;
import com.alipay.mobile.common.misc.EditTextEmptyWatcher;
import java.util.Iterator;
import java.util.List;

final class p extends EditTextEmptyWatcher
{
  private p(WithdrawActivity paramWithdrawActivity)
  {
  }

  protected final boolean checkHasNull()
  {
    Iterator localIterator = this.mNeedCheckViews.iterator();
    while (localIterator.hasNext())
    {
      EditText localEditText = (EditText)localIterator.next();
      if ((getViewVisiable(localEditText)) && ("".equals(localEditText.getText().toString())))
        return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.p
 * JD-Core Version:    0.6.2
 */