package com.alipay.mobile.common.promotion.intercept;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;

public class PromotionStartAppAdvice
  implements Advice
{
  private final String a = "PromotionStartAppAdvice";

  public void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public Pair<Boolean, Object> onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    new StringBuilder().append(paramString).append(", onExecutionAround").toString();
    String str1;
    Object localObject;
    int i;
    if ("void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)".equals(paramString))
    {
      String str4 = (String)paramArrayOfObject[0];
      str1 = (String)paramArrayOfObject[1];
      localObject = str4;
      i = 0;
    }
    while (true)
    {
      IPromotionInterceptor localIPromotionInterceptor = ((IPromotionInterceptorManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(IPromotionInterceptorManager.class.getName())).match(new Object[] { localObject, "", str1, "" }, "jump");
      if (localIPromotionInterceptor != null)
      {
        localIPromotionInterceptor.preExec();
        if ((localIPromotionInterceptor.isSwallow()) && (i == 0))
        {
          return new Pair(Boolean.valueOf(true), null);
          if (!"void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)".equals(paramString))
            break label229;
          MicroApplication localMicroApplication = AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp();
          if (localMicroApplication == null);
          for (String str2 = ""; ; str2 = localMicroApplication.getAppId())
          {
            String str3 = (String)paramArrayOfObject[1];
            if ((StringUtils.isEmpty(str3)) || (str3.equals(str2)))
              break;
            return null;
          }
          str1 = "";
          localObject = str2;
          i = 1;
        }
      }
      else
      {
        return null;
        label229: str1 = "";
        localObject = "";
        i = 0;
      }
    }
  }

  public void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionStartAppAdvice
 * JD-Core Version:    0.6.2
 */