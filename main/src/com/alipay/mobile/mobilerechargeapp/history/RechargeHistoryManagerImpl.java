package com.alipay.mobile.mobilerechargeapp.history;

import android.content.Context;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RechargeHistoryManagerImpl
  implements RechargeHistoryManager
{
  private KVStore a;
  private String b;

  public RechargeHistoryManagerImpl(Context paramContext, String paramString)
  {
    this.a = new KVStore(paramContext, "RECHARGE_HISTORY");
    this.b = paramString;
  }

  public final String a(String paramString)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      RechargeHistoryInfo localRechargeHistoryInfo = (RechargeHistoryInfo)localIterator.next();
      if (localRechargeHistoryInfo.getA().equals(paramString))
        return localRechargeHistoryInfo.getD();
    }
    return null;
  }

  public final List a()
  {
    String str = this.a.a(this.b);
    if ((str == null) || (str.length() == 0))
      return new ArrayList();
    List localList = JSON.parseArray(str, RechargeHistoryInfo.class);
    if (localList == null)
      return new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      if (((RechargeHistoryInfo)localIterator.next()).getA() == null)
        localIterator.remove();
    return localList;
  }

  public final void a(RechargeHistoryInfo paramRechargeHistoryInfo)
  {
    String str = JSON.toJSONString(new ListUtil().a(a(), paramRechargeHistoryInfo));
    this.a.a(this.b, str);
  }

  public final RechargeHistoryInfo b()
  {
    List localList = a();
    if ((localList == null) || (localList.size() == 0))
      return null;
    return (RechargeHistoryInfo)localList.get(-1 + localList.size());
  }

  public final String b(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return "";
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      RechargeHistoryInfo localRechargeHistoryInfo = (RechargeHistoryInfo)localIterator.next();
      if (localRechargeHistoryInfo.getA().equals(paramString))
        return localRechargeHistoryInfo.getB();
    }
    return "";
  }

  public final void c()
  {
    this.a.b(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryManagerImpl
 * JD-Core Version:    0.6.2
 */