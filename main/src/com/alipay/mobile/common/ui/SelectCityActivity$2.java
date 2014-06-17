package com.alipay.mobile.common.ui;

import java.util.Comparator;

class SelectCityActivity$2
  implements Comparator<String>
{
  SelectCityActivity$2(SelectCityActivity paramSelectCityActivity)
  {
  }

  public int compare(String paramString1, String paramString2)
  {
    if (paramString1.equals("热门"))
      return -1;
    if (paramString2.equals("热门"))
      return 1;
    return paramString1.compareTo(paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.SelectCityActivity.2
 * JD-Core Version:    0.6.2
 */