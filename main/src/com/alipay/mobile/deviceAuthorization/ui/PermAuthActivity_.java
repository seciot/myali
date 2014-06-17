package com.alipay.mobile.deviceAuthorization.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.alipay.mobile.clientsecurity.R.layout;

public final class PermAuthActivity_ extends PermAuthActivity
{
  private Handler e = new Handler();

  public final void a(ImageView paramImageView, Bitmap paramBitmap)
  {
    this.e.post(new ap(this, paramImageView, paramBitmap));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setContentView(R.layout.f);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.PermAuthActivity_
 * JD-Core Version:    0.6.2
 */