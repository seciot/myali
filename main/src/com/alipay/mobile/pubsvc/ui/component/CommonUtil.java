package com.alipay.mobile.pubsvc.ui.component;

import android.view.MotionEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

public final class CommonUtil
{
  public static String getFieldName(MotionEvent paramMotionEvent)
  {
    try
    {
      for (Field localField : MotionEvent.class.getDeclaredFields())
        if ((Modifier.isStatic(localField.getModifiers())) && (localField.getName().startsWith("ACTION")))
        {
          localField.setAccessible(true);
          Object localObject = localField.get(MotionEvent.class);
          if (((localObject instanceof Integer)) && (((Integer)localObject).intValue() == paramMotionEvent.getAction()))
          {
            String str = localField.getName();
            return str;
          }
        }
    }
    catch (Exception localException)
    {
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.ui.component.CommonUtil
 * JD-Core Version:    0.6.2
 */