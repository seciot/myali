package com.alipay.mobile.common.ui.contacts.util;

import com.alipay.mobile.common.ui.contacts.model.HistoryTransferAccount;
import com.alipay.mobile.common.utils.ChineseToPy;
import java.util.Comparator;

public class AccountContactComparator
  implements Comparator<HistoryTransferAccount>
{
  public int compare(HistoryTransferAccount paramHistoryTransferAccount1, HistoryTransferAccount paramHistoryTransferAccount2)
  {
    String[] arrayOfString1 = PinYinAndHanziUtils.splitDisplayNameWithHanzi(paramHistoryTransferAccount1.getDisplayName());
    String[] arrayOfString2 = PinYinAndHanziUtils.splitDisplayNameWithHanzi(paramHistoryTransferAccount2.getDisplayName());
    return getFirstHanzi(arrayOfString1).compareTo(getFirstHanzi(arrayOfString2));
  }

  protected String getFirstHanzi(String[] paramArrayOfString)
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
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.AccountContactComparator
 * JD-Core Version:    0.6.2
 */