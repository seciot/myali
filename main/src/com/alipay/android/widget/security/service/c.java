package com.alipay.android.widget.security.service;

import com.alipay.mobile.framework.service.ext.security.DeviceCallBack;

final class c
  implements DeviceCallBack
{
  c(SecurityInitServiceImpl paramSecurityInitServiceImpl)
  {
  }

  public final void generateDidCallBack(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new StringBuilder("生成did后进行回调，返回did数据,did=").append(paramString1).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.c
 * JD-Core Version:    0.6.2
 */