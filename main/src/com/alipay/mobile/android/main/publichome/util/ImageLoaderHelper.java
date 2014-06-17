package com.alipay.mobile.android.main.publichome.util;

import android.os.Handler;
import android.widget.ImageView;
import com.alipay.mobile.android.main.publichome.util.exception.ImageLoadException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.TaskScheduleService;

public class ImageLoaderHelper
{
  public static String IMAGE_STORAGE_GROUP = "publicHomeImageGroup";
  public static String IMAGE_STORAGE_OWNER = "PublicHomeImageOwner";
  public static final String LOG_TAG = "ImageLoaderHelper";

  private static void a(ImageView paramImageView)
  {
    Object localObject = paramImageView.getTag();
    ImageLoaderTag localImageLoaderTag;
    if ((localObject != null) && ((localObject instanceof ImageLoaderTag)))
      localImageLoaderTag = (ImageLoaderTag)localObject;
    try
    {
      if ((localImageLoaderTag.getListener() != null) && ((localImageLoaderTag.getListener() instanceof AbstructImageLoaderListener)))
        ((AbstructImageLoaderListener)localImageLoaderTag.getListener()).canceled = true;
      cancelLoadAvatarIcon(localImageLoaderTag);
      return;
    }
    catch (ImageLoadException localImageLoadException)
    {
    }
  }

  public static void cancelLoadAvatarIcon(ImageLoaderTag paramImageLoaderTag)
  {
    if (paramImageLoaderTag == null)
      return;
    try
    {
      ((ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName())).cancel(paramImageLoaderTag.getUrl(), paramImageLoaderTag.getListener());
      return;
    }
    catch (Exception localException)
    {
    }
    throw new ImageLoadException("cancelLoadAvatarIcon holder ImageLoaderTag doesn't exist ");
  }

  public static void loadAvatarIcon(ImageLoaderTag paramImageLoaderTag, int paramInt1, int paramInt2)
  {
    try
    {
      String str = paramImageLoaderTag.getUrl();
      if (str != null)
      {
        if (str.trim().equals(""))
          return;
        MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
        ImageLoaderService localImageLoaderService = (ImageLoaderService)localMicroApplicationContext.findServiceByInterface(ImageLoaderService.class.getName());
        ((TaskScheduleService)localMicroApplicationContext.findServiceByInterface(TaskScheduleService.class.getName())).parallelExecute(new ImageLoaderHelper.3(localImageLoaderService, str, paramImageLoaderTag, paramInt1, paramInt2));
        return;
      }
    }
    catch (Exception localException)
    {
      throw new ImageLoadException("loadAvatarIcon holder ImageLoaderTag doesn't exist ");
    }
  }

  public static void loadHeadImage(ImageView paramImageView, String paramString, LoadImageCallback paramLoadImageCallback, Handler paramHandler, int paramInt1, int paramInt2)
  {
    if (paramLoadImageCallback == null)
      return;
    a(paramImageView);
    if (StringUtils.isBlank(paramString))
    {
      paramLoadImageCallback.loadDefaultImage(paramImageView);
      return;
    }
    if (paramLoadImageCallback.isNeedShowLoading())
      paramLoadImageCallback.loadLoadingImage(paramImageView);
    ImageLoaderTag localImageLoaderTag = new ImageLoaderTag();
    localImageLoaderTag.setUrl(paramString);
    localImageLoaderTag.setListener(new ImageLoaderHelper.1(paramHandler, paramLoadImageCallback, paramImageView));
    paramImageView.setTag(localImageLoaderTag);
    try
    {
      loadAvatarIcon(localImageLoaderTag, paramInt1, paramInt2);
      return;
    }
    catch (ImageLoadException localImageLoadException)
    {
    }
  }

  public static void loadHeadImage(ImageView paramImageView, String paramString, boolean paramBoolean, int paramInt1, int paramInt2, Handler paramHandler, int paramInt3, int paramInt4)
  {
    a(paramImageView);
    if (StringUtils.isBlank(paramString))
    {
      paramImageView.setImageResource(paramInt1);
      return;
    }
    if (paramBoolean)
      paramImageView.setImageResource(paramInt2);
    ImageLoaderTag localImageLoaderTag = new ImageLoaderTag();
    localImageLoaderTag.setUrl(paramString);
    localImageLoaderTag.setListener(new ImageLoaderHelper.2(paramHandler, paramImageView, paramInt1));
    paramImageView.setTag(localImageLoaderTag);
    try
    {
      loadAvatarIcon(localImageLoaderTag, paramInt3, paramInt4);
      return;
    }
    catch (ImageLoadException localImageLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.util.ImageLoaderHelper
 * JD-Core Version:    0.6.2
 */