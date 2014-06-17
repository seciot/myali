package com.alipay.mobile.common.ui.contacts.util;

import android.text.TextUtils;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.common.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ContractSearch
{
  private static ConcurrentHashMap<Integer, List<Integer>> a = new ConcurrentHashMap();
  private static List<ContactPerson> b = null;
  private static ConcurrentHashMap<String, List<Integer>> c = null;
  private static int d = 50;

  private static List<Integer> a(String paramString)
  {
    if (c != null)
      for (int i = 0; i < paramString.length(); i++)
      {
        String str = paramString.substring(0, paramString.length() - i);
        List localList = (List)c.get(str);
        if ((localList != null) && (localList.size() > 0))
          return localList;
      }
    Integer localInteger = Integer.valueOf(paramString.charAt(0));
    return (List)a.get(localInteger);
  }

  private static List<ContactPerson> a(List<Integer> paramList, String paramString)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return null;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList(paramList);
    Iterator localIterator = localArrayList3.iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      ContactPerson localContactPerson = (ContactPerson)b.get(localInteger.intValue());
      if (localContactPerson.isNameMatch(paramString))
      {
        localArrayList2.add(localInteger);
        if (!localContactPerson.isNumberMatch)
          localArrayList1.add(localContactPerson);
      }
    }
    if (c == null)
      c = new ConcurrentHashMap();
    while (true)
    {
      c.put(paramString, localArrayList2);
      Collections.sort(localArrayList1, new ContractSearch.ComparatorMatchedContact(null));
      localArrayList3.clear();
      return localArrayList1;
      if (c.size() >= d)
        c.clear();
    }
  }

  private static List<ContactPerson> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      ContactPerson localContactPerson = (ContactPerson)localIterator.next();
      if (localContactPerson.isPhoneNumberMatch(paramString))
        localArrayList.add(localContactPerson);
    }
    return localArrayList;
  }

  private static String c(String paramString)
  {
    List localList = PinYinAndHanziUtils.getFullPY(paramString);
    StringBuilder localStringBuilder = new StringBuilder(20);
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localStringBuilder.append(((String)localIterator.next()).toUpperCase());
    return localStringBuilder.toString();
  }

  public static void genSearchIndex(List<ContactPerson> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      b = paramList;
      if (c != null)
      {
        c.clear();
        c = null;
      }
      a.clear();
      Iterator localIterator1 = paramList.iterator();
      for (int i = 0; localIterator1.hasNext(); i++)
      {
        ContactPerson localContactPerson = (ContactPerson)localIterator1.next();
        localContactPerson.initSearchInfo();
        Iterator localIterator2 = localContactPerson.getFirstChars().iterator();
        if (localIterator2.hasNext())
        {
          Integer localInteger = (Integer)localIterator2.next();
          if (a.containsKey(localInteger))
            ((List)a.get(localInteger)).add(Integer.valueOf(i));
          while (true)
          {
            Boolean.valueOf(true);
            break;
            ArrayList localArrayList = new ArrayList();
            localArrayList.add(Integer.valueOf(i));
            a.put(localInteger, localArrayList);
          }
        }
      }
    }
  }

  public static List<ContactPerson> search(String paramString)
  {
    Object localObject;
    if (StringUtils.isBlank(paramString))
      localObject = null;
    List localList1;
    do
    {
      return localObject;
      localObject = new ArrayList();
      if (TextUtils.isDigitsOnly(paramString))
      {
        List localList2 = b(paramString);
        if ((localList2 != null) && (localList2.size() > 0))
          ((List)localObject).addAll(localList2);
      }
      localList1 = a(a(c(paramString)), paramString);
    }
    while (localList1 == null);
    ((List)localObject).addAll(localList1);
    return localObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.ContractSearch
 * JD-Core Version:    0.6.2
 */