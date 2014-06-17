package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.service.ShareService;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.Map;

public final class SecurityAccountQrCodeActivity_ extends SecurityAccountQrCodeActivity
{
  private Handler g = new Handler();

  private void d()
  {
    this.d = ((APRelativeLayout)findViewById(R.id.p));
    this.b = ((APTextView)findViewById(R.id.r));
    this.e = ((APFlowTipView)findViewById(R.id.aW));
    this.a = ((APImageView)findViewById(R.id.o));
    this.c = ((APTitleBar)findViewById(R.id.q));
    a();
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new t(this, paramString));
  }

  public final void a(String paramString, SecurityQrCodeShowResult paramSecurityQrCodeShowResult)
  {
    this.g.post(new o(this, paramString, paramSecurityQrCodeShowResult));
  }

  public final void a(Map<String, SecurityShareInfo> paramMap, int paramInt)
  {
    this.g.post(new r(this, paramMap, paramInt));
  }

  public final void a(byte[] paramArrayOfByte, ShareContent paramShareContent, ShareService paramShareService, int paramInt)
  {
    this.g.post(new q(this, paramArrayOfByte, paramShareContent, paramShareService, paramInt));
  }

  public final void b()
  {
    this.g.post(new p(this));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new s(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ap);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    d();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    d();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    d();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.SecurityAccountQrCodeActivity_
 * JD-Core Version:    0.6.2
 */