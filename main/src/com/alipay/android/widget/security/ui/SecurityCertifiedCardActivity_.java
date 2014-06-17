package com.alipay.android.widget.security.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APBankCardListItemView;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APTableView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityCertifiedCardActivity_ extends SecurityCertifiedCardActivity
{
  private Handler i = new Handler();

  private void c()
  {
    this.e = ((APTableView)findViewById(R.id.aq));
    this.g = ((APCheckboxWithLinkText)findViewById(R.id.al));
    this.d = ((APBankCardListItemView)findViewById(R.id.ak));
    this.f = ((APTableView)findViewById(R.id.ag));
    this.h = ((APButton)findViewById(R.id.aj));
    a();
  }

  public final void a(Bitmap paramBitmap)
  {
    this.i.post(new SecurityCertifiedCardActivity_.1(this, paramBitmap));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new SecurityCertifiedCardActivity_.2(this, paramString));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new SecurityCertifiedCardActivity_.3(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ay);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    c();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    c();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedCardActivity_
 * JD-Core Version:    0.6.2
 */