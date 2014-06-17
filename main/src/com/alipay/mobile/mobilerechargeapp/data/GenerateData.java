package com.alipay.mobile.mobilerechargeapp.data;

import android.content.Context;
import android.content.res.Resources;
import com.alipay.mobile.mobilerechargeapp.R.string;
import java.util.ArrayList;

public class GenerateData
{
  private Context a;

  public GenerateData(Context paramContext)
  {
    this.a = paramContext;
  }

  public static DisplayData a(ArrayList paramArrayList)
  {
    DisplayData localDisplayData = new DisplayData();
    if (!b(paramArrayList));
    while (true)
    {
      return localDisplayData;
      for (int i = 0; (i < 3) && (i < paramArrayList.size()); i++)
        localDisplayData.a.add(paramArrayList.get(i));
    }
  }

  private void a(ArrayList paramArrayList, String paramString)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      for (int i = -1 + paramArrayList.size(); i >= 0; i--)
        if (paramString.indexOf(((ItemData)paramArrayList.get(i)).b) >= 0)
          ((ItemData)paramArrayList.get(i)).a = this.a.getResources().getString(R.string.k);
    }
  }

  private ArrayList b(ArrayList paramArrayList1, ArrayList paramArrayList2, String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    for (int i = 0; ; i = 1)
    {
      ArrayList localArrayList = new ArrayList();
      int j = 0;
      int k;
      int m;
      if (j < paramArrayList1.size())
      {
        k = -1 + paramArrayList2.size();
        m = 0;
        label46: if (k >= 0)
        {
          if (((ItemData)paramArrayList1.get(j)).b.indexOf(((ItemData)paramArrayList2.get(k)).b) < 0)
            break label255;
          if ((((ItemData)paramArrayList2.get(k)).a != null) && (((ItemData)paramArrayList2.get(k)).a.length() > 0))
            ((ItemData)paramArrayList1.get(j)).a = ((ItemData)paramArrayList2.get(k)).a;
          paramArrayList2.remove(k);
        }
      }
      label255: for (int n = 1; ; n = m)
      {
        k--;
        m = n;
        break label46;
        if (m == 0)
          ((ItemData)paramArrayList1.get(j)).a = this.a.getResources().getString(R.string.g);
        if (i != 0)
          if (paramString.indexOf(((ItemData)paramArrayList1.get(j)).b) < 0)
            localArrayList.add(paramArrayList1.get(j));
        while (true)
        {
          j++;
          break;
          localArrayList.add(paramArrayList1.get(j));
        }
        localArrayList.addAll(paramArrayList2);
        return localArrayList;
      }
    }
  }

  private static void b(ArrayList paramArrayList, String paramString)
  {
    if ((paramArrayList == null) || (paramString == null) || (paramString.length() <= 0));
    while (true)
    {
      return;
      for (int i = -1 + paramArrayList.size(); i >= 0; i--)
        if (paramString.indexOf(((ItemData)paramArrayList.get(i)).b) >= 0)
          paramArrayList.remove(i);
    }
  }

  private static boolean b(ArrayList paramArrayList)
  {
    return (paramArrayList != null) && (paramArrayList.size() > 0);
  }

  public final ArrayList a(ArrayList paramArrayList1, ArrayList paramArrayList2, String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      b(paramArrayList2, paramString);
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayList1 != null) || (paramArrayList2 != null))
    {
      if ((!b(paramArrayList1)) || (!b(paramArrayList2)))
        break label117;
      localArrayList = b(paramArrayList1, paramArrayList2, paramString);
    }
    while (true)
    {
      if ((paramString != null) && (paramString.length() > 0))
      {
        ItemData localItemData = new ItemData();
        localItemData.b = paramString;
        localItemData.a = this.a.getResources().getString(R.string.k);
        localArrayList.add(0, localItemData);
      }
      a(paramArrayList1, paramString);
      return localArrayList;
      label117: if (b(paramArrayList1))
      {
        localArrayList.addAll(paramArrayList1);
        b(localArrayList, paramString);
      }
      else if (b(paramArrayList2))
      {
        localArrayList.addAll(paramArrayList2);
        b(localArrayList, paramString);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.data.GenerateData
 * JD-Core Version:    0.6.2
 */