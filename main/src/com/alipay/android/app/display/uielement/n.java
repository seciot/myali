package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.alipay.android.app.R.color;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.UIUtils;
import com.alipay.android.app.widget.CustomEditText;

final class n
  implements Runnable
{
  n(BaseEditElement paramBaseEditElement, String paramString)
  {
  }

  public final void run()
  {
    if (this.b.a != null)
    {
      TextView localTextView = (TextView)LayoutInflater.from(this.b.a.getContext()).inflate(R.layout.O, null);
      localTextView.setText(this.a);
      localTextView.setTextColor(GlobalContext.a().b().getResources().getColor(R.color.g));
      localTextView.setTextSize(UIUtils.a());
      this.b.a.showPopHint(localTextView);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.n
 * JD-Core Version:    0.6.2
 */