package com.alipay.mobile.android.avatar.process;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class EditAvatarActivity_ extends EditAvatarActivity
{
  private Handler e = new Handler();

  private void d()
  {
    this.c = ((APButton)findViewById(R.id.cI));
    this.b = ((APButton)findViewById(R.id.cH));
    this.a = ((CropImageView)findViewById(R.id.P));
    this.d = ((APImageView)findViewById(R.id.cJ));
    a();
  }

  public final void a(int paramInt)
  {
    this.e.post(new a(this, paramInt));
  }

  public final void a(String paramString1, String paramString2)
  {
    BackgroundExecutor.execute(new c(this, paramString1, paramString2));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new b(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.D);
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
 * Qualified Name:     com.alipay.mobile.android.avatar.process.EditAvatarActivity_
 * JD-Core Version:    0.6.2
 */