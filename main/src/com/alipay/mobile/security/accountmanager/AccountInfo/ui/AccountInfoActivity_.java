package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AccountInfoActivity_ extends AccountInfoActivity
{
  private Handler m = new Handler();

  private void b()
  {
    this.c = ((APTableView)findViewById(R.id.db));
    this.b = ((APTableView)findViewById(R.id.m));
    this.a = ((APTitleBar)findViewById(R.id.s));
    this.f = ((APTableView)findViewById(R.id.de));
    this.d = ((APTableView)findViewById(R.id.ct));
    this.e = ((APTableView)findViewById(R.id.n));
    this.g = ((APTableView)findViewById(R.id.V));
    a();
  }

  public final void a(Bitmap paramBitmap)
  {
    this.m.post(new i(this, paramBitmap));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new j(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.b);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    b();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    b();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.AccountInfoActivity_
 * JD-Core Version:    0.6.2
 */