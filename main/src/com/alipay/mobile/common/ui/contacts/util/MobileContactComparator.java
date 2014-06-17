package com.alipay.mobile.common.ui.contacts.util;

import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.common.utils.ChineseToPy;
import java.util.Comparator;

public class MobileContactComparator
  implements Comparator<ContactPerson>
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

  public int compare(ContactPerson paramContactPerson1, ContactPerson paramContactPerson2)
  {
    String[] arrayOfString1 = PinYinAndHanziUtils.splitDisplayNameWithHanzi(paramContactPerson1.displayName);
    String[] arrayOfString2 = PinYinAndHanziUtils.splitDisplayNameWithHanzi(paramContactPerson2.displayName);
    return a(arrayOfString1).compareTo(a(arrayOfString2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.MobileContactComparator
 * JD-Core Version:    0.6.2
 */