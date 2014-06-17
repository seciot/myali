package com.alipay.mobile.onsitepay.payer.sound;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.alipay.livetradeprod.core.model.base.DisplayUserInfo;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.onsitepay.e;

public class NearbyFriend extends FrameLayout
{
  public static String TAG = "SendSoundFriend";
  private CircularImageView a;
  private APTextView b;
  private Handler c = new Handler();
  DisplayUserInfo userInfo;

  public NearbyFriend(Context paramContext)
  {
    this(paramContext, null);
  }

  public NearbyFriend(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NearbyFriend(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(e.p, this, true);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((CircularImageView)findViewById(com.alipay.mobile.onsitepay.d.T));
    this.b = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.S));
  }

  public void showNearbyInfo(DisplayUserInfo paramDisplayUserInfo)
  {
    String str1 = paramDisplayUserInfo.headImageUrl;
    ImageLoaderService localImageLoaderService = (ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName());
    if (StringUtils.isNotBlank(str1))
    {
      this.a.setImageBitmap(BitmapFactory.decodeResource(getContext().getResources(), R.drawable.user_info_area_portrait_default));
      localImageLoaderService.startLoad(null, null, str1, new b(this), -1, -1, new d(this));
    }
    this.userInfo = paramDisplayUserInfo;
    new StringBuilder("showNearbyInfo=").append(paramDisplayUserInfo.toString()).toString();
    setVisibility(0);
    String str2 = paramDisplayUserInfo.name;
    if ((paramDisplayUserInfo.name != null) && (paramDisplayUserInfo.name.length() > 4))
      str2 = paramDisplayUserInfo.name.substring(0, 4) + "...";
    this.b.setText(str2);
    this.a.setImageBitmap(BitmapFactory.decodeResource(getContext().getResources(), R.drawable.user_info_area_portrait_default));
    startAnimation(AnimationUtils.loadAnimation(getContext(), com.alipay.mobile.onsitepay.b.b));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.NearbyFriend
 * JD-Core Version:    0.6.2
 */