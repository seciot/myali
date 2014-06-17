package com.alipay.mobile.authorization.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.WebSettings;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APWebView;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.openplatform.R.id;
import com.alipay.mobile.openplatform.R.layout;

public class AuthorizationCheckProtocol extends BaseActivity
  implements View.OnClickListener
{
  private APButton a = null;
  private APWebView b = null;
  private String c = "";

  public void onClick(View paramView)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.a);
    getWindow().setLayout(-1, -2);
    this.c = getIntent().getStringExtra("protocol_url");
    this.a = ((APButton)findViewById(R.id.l));
    this.b = ((APWebView)findViewById(R.id.k));
    this.a.setOnClickListener(this);
    this.b.getSettings().setJavaScriptEnabled(true);
    this.b.setWebViewClient(new d(this));
    if (!TextUtils.isEmpty(this.c))
      this.b.loadUrl(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.ui.AuthorizationCheckProtocol
 * JD-Core Version:    0.6.2
 */