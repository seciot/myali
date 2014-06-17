package com.alipay.mobile.common.logagent;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.atomic.AtomicLong;

public class ListenerInvocationHandler
  implements InvocationHandler
{
  private Object a = null;

  public ListenerInvocationHandler(Object paramObject)
  {
    this.a = paramObject;
  }

  public Object getProxy(Class paramClass)
  {
    if (this.a == null)
      return null;
    return Proxy.newProxyInstance(this.a.getClass().getClassLoader(), new Class[] { paramClass }, this);
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    Object localObject1;
    try
    {
      localObject1 = paramMethod.invoke(this.a, paramArrayOfObject);
      if ((!(this.a instanceof View.OnClickListener)) && (!(this.a instanceof AdapterView.OnItemClickListener)))
        return localObject1;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable1 = localInvocationTargetException.getCause();
      if (localThrowable1 != null)
        throw localThrowable1;
      throw localInvocationTargetException;
    }
    AlipayLogAgent.ActionContext localActionContext = new AlipayLogAgent.ActionContext();
    String str1 = "";
    while (true)
    {
      try
      {
        View localView = (View)paramArrayOfObject[0];
        if (-1 != localView.getId())
          str1 = localView.getResources().getResourceEntryName(localView.getId());
        Object localObject2;
        if ((this.a instanceof View.OnClickListener))
        {
          localObject2 = localView.getTag(621215851);
          StringBuilder localStringBuilder1 = new StringBuilder();
          StringBuilder localStringBuilder2 = localStringBuilder1.append(this.a.getClass().getName()).append("|");
          if (str1 != null)
            break label297;
          str2 = "";
          StringBuilder localStringBuilder3 = localStringBuilder2.append(str2).append("_");
          if (localObject2 == null)
          {
            localObject3 = "";
            localStringBuilder3.append((String)localObject3);
            localActionContext.actionId = localStringBuilder1.toString();
            localActionContext.behavID = BehaviourIdEnum.CLICKED;
            localActionContext.time = System.currentTimeMillis();
            localActionContext.draw_times.set(0L);
            AlipayLogAgent.actionCtx = localActionContext;
            AlipayLogAgent.writeLog(localActionContext, AlipayLogAgent.ACTION_STATUS_START);
            break label294;
          }
        }
        else
        {
          boolean bool = this.a instanceof AdapterView.OnItemClickListener;
          localObject2 = null;
          if (!bool)
            continue;
          localObject2 = ((View)paramArrayOfObject[1]).getTag(621215851);
          continue;
        }
        String str3 = localObject2.toString();
        Object localObject3 = str3;
        continue;
      }
      catch (Throwable localThrowable2)
      {
        localThrowable2.printStackTrace();
      }
      label294: return localObject1;
      label297: String str2 = str1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.ListenerInvocationHandler
 * JD-Core Version:    0.6.2
 */