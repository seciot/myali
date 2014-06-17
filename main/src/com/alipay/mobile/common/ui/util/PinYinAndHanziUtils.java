package com.alipay.mobile.common.ui.util;

import com.alipay.mobile.common.utils.ChineseToPy;
import java.util.ArrayList;
import java.util.List;

public class PinYinAndHanziUtils
{
  private static String[][] a(String[][] paramArrayOfString)
  {
    while (true)
    {
      int i = paramArrayOfString.length;
      if (i < 2)
        break;
      int j = paramArrayOfString[0].length;
      int k = paramArrayOfString[1].length;
      String[] arrayOfString = new String[j * k];
      int m = 0;
      int i2;
      for (int n = 0; m < j; n = i2)
      {
        i2 = n;
        int i3 = 0;
        while (i3 < k)
        {
          int i4 = i2 + 1;
          arrayOfString[i2] = (paramArrayOfString[0][m] + "##" + paramArrayOfString[1][i3]);
          i3++;
          i2 = i4;
        }
        m++;
      }
      String[][] arrayOfString; = new String[i - 1][];
      for (int i1 = 2; i1 < i; i1++)
        arrayOfString;[(i1 - 1)] = paramArrayOfString[i1];
      arrayOfString;[0] = arrayOfString;
      paramArrayOfString = arrayOfString;;
    }
    return paramArrayOfString;
  }

  public static List<String[]> convertChinese2Pinyin(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
      return null;
    String[] arrayOfString1 = splitDisplayNameWithHanzi(paramString);
    String[] arrayOfString2 = new String[arrayOfString1.length];
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < arrayOfString1.length)
    {
      if (isHanzi(arrayOfString1[i]))
        arrayOfString2[i] = ChineseToPy.getFullPy(arrayOfString1[i]).toLowerCase();
      while (true)
      {
        i++;
        break;
        arrayOfString2[i] = arrayOfString1[i];
      }
    }
    localArrayList.add(arrayOfString2);
    if ((arrayOfString1.length > 0) && (paramString.matches(".*[\\u4e00-\\u9fa5]+.*")))
      localArrayList.add(arrayOfString1);
    return localArrayList;
  }

  public static boolean isAlphabet(String paramString)
  {
    return paramString.matches("[a-zA-Z]+");
  }

  public static boolean isContainHanzi(String paramString)
  {
    return paramString.matches(".*[\\u4e00-\\u9fa5]+.*");
  }

  public static boolean isHanzi(String paramString)
  {
    return paramString.matches("[\\u4e00-\\u9fa5]");
  }

  public static boolean isHanziAndAlphabet(String paramString)
  {
    return paramString.matches("[\\u4e00-\\u9fa5[a-zA-Z ]]+");
  }

  public static boolean isHanziSting(String paramString)
  {
    if (paramString != null)
      for (int i = 0; i < paramString.length(); i++)
        if (!isHanzi(paramString.substring(i, i + 1)))
          return false;
    return true;
  }

  public static boolean isStartWithAlphabet(String paramString)
  {
    return paramString.matches("[a-zA-Z]+.*");
  }

  public static List<String[]> processResult(String[][] paramArrayOfString)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = a(paramArrayOfString)[0];
    int j = arrayOfString.length;
    while (i < j)
    {
      localArrayList.add(arrayOfString[i].split("##"));
      i++;
    }
    return localArrayList;
  }

  public static String[] splitDisplayNameWithHanzi(String paramString)
  {
    String[] arrayOfString = paramString.replaceAll("([\\u4e00-\\u9fa5 ])", "###$1###").split("#{3}");
    ArrayList localArrayList = new ArrayList();
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = arrayOfString[j];
      if (!"".equals(str))
        localArrayList.add(str);
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.util.PinYinAndHanziUtils
 * JD-Core Version:    0.6.2
 */