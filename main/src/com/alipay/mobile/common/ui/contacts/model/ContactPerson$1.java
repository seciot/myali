package com.alipay.mobile.common.ui.contacts.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ContactPerson$1
  implements Parcelable.Creator<ContactPerson>
{
  public final ContactPerson createFromParcel(Parcel paramParcel)
  {
    return new ContactPerson(paramParcel);
  }

  public final ContactPerson[] newArray(int paramInt)
  {
    return new ContactPerson[paramInt];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.model.ContactPerson.1
 * JD-Core Version:    0.6.2
 */