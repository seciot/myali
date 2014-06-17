package com.alipay.mobile.common.ui.contacts.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alipay.mobileprod.biz.transfer.vo.ContactUserVO;
import java.util.ArrayList;
import java.util.List;

public class HistoryTransferAccount
  implements Parcelable
{
  public static final Parcelable.Creator<HistoryTransferAccount> CREATOR = new HistoryTransferAccount.1();
  private String a;
  private String b;
  private String c;
  private boolean d = false;
  private List<String[]> e = new ArrayList();
  private String f;
  private String g;

  public HistoryTransferAccount()
  {
  }

  public HistoryTransferAccount(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    paramParcel.readList(this.e, getClass().getClassLoader());
    this.d = Boolean.parseBoolean(paramParcel.readString());
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
  }

  public HistoryTransferAccount(ContactUserVO paramContactUserVO)
  {
    this.a = paramContactUserVO.getName();
    this.b = paramContactUserVO.getAccount();
    this.c = paramContactUserVO.getNickName();
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null)
      return false;
    HistoryTransferAccount localHistoryTransferAccount = (HistoryTransferAccount)paramObject;
    if (this.a.equals(localHistoryTransferAccount.a))
      return this.b.equals(localHistoryTransferAccount.b);
    return super.equals(paramObject);
  }

  public String getDisplayName()
  {
    return this.a;
  }

  public String getHideName()
  {
    return this.c;
  }

  public boolean getIsNumberMatch()
  {
    return this.d;
  }

  public String getMatchedNum()
  {
    return this.f;
  }

  public List<String[]> getMatchedPinYin()
  {
    return this.e;
  }

  public String getRealAccount()
  {
    return this.b;
  }

  public String getTransferType()
  {
    return this.g;
  }

  public int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.a == null)
    {
      i = 0;
      j = 31 * (i + 31);
      String str = this.b;
      k = 0;
      if (str != null)
        break label45;
    }
    while (true)
    {
      return j + k;
      i = this.a.hashCode();
      break;
      label45: k = this.b.hashCode();
    }
  }

  public void setDisplayName(String paramString)
  {
    this.a = paramString;
  }

  public void setHideName(String paramString)
  {
    this.c = paramString;
  }

  public void setMatchedNum(String paramString)
  {
    this.f = paramString;
  }

  public void setMatchedPinYin(List<String[]> paramList)
  {
    this.e = paramList;
  }

  public void setNumberMatch(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public void setRealAccount(String paramString)
  {
    this.b = paramString;
  }

  public void setTransferType(String paramString)
  {
    this.g = paramString;
  }

  public String toString()
  {
    return this.a + this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeList(this.e);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.model.HistoryTransferAccount
 * JD-Core Version:    0.6.2
 */