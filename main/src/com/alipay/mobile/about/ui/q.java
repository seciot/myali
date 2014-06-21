package com.alipay.mobile.about.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

final class q
  implements TextWatcher
{
  q(FeedAssistantActivity paramFeedAssistantActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    FeedAssistantActivity.d(this.a).setEnabled(FeedAssistantActivity.c(this.a));
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    FeedAssistantActivity localFeedAssistantActivity;
    if (!FeedAssistantActivity.b(this.a))
    {
      localFeedAssistantActivity = this.a;
      if (paramCharSequence.length() <= 0)
        break label37;
    }
    label37: for (boolean bool = true; ; bool = false)
    {
      FeedAssistantActivity.v(localFeedAssistantActivity, bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.q
 * JD-Core Version:    0.6.2
 */