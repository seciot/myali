package com.alipay.mobile.common.ui.contacts.util;

import android.content.res.AssetManager;
import com.alipay.mobile.framework.AlipayApplication;
import java.io.BufferedInputStream;

class ResourceHelper
{
  static BufferedInputStream getResourceInputStream(String paramString)
  {
    return new BufferedInputStream(AlipayApplication.getInstance().getAssets().open(paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.ResourceHelper
 * JD-Core Version:    0.6.2
 */