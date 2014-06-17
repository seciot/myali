package com.alipay.mobile.common.ui.contacts.util;

import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import java.util.Comparator;

class ContractSearch$ComparatorMatchedContact
  implements Comparator<ContactPerson>
{
  public int compare(ContactPerson paramContactPerson1, ContactPerson paramContactPerson2)
  {
    if (paramContactPerson1.displayName.length() - paramContactPerson1.matchedWord.length() < paramContactPerson2.displayName.length() - paramContactPerson2.matchedWord.length())
      return -1;
    return 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.ContractSearch.ComparatorMatchedContact
 * JD-Core Version:    0.6.2
 */