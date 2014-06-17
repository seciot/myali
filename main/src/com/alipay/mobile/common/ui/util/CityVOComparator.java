package com.alipay.mobile.common.ui.util;

import com.alipay.mobile.common.utils.ChineseToPy;
import com.alipay.mobileprod.core.model.puc.vo.CityVO;
import java.util.Comparator;

public class CityVOComparator
  implements Comparator<CityVO>
{
  private static String a(String[] paramArrayOfString)
  {
    String str1 = "~";
    String str2;
    if (paramArrayOfString.length > 0)
    {
      str2 = paramArrayOfString[0].toLowerCase();
      if (PinYinAndHanziUtils.isHanzi(str2))
        str1 = ChineseToPy.getFullPy(str2);
    }
    else
    {
      return str1;
    }
    if (PinYinAndHanziUtils.isStartWithAlphabet(str2))
      return str2.substring(0, 1);
    return "~";
  }

  public int compare(CityVO paramCityVO1, CityVO paramCityVO2)
  {
    String str1 = paramCityVO1.city;
    String str2 = paramCityVO2.city;
    String[] arrayOfString1 = PinYinAndHanziUtils.splitDisplayNameWithHanzi(str1);
    String[] arrayOfString2 = PinYinAndHanziUtils.splitDisplayNameWithHanzi(str2);
    return a(arrayOfString1).compareTo(a(arrayOfString2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.util.CityVOComparator
 * JD-Core Version:    0.6.2
 */