package com.alipay.mobile.onsitepay.payer;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebSettings;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.commonui.widget.APWebView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.onsitepay.e;
import com.alipay.mobile.onsitepay.utils.GenericProgressView;
import com.alipay.mobile.onsitepay.utils.i;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public class AutoPaySuccessActivity extends BaseActivity
{
  String a = "AutoPaySuccessActivity";
  APTextView b;
  APWebView c;
  APTitleBar d;
  GenericProgressView e;
  protected Handler f = new Handler();
  private String g;
  private String h;
  private String i;
  private boolean j = false;
  private i k;

  protected static SoundWavePayRpcFacade a()
  {
    return (SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.j);
    this.g = getIntent().getExtras().getString("paysucceedMsg");
    this.h = getIntent().getExtras().getString("promoUrl");
    this.i = getIntent().getExtras().getString("dynamicId");
    this.j = getIntent().getExtras().getBoolean("needPayResultAck");
    new StringBuilder("promoUrl=").append(this.h).append(" dynamicId=").append(this.i).append(" paysucceedMsg").append(this.g).append(" needPayResultAck=").append(this.j).toString();
    String str = this.i;
    if (this.j)
      BackgroundExecutor.execute(new d(this, str));
    this.b = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.g));
    this.b.setText(this.g);
    this.e = ((GenericProgressView)findViewById(com.alipay.mobile.onsitepay.d.aC));
    this.d = ((APTitleBar)findViewById(com.alipay.mobile.onsitepay.d.ap));
    this.d.setGenericButtonListener(new a(this));
    if (StringUtils.isNotBlank(this.h))
    {
      this.k = new i();
      this.c = ((APWebView)findViewById(com.alipay.mobile.onsitepay.d.as));
      this.c.setVisibility(0);
      this.e.setVisibility(0);
      this.c.getSettings().setJavaScriptEnabled(true);
      this.c.setHorizontalScrollBarEnabled(false);
      this.c.getSettings().setSupportZoom(true);
      this.c.getSettings().setBuiltInZoomControls(true);
      this.c.setInitialScale(70);
      this.c.setHorizontalScrollbarOverlay(true);
      this.c.setWebViewClient(new b(this));
      this.c.loadUrl(this.h);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.AutoPaySuccessActivity
 * JD-Core Version:    0.6.2
 */