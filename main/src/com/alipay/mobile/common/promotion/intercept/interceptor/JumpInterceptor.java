package com.alipay.mobile.common.promotion.intercept.interceptor;

import android.view.View;
import com.alipay.mobile.common.promotion.intercept.PromotionMatchHelper;
import com.alipay.mobile.common.promotion.intercept.desc.InterceptorDesc;
import com.alipay.mobile.common.promotion.intercept.desc.JumpInterceptorDesc;
import com.alipay.mobile.common.utils.StringUtils;

public class JumpInterceptor extends BaseInterceptor
{
  protected boolean isOneTime = true;

  public JumpInterceptor(JumpInterceptorDesc paramJumpInterceptorDesc)
  {
    super(paramJumpInterceptorDesc);
    paramJumpInterceptorDesc.isSwallow = true;
  }

  private static boolean a(String paramString1, String paramString2)
  {
    new StringBuilder("matchString: ").append(paramString1).append(", ").append(paramString2).toString();
    if (!StringUtils.isEmpty(paramString2));
    for (boolean bool = paramString2.equals(paramString1); ; bool = true)
    {
      new StringBuilder("matchString result: ").append(bool).toString();
      return bool;
    }
  }

  public boolean match(String paramString1, String paramString2, String paramString3, String paramString4, View paramView)
  {
    JumpInterceptorDesc localJumpInterceptorDesc = (JumpInterceptorDesc)this.desc;
    return (a(paramString1, localJumpInterceptorDesc.appId)) && (a(paramString2, localJumpInterceptorDesc.pageId)) && (a(paramString3, localJumpInterceptorDesc.targetAppId)) && (a(paramString4, localJumpInterceptorDesc.targetPageId)) && ((StringUtils.isEmpty(localJumpInterceptorDesc.triggerId)) || (PromotionMatchHelper.matchViewTrigger(paramView, localJumpInterceptorDesc.triggerId)));
  }

  public void postExec()
  {
  }

  public String toString()
  {
    if (this.desc != null)
      return this.desc.toString();
    return super.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.interceptor.JumpInterceptor
 * JD-Core Version:    0.6.2
 */