package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.browser.HtmlActivityV2;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.annotations.EActivity;

@EActivity
public class AlipassHtmlActivity extends HtmlActivityV2
{
  private boolean a = false;
  private View.OnClickListener b = new x(this);

  protected void init()
  {
    super.init();
    if (StringUtils.isBlank((String)this.titleBar.getTitleTextView().getText()))
      this.titleBar.setTitleText(getString(R.string.more_title));
    this.titleBar.setGenericButtonVisiable(true);
    this.titleBar.setGenericButtonIconResource(R.drawable.title_refresh);
    this.titleBar.setGenericButtonListener(this.b);
    this.mWebView.setDownloadListener(new y(this, (byte)0));
  }

  protected boolean needLoginAndLoadUrl()
  {
    boolean bool1 = this.a;
    boolean bool2 = false;
    if (bool1)
    {
      this.a = false;
      bool2 = true;
    }
    return bool2;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = true;
    init();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassHtmlActivity
 * JD-Core Version:    0.6.2
 */