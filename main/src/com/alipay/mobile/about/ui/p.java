package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.alipay.mobile.commonui.widget.APInputBox;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class p
  implements View.OnFocusChangeListener
{
  p(FeedAssistantActivity paramFeedAssistantActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    String str = this.a.f.getInputedText().toString().replace(" ", "");
    if ((!paramBoolean) && (!FeedAssistantActivity.a.matcher(str).find()))
      FeedAssistantActivity.a(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.p
 * JD-Core Version:    0.6.2
 */