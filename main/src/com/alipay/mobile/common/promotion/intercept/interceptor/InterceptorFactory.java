package com.alipay.mobile.common.promotion.intercept.interceptor;

import com.alipay.mobile.common.promotion.intercept.action.JumpAction;
import com.alipay.mobile.common.promotion.intercept.desc.InterceptorDesc;
import com.alipay.mobile.common.promotion.intercept.desc.JumpActionDesc;
import com.alipay.mobile.common.promotion.intercept.desc.JumpInterceptorDesc;
import com.alipay.mobile.common.utils.StringUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class InterceptorFactory
{
  public static List<BaseInterceptor> reflectCreateInterceptor(String paramString, Object paramObject)
  {
    if (paramObject == null);
    String str;
    do
    {
      InterceptorDesc localInterceptorDesc;
      JumpInterceptorDesc localJumpInterceptorDesc1;
      JumpActionDesc localJumpActionDesc1;
      do
      {
        return null;
        str = reflectGetField(paramObject, "promoType");
        if (!"click_jump".equals(str))
          break;
        localInterceptorDesc = new InterceptorDesc();
        localInterceptorDesc.type = "click";
        localInterceptorDesc.triggerId = reflectGetField(paramObject, "clientTriggerId");
        localJumpInterceptorDesc1 = new JumpInterceptorDesc();
        localJumpInterceptorDesc1.appId = reflectGetField(paramObject, "clientAppId");
        localJumpInterceptorDesc1.pageId = reflectGetField(paramObject, "clientPageId");
        localJumpInterceptorDesc1.triggerId = localInterceptorDesc.triggerId;
        localJumpInterceptorDesc1.type = str;
        localJumpInterceptorDesc1.targetAppId = reflectGetField(paramObject, "clientTargetAppId");
        localJumpInterceptorDesc1.targetPageId = reflectGetField(paramObject, "clientTargetPageId");
        localJumpActionDesc1 = new JumpActionDesc();
        localJumpActionDesc1.redirectUrl = reflectGetField(paramObject, "clientRedirectUrl");
        localJumpActionDesc1.title = reflectGetField(paramObject, "title");
      }
      while (StringUtils.isEmpty(localInterceptorDesc.triggerId));
      ArrayList localArrayList1 = new ArrayList();
      localArrayList1.add(new ClickInterceptor(localInterceptorDesc));
      JumpAction localJumpAction = new JumpAction(localJumpActionDesc1);
      JumpInterceptor localJumpInterceptor1 = new JumpInterceptor(localJumpInterceptorDesc1);
      localJumpInterceptor1.setPreAction(localJumpAction);
      localArrayList1.add(localJumpInterceptor1);
      return localArrayList1;
    }
    while (!"rpc_jump".equals(str));
    JumpInterceptorDesc localJumpInterceptorDesc2 = new JumpInterceptorDesc();
    localJumpInterceptorDesc2.appId = reflectGetField(paramObject, "clientAppId");
    localJumpInterceptorDesc2.pageId = reflectGetField(paramObject, "clientPageId");
    localJumpInterceptorDesc2.targetAppId = reflectGetField(paramObject, "clientTargetAppId");
    localJumpInterceptorDesc2.targetPageId = reflectGetField(paramObject, "clientTargetPageId");
    localJumpInterceptorDesc2.type = str;
    JumpActionDesc localJumpActionDesc2 = new JumpActionDesc();
    localJumpActionDesc2.redirectUrl = reflectGetField(paramObject, "clientRedirectUrl");
    localJumpActionDesc2.title = reflectGetField(paramObject, "title");
    JumpInterceptor localJumpInterceptor2 = new JumpInterceptor(localJumpInterceptorDesc2);
    localJumpInterceptor2.setPostAction(new JumpAction(localJumpActionDesc2));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(localJumpInterceptor2);
    return localArrayList2;
  }

  public static String reflectGetField(Object paramObject, String paramString)
  {
    try
    {
      Field localField = paramObject.getClass().getField(paramString);
      localField.setAccessible(true);
      Object localObject = localField.get(paramObject);
      if ((localObject != null) && ((localObject instanceof String)))
      {
        String str = (String)localObject;
        return str;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.interceptor.InterceptorFactory
 * JD-Core Version:    0.6.2
 */