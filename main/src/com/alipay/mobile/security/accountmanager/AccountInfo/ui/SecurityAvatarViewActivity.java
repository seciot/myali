package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView.ScaleType;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity
public class SecurityAvatarViewActivity extends BaseActivity
  implements ImageLoaderListener
{

  @ViewById(resName="image_icon_view")
  APImageView a;
  private ImageLoaderService b;

  @UiThread
  protected void a(Bitmap paramBitmap)
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
    int i = localDisplayMetrics.widthPixels;
    localLayoutParams.width = i;
    localLayoutParams.height = i;
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(paramBitmap);
    this.a.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    this.a.setBackgroundDrawable(localBitmapDrawable);
  }

  @Background
  protected void a(String paramString)
  {
    this.b.startLoad(UserInfoHelper.getInstance().getUserInfo(this.mApp).getUserId(), null, paramString, this, -1, -1);
  }

  public void onCancelled(String paramString)
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ao);
    this.b = ((ImageLoaderService)this.mApp.getServiceByInterface(ImageLoaderService.class.getName()));
    String str = getIntent().getStringExtra("imageUrl");
    if (StringUtils.isNotBlank(str))
    {
      a(str);
      return;
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
    int i = localDisplayMetrics.widthPixels;
    localLayoutParams.width = i;
    localLayoutParams.height = i;
    this.a.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    this.a.setBackgroundResource(R.drawable.x);
  }

  public void onFailed(String paramString1, int paramInt, String paramString2)
  {
  }

  public void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    a(paramBitmap);
  }

  public void onPreLoad(String paramString)
  {
  }

  public void onProgressUpdate(String paramString, double paramDouble)
  {
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      finish();
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.SecurityAvatarViewActivity
 * JD-Core Version:    0.6.2
 */