package com.alipay.mobileprod.biz.contact.contactuploader;

import java.io.Serializable;

class ContactsUploader$ContactInfo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public String phoneName = "";
  public String phoneNumber = "";

  public boolean equals(Object paramObject)
  {
    ContactInfo localContactInfo;
    if ((paramObject != null) && ((paramObject instanceof ContactInfo)))
    {
      localContactInfo = (ContactInfo)paramObject;
      if ((this.phoneName != null) && (this.phoneNumber != null))
        break label32;
    }
    label32: 
    while ((!this.phoneName.equals(localContactInfo.phoneName)) || (!this.phoneNumber.equals(localContactInfo.phoneNumber)))
      return false;
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploader.ContactInfo
 * JD-Core Version:    0.6.2
 */