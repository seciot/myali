package com.alipay.mobile.common.ui.cityselect.util;

import android.text.TextUtils;
import com.alipay.mobile.common.ui.cityselect.model.CityVO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Cityfilter
{
  public static List<CityVO> getMatchedContact(String paramString, List<CityVO> paramList)
  {
    if (paramList == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isDigitsOnly(paramString))
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        CityVO localCityVO = (CityVO)localIterator.next();
        String str1 = localCityVO.pinyin;
        String str2 = localCityVO.city;
        if (PinYinAndHanziUtils.isHanziSting(paramString))
        {
          if (str2.startsWith(paramString))
            localArrayList.add(localCityVO);
        }
        else if ((PinYinAndHanziUtils.isAlphabet(paramString)) && (str1 != null) && (str1.startsWith(paramString.toLowerCase())))
          localArrayList.add(localCityVO);
      }
    }
    return localArrayList;
  }

  public static boolean isHanzi(String paramString)
  {
    return paramString.matches("[\\u4e00-\\u9fa5]");
  }

  public void resetTransferToAccount(List<String> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        localIterator.next();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.cityselect.util.Cityfilter
 * JD-Core Version:    0.6.2
 */