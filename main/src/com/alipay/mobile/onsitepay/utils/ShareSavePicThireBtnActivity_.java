package com.alipay.mobile.onsitepay.utils;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import com.alipay.kabaoprod.core.model.model.SecurityShareInfo;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.framework.service.ShareService;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.Map;

public final class ShareSavePicThireBtnActivity_ extends ShareSavePicThireBtnActivity
{
  private Handler f = new Handler();

  private void c()
  {
    this.c = ((Button)findViewById(com.alipay.mobile.onsitepay.d.au));
    this.e = ((Button)findViewById(com.alipay.mobile.onsitepay.d.o));
    this.d = ((Button)findViewById(com.alipay.mobile.onsitepay.d.ax));
    this.b = ((APLinearLayout)findViewById(com.alipay.mobile.onsitepay.d.p));
    a();
  }

  public final void a(Map<String, SecurityShareInfo> paramMap, int paramInt)
  {
    this.f.post(new e(this, paramMap, paramInt));
  }

  public final void a(byte[] paramArrayOfByte, ShareContent paramShareContent, ShareService paramShareService, int paramInt)
  {
    this.f.post(new d(this, paramArrayOfByte, paramShareContent, paramShareService, paramInt));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new f(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(com.alipay.mobile.onsitepay.e.g);
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
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.ShareSavePicThireBtnActivity_
 * JD-Core Version:    0.6.2
 */