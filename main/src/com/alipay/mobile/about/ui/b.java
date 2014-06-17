package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.alipay.mobile.commonui.widget.APInputBox;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class b
  implements View.OnFocusChangeListener
{
  b(AboutFeedbackActivity paramAboutFeedbackActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    String str = AboutFeedbackActivity.a(this.a).getInputedText().replace(" ", "");
    if ((!paramBoolean) && (!AboutFeedbackActivity.a.matcher(str).find()))
      AboutFeedbackActivity.b(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.b
 * JD-Core Version:    0.6.2
 */