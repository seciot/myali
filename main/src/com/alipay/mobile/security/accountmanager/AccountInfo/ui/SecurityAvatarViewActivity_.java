package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APImageView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityAvatarViewActivity_ extends SecurityAvatarViewActivity
{
  private Handler b = new Handler();

  private void a()
  {
    this.a = ((APImageView)findViewById(R.id.bv));
  }

  public final void a(Bitmap paramBitmap)
  {
    this.b.post(new u(this, paramBitmap));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new v(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    a();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    a();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.SecurityAvatarViewActivity_
 * JD-Core Version:    0.6.2
 */