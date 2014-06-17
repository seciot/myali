package com.alipay.mobile.common.ui.contacts.model;

import android.text.TextUtils;
import com.alipay.mobile.common.ui.contacts.util.PinYinAndHanziUtils;
import com.alipay.mobile.common.ui.contacts.util.PinYinMatcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TransferToAccountDAO
{
  public static boolean isHanzi(String paramString)
  {
    return paramString.matches("[\\u4e00-\\u9fa5]");
  }

  public List<HistoryTransferAccount> getMatchedContact(String paramString, List<HistoryTransferAccount> paramList)
  {
    if (paramList == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isDigitsOnly(paramString))
    {
      Iterator localIterator2 = paramList.iterator();
      label139: 
      while (localIterator2.hasNext())
      {
        HistoryTransferAccount localHistoryTransferAccount2 = (HistoryTransferAccount)localIterator2.next();
        List localList1 = PinYinAndHanziUtils.convertChinese2Pinyin(localHistoryTransferAccount2.getDisplayName());
        for (int i = 0; ; i++)
        {
          if ((localList1 == null) || (i >= localList1.size()))
            break label139;
          String[] arrayOfString = (String[])localList1.get(i);
          List localList2 = PinYinMatcher.getMatchedHanZi(paramString.toLowerCase(), arrayOfString);
          if (localList2.size() > 0)
          {
            localHistoryTransferAccount2.setMatchedPinYin(localList2);
            localArrayList.add(localHistoryTransferAccount2);
            break;
          }
        }
      }
    }
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      HistoryTransferAccount localHistoryTransferAccount1 = (HistoryTransferAccount)localIterator1.next();
      if (localHistoryTransferAccount1.getRealAccount().contains(paramString))
      {
        localHistoryTransferAccount1.setNumberMatch(true);
        localHistoryTransferAccount1.setMatchedNum(paramString);
        if (localArrayList.indexOf(localHistoryTransferAccount1) == -1)
          localArrayList.add(localHistoryTransferAccount1);
      }
    }
    return localArrayList;
  }

  public void resetTransferToAccount(List<HistoryTransferAccount> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        HistoryTransferAccount localHistoryTransferAccount = (HistoryTransferAccount)localIterator.next();
        localHistoryTransferAccount.setMatchedPinYin(null);
        localHistoryTransferAccount.setMatchedNum(null);
        localHistoryTransferAccount.setNumberMatch(false);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.model.TransferToAccountDAO
 * JD-Core Version:    0.6.2
 */