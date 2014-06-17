package com.alipay.mobile.mobilerechargeapp.history;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ListUtil
{
  public final List a(List paramList, Comparable paramComparable)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      if (((Comparable)localIterator.next()).equals(paramComparable))
        localIterator.remove();
    paramList.add(paramComparable);
    Collections.sort(paramList, new a(this));
    if (paramList.size() > 5)
      paramList = paramList.subList(-5 + paramList.size(), paramList.size());
    return paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.history.ListUtil
 * JD-Core Version:    0.6.2
 */