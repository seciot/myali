package com.alipay.android.phone.publicplatform.main.service;

import android.app.Activity;
import com.alipay.android.phone.publicplatform.main.api.PublicHomeFragmentInterface;
import com.alipay.android.phone.publicplatform.main.api.PublicHomeManagerInterface;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class PublicMainService extends ExternalService
{
  public abstract PublicHomeManagerInterface getPublicHomeManagerInterface();

  public abstract PublicHomeFragmentInterface getPublicHomeViewInterface();

  public abstract PublicHomeFragmentInterface getPublicHomeViewInterface(Activity paramActivity);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.service.PublicMainService
 * JD-Core Version:    0.6.2
 */