package com.google.zxing.common;

import java.util.Vector;

public final class Collections
{
  public static void insertionSort(Vector paramVector, Comparator paramComparator)
  {
    int i = paramVector.size();
    for (int j = 1; j < i; j++)
    {
      Object localObject1 = paramVector.elementAt(j);
      for (int k = j - 1; k >= 0; k--)
      {
        Object localObject2 = paramVector.elementAt(k);
        if (paramComparator.compare(localObject2, localObject1) <= 0)
          break;
        paramVector.setElementAt(localObject2, k + 1);
      }
      paramVector.setElementAt(localObject1, k + 1);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.Collections
 * JD-Core Version:    0.6.2
 */