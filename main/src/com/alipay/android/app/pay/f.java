package com.alipay.android.app.pay;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.BaseAdapter;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.widget.BaseWebView;
import java.util.ArrayList;

final class f extends BaseAdapter
{
  ArrayList a;

  public f(HyperlinkActivity paramHyperlinkActivity, ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final void a(ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final int getCount()
  {
    int i = this.a.size();
    if (i > 0)
      return i;
    return 0;
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    WebView localWebView;
    if (paramView == null)
    {
      paramView = this.b.getLayoutInflater().inflate(R.layout.F, paramViewGroup, false);
      localWebView = new BaseWebView((WebView)paramView.findViewById(R.id.aG), this.b).a();
      paramView.setTag(localWebView);
      localWebView.getSettings().setSupportZoom(false);
      localWebView.setScrollContainer(false);
      localWebView.setEnabled(false);
    }
    while (true)
    {
      localWebView.loadDataWithBaseURL(null, (String)this.a.get(paramInt), "text/html", "UTF-8", null);
      return paramView;
      localWebView = (WebView)paramView.getTag();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.f
 * JD-Core Version:    0.6.2
 */