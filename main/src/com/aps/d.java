package com.aps;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class d
{
  private static d a = null;
  private Hashtable<String, List<d.a>> b = new Hashtable();
  private long c = 0L;

  private static double a(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    double d1 = 0.0D;
    int i = 0;
    double d2 = d1;
    double d3 = d1;
    while (i < paramArrayOfDouble1.length)
    {
      d2 += paramArrayOfDouble1[i] * paramArrayOfDouble1[i];
      d1 += paramArrayOfDouble2[i] * paramArrayOfDouble2[i];
      d3 += paramArrayOfDouble1[i] * paramArrayOfDouble2[i];
      i++;
    }
    return d3 / (Math.sqrt(d2) * Math.sqrt(d1));
  }

  private d.a a(String paramString1, StringBuilder paramStringBuilder, String paramString2, String paramString3)
  {
    Hashtable localHashtable1 = new Hashtable();
    Hashtable localHashtable2 = new Hashtable();
    Hashtable localHashtable3 = new Hashtable();
    Iterator localIterator1;
    int i;
    Object localObject1;
    if (paramString3.equals("mem"))
    {
      localIterator1 = this.b.entrySet().iterator();
      i = 1;
      localObject1 = null;
    }
    while (true)
    {
      label57: int j;
      if ((localIterator1 != null) && (localIterator1.hasNext()))
      {
        Object localObject2;
        Object localObject3;
        if (i != 0)
        {
          List localList2 = (List)this.b.get(paramString1);
          localObject2 = paramString1;
          localObject3 = localList2;
          j = 0;
          label100: if (localObject1 == null)
            if (localObject3 == null)
              break label699;
        }
        else
        {
          for (int k = 0; ; k++)
          {
            if (k >= ((List)localObject3).size())
              break label674;
            d.a locala = (d.a)((List)localObject3).get(k);
            if ((!TextUtils.isEmpty(locala.b())) && (!TextUtils.isEmpty(paramStringBuilder)) && (((String)localObject2).indexOf(paramString2) != -1))
            {
              String str2 = locala.b();
              int m = str2.indexOf(",access");
              int n;
              if ((m == -1) || (m < 17))
                n = 0;
              while (true)
              {
                if ((n == 0) || (locala.a().c() > 800.0F))
                  break label361;
                i = j;
                localObject1 = locala;
                break label57;
                paramString3.equals("db");
                localIterator1 = null;
                break;
                Map.Entry localEntry = (Map.Entry)localIterator1.next();
                String str1 = (String)localEntry.getKey();
                List localList1 = (List)localEntry.getValue();
                localObject2 = str1;
                localObject3 = localList1;
                j = i;
                break label100;
                if (paramStringBuilder.indexOf(",access") != -1)
                {
                  String str4 = str2.substring(m - 17, m);
                  if (paramStringBuilder.toString().indexOf(str4 + ",access") != -1)
                    n = 1;
                }
                else
                {
                  n = 0;
                }
              }
              label361: a(locala.b(), localHashtable1);
              a(paramStringBuilder.toString(), localHashtable2);
              localHashtable3.clear();
              Iterator localIterator2 = localHashtable1.keySet().iterator();
              while (localIterator2.hasNext())
                localHashtable3.put((String)localIterator2.next(), "");
              Iterator localIterator3 = localHashtable2.keySet().iterator();
              while (localIterator3.hasNext())
                localHashtable3.put((String)localIterator3.next(), "");
              Set localSet = localHashtable3.keySet();
              double[] arrayOfDouble1 = new double[localSet.size()];
              double[] arrayOfDouble2 = new double[localSet.size()];
              Iterator localIterator4 = localSet.iterator();
              int i1 = 0;
              if (localIterator4.hasNext())
              {
                String str3 = (String)localIterator4.next();
                double d2;
                if (localHashtable1.containsKey(str3))
                {
                  d2 = 1.0D;
                  label547: arrayOfDouble1[i1] = d2;
                  if (!localHashtable2.containsKey(str3))
                    break label586;
                }
                label586: for (double d3 = 1.0D; ; d3 = 0.0D)
                {
                  arrayOfDouble2[i1] = d3;
                  i1++;
                  break;
                  d2 = 0.0D;
                  break label547;
                }
              }
              localSet.clear();
              double d1 = a(arrayOfDouble1, arrayOfDouble2);
              if (paramString3.equals("mem"))
              {
                if (d1 <= 0.8500000238418579D)
                  continue;
                i = j;
                localObject1 = locala;
                break label57;
              }
              if ((paramString3.equals("db")) && (d1 > 0.8500000238418579D))
              {
                i = j;
                localObject1 = locala;
                break label57;
              }
            }
          }
          label674: i = j;
        }
      }
      else
      {
        localHashtable1.clear();
        localHashtable2.clear();
        localHashtable3.clear();
        return localObject1;
        label699: i = j;
      }
    }
  }

  static d a()
  {
    try
    {
      if (a == null)
        a = new d();
      d locald = a;
      return locald;
    }
    finally
    {
    }
  }

  private static void a(String paramString, Hashtable<String, String> paramHashtable)
  {
    paramHashtable.clear();
    for (String str : paramString.split("#"))
      if (str.length() > 0)
        paramHashtable.put(str, "");
  }

  c a(String paramString1, StringBuilder paramStringBuilder, String paramString2)
  {
    if ((paramString2.equals("mem")) && (!f.k))
      c();
    while (true)
    {
      return null;
      if ((paramString2.equals("mem")) && (b()))
      {
        c();
        return null;
      }
      d.a locala;
      if (paramString1.indexOf("#cellwifi") != -1)
      {
        locala = a(paramString1, paramStringBuilder, "#cellwifi", paramString2);
        if (locala != null);
      }
      while (locala != null)
      {
        return locala.a();
        if (paramString1.indexOf("#wifi") != -1)
        {
          locala = a(paramString1, paramStringBuilder, "#wifi", paramString2);
          if (locala != null);
        }
        else if (paramString1.indexOf("#cell") != -1)
        {
          if (paramString2.equals("mem"))
          {
            List localList = (List)this.b.get(paramString1);
            if ((localList != null) && (localList.size() > 0))
              locala = (d.a)localList.get(-1 + localList.size());
          }
          else
          {
            paramString2.equals("db");
          }
        }
        else
        {
          locala = null;
        }
      }
    }
  }

  void a(String paramString, c paramc, StringBuilder paramStringBuilder, Context paramContext)
  {
    if (!f.k)
      c();
    while ((!a(paramString, paramc)) || (paramc.e().equals("mem")))
      return;
    if (b())
      c();
    this.c = n.a();
    d.a locala = new d.a(this);
    paramc.b("mem");
    locala.a(paramc);
    locala.a(paramStringBuilder.toString());
    if (this.b.contains(paramString))
    {
      List localList = (List)this.b.get(paramString);
      if ((localList != null) && (!localList.contains(locala)))
        localList.add(locala);
      this.b.put(paramString, localList);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(locala);
    this.b.put(paramString, localArrayList);
  }

  boolean a(String paramString, c paramc)
  {
    if ((paramString == null) || (paramc == null));
    while ((paramString.indexOf("#network") == -1) || (paramc.a() == 0.0D))
      return false;
    return true;
  }

  boolean b()
  {
    long l = n.a() - this.c;
    if (this.c != 0L)
    {
      if (this.b.size() > 360);
      while (l > 3600000L)
        return true;
    }
    return false;
  }

  void c()
  {
    this.c = 0L;
    this.b.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.d
 * JD-Core Version:    0.6.2
 */