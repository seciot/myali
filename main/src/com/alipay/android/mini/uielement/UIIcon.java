package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import com.alipay.android.mini.util.UIPropUtil;
import org.json.JSONObject;

public class UIIcon extends BaseElement
{
  private View e;

  private void E()
  {
    if ((TextUtils.isEmpty(q())) && ((j() == null) || (TextUtils.isEmpty(j().toString()))))
      this.e.setVisibility(8);
    label130: TextView localTextView;
    do
    {
      return;
      if (!TextUtils.isEmpty(q()))
      {
        ImageView localImageView = (ImageView)this.e;
        String str = q();
        if ((!str.startsWith("local")) && (str.startsWith("http")))
          if (!str.contains("?"))
            break label130;
        for (str = str + "&time=" + System.currentTimeMillis(); ; str = str + "?time=" + System.currentTimeMillis())
        {
          UIPropUtil.a(str, new m(this, localImageView));
          return;
        }
      }
      localTextView = (TextView)this.e;
    }
    while (j() == null);
    localTextView.setText(Html.fromHtml(j().toString()));
  }

  protected final void a(Activity paramActivity, View paramView)
  {
    this.e = paramView;
    E();
    if ((n() != null) || (this.c != null))
      paramView.setOnClickListener(new l(this));
  }

  public final int b()
  {
    View localView = this.e;
    ElementFactory.a(localView);
    if (localView != null)
      return localView.getId();
    return 0;
  }

  public void dispose()
  {
    super.dispose();
    this.e = null;
  }

  public final JSONObject e()
  {
    return s();
  }

  protected final int t()
  {
    if (!TextUtils.isEmpty(q()))
      return R.layout.m;
    return R.layout.l;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIIcon
 * JD-Core Version:    0.6.2
 */