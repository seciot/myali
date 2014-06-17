package com.alipay.mobile.framework.service.ext.openplatform;

import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ModelChecker
{
  private static List<String> bannedModelList;

  public static boolean canAddShortCut()
  {
    return !contains(Build.MODEL);
  }

  private static boolean contains(String paramString)
  {
    if (paramString == null)
      return false;
    Iterator localIterator = getBannedModelList().iterator();
    while (localIterator.hasNext())
      if (((String)localIterator.next()).equals(paramString))
        return true;
    return false;
  }

  private static List<String> getBannedModelList()
  {
    if (bannedModelList == null)
      bannedModelList = new ArrayList();
    bannedModelList.clear();
    bannedModelList.add("vivo S11t");
    bannedModelList.add("U701T");
    return bannedModelList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.ModelChecker
 * JD-Core Version:    0.6.2
 */