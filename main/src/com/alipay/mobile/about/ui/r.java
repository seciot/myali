package com.alipay.mobile.about.ui;

import android.text.Editable;
import android.text.TextWatcher;

final class r
  implements TextWatcher
{
  r(FeedAssistantActivity paramFeedAssistantActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    FeedAssistantActivity localFeedAssistantActivity = this.a;
    if (paramCharSequence.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      FeedAssistantActivity.d(localFeedAssistantActivity, bool);
      FeedAssistantActivity.v(this.a, paramCharSequence.length());
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.r
 * JD-Core Version:    0.6.2
 */