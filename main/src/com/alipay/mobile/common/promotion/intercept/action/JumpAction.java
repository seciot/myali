package com.alipay.mobile.common.promotion.intercept.action;

import android.net.Uri;
import android.os.Bundle;
import com.alipay.mobile.common.promotion.intercept.IPromotionInterceptorManager;
import com.alipay.mobile.common.promotion.intercept.desc.JumpActionDesc;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.SchemeService;

public class JumpAction extends BaseAction
{
  public JumpAction(JumpActionDesc paramJumpActionDesc)
  {
    super(paramJumpActionDesc);
  }

  public void exec()
  {
    IPromotionInterceptorManager localIPromotionInterceptorManager = (IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName());
    if (localIPromotionInterceptorManager == null);
    JumpActionDesc localJumpActionDesc;
    String str;
    do
    {
      do
      {
        return;
        localIPromotionInterceptorManager.setTriggerView(null);
        localJumpActionDesc = (JumpActionDesc)this.desc;
        str = localJumpActionDesc.redirectUrl;
      }
      while (StringUtils.isEmpty(str));
      if (!StringUtils.isEmpty(localJumpActionDesc.title))
        str = str + "&title=" + localJumpActionDesc.title;
      if (str.indexOf("alipays://") == 0)
      {
        ((SchemeService)getMicroAppContext().findServiceByInterface(SchemeService.class.getName())).process(Uri.parse(str));
        new StringBuilder("SchemeService process uri: ").append(str).toString();
        return;
      }
    }
    while (str.indexOf("http://") != 0);
    Bundle localBundle = new Bundle();
    localBundle.putString("url", localJumpActionDesc.redirectUrl);
    localBundle.putString("title", localJumpActionDesc.title);
    AlipayApplication.getInstance().getMicroApplicationContext().startApp("", "20000067", localBundle);
    new StringBuilder("start h5 app: ").append(str).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.action.JumpAction
 * JD-Core Version:    0.6.2
 */