package com.alipay.mobile.common.ui.contacts.util;

import java.util.ArrayList;
import java.util.List;

public class PinYinMatcher
{
  public static List<String[]> getMatchedHanZi(String paramString, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramString.length();
    int j = 0;
    Object localObject1 = paramString;
    if (j < paramArrayOfString.length)
    {
      String str = paramArrayOfString[j];
      char[] arrayOfChar1 = ((String)localObject1).toCharArray();
      char[] arrayOfChar2 = str.toLowerCase().toCharArray();
      int k = 0;
      localObject2 = localObject1;
      while ((k < arrayOfChar2.length) && (((String)localObject2).length() > 0) && (arrayOfChar2[k] == arrayOfChar1[k]))
      {
        localObject2 = ((String)localObject2).substring(1);
        k++;
      }
      if (((String)localObject2).length() < ((String)localObject1).length())
      {
        String[] arrayOfString = new String[2];
        arrayOfString[0] = String.valueOf(j);
        arrayOfString[1] = ((String)localObject1).substring(0, ((String)localObject1).length() - ((String)localObject2).length());
        localArrayList.add(arrayOfString);
        localObject1 = localObject2;
      }
      while (true)
      {
        j++;
        break;
        if ((((String)localObject2).length() > 0) && (((String)localObject2).length() != i))
        {
          j--;
          localArrayList.clear();
          localObject1 = paramString;
        }
        else
        {
          if (((String)localObject2).length() != i)
            break label219;
          localObject1 = localObject2;
        }
      }
    }
    Object localObject2 = localObject1;
    label219: if (((String)localObject2).length() > 0)
      localArrayList.clear();
    return localArrayList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.PinYinMatcher
 * JD-Core Version:    0.6.2
 */