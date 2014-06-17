package com.alipay.mobile.common.ui.contacts.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alipay.mobile.common.ui.contacts.util.PinyinHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ContactPerson
  implements Parcelable
{
  public static final Parcelable.Creator<ContactPerson> CREATOR = new ContactPerson.1();
  private HashMap<Integer, List<ContactPerson.MatchInfo>> a = new HashMap();
  public String displayName = "";
  public String enabledStatus;
  public boolean isAppUser;
  public boolean isBindInfo = false;
  public boolean isNumberMatch = false;
  public boolean isSearch;
  public int matchedEndIndex = -1;
  public int matchedEndIndex4Phone = -1;
  public String matchedNum;
  public List<String[]> matchedPinYin = new ArrayList();
  public int matchedStartIndex = -1;
  public int matchedStartIndex4Phone = -1;
  public String matchedWord = "";
  public String mobileNumber;
  public String name;
  public String phoneNum;
  public List<String> phoneNumber = new ArrayList();
  public String searchedWord;
  public String sortKey;

  public ContactPerson()
  {
  }

  public ContactPerson(Parcel paramParcel)
  {
    this.displayName = paramParcel.readString();
    paramParcel.readList(this.phoneNumber, getClass().getClassLoader());
    paramParcel.readList(this.matchedPinYin, getClass().getClassLoader());
    this.isNumberMatch = Boolean.parseBoolean(paramParcel.readString());
    this.isBindInfo = Boolean.parseBoolean(paramParcel.readString());
    this.enabledStatus = paramParcel.readString();
    this.matchedNum = paramParcel.readString();
    this.sortKey = paramParcel.readString();
    this.mobileNumber = paramParcel.readString();
  }

  private List<ContactPerson.SearchChain> a(ContactPerson.SearchChain paramSearchChain, int paramInt)
  {
    ContactPerson.MatchInfo localMatchInfo = paramSearchChain.matchInfo;
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString;
    if (localMatchInfo.wordPos < -1 + this.displayName.length())
    {
      arrayOfString = (String[])this.matchedPinYin.get(1 + localMatchInfo.wordPos);
      if (arrayOfString.length != 0)
        if ((paramInt < 19968) || (paramInt > 40891))
          break label179;
    }
    label179: for (int i = 1; i != 0; i = 0)
    {
      if (this.displayName.toUpperCase().charAt(1 + localMatchInfo.wordPos) != paramInt)
        break label309;
      ContactPerson.SearchChain localSearchChain1 = new ContactPerson.SearchChain(this, null);
      localSearchChain1.priority = (1 + localMatchInfo.wordPos);
      localSearchChain1.matchInfo = new ContactPerson.MatchInfo(this, 1 + localMatchInfo.wordPos, -1, 0);
      localSearchChain1.farthers = new ArrayList();
      localSearchChain1.farthers.add(paramSearchChain);
      localArrayList.add(localSearchChain1);
      return localArrayList;
      return null;
    }
    for (int j = 0; j < arrayOfString.length; j++)
      if (arrayOfString[j].toUpperCase().charAt(0) == paramInt)
      {
        ContactPerson.SearchChain localSearchChain2 = new ContactPerson.SearchChain(this, null);
        localSearchChain2.priority = (1 + localMatchInfo.wordPos);
        localSearchChain2.matchInfo = new ContactPerson.MatchInfo(this, 1 + localMatchInfo.wordPos, j, 0);
        localSearchChain2.farthers = new ArrayList();
        localSearchChain2.farthers.add(paramSearchChain);
        localArrayList.add(localSearchChain2);
      }
    if (localArrayList.size() > 0)
      return localArrayList;
    label309: return null;
  }

  private List<ContactPerson.SearchChain> a(List<ContactPerson.SearchChain> paramList, String paramString)
  {
    int i = 1;
    while (i < paramString.length())
    {
      int j = paramString.charAt(i);
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator = paramList.iterator();
      label289: 
      while (localIterator.hasNext())
      {
        ContactPerson.SearchChain localSearchChain1 = (ContactPerson.SearchChain)localIterator.next();
        List localList = a(localSearchChain1, j);
        if (localList != null)
          localArrayList1.addAll(localList);
        ContactPerson.MatchInfo localMatchInfo = localSearchChain1.matchInfo;
        ArrayList localArrayList2 = new ArrayList();
        if (localMatchInfo.pinyinPos >= 0)
        {
          String str = ((String[])this.matchedPinYin.get(localMatchInfo.wordPos))[localMatchInfo.pinyinPos];
          if ((localMatchInfo.char4PinyinPos < -1 + str.length()) && (str.toUpperCase().charAt(1 + localMatchInfo.char4PinyinPos) == j))
          {
            ContactPerson.SearchChain localSearchChain2 = new ContactPerson.SearchChain(this, null);
            localSearchChain2.priority = (1 + localMatchInfo.wordPos);
            localSearchChain2.matchInfo = new ContactPerson.MatchInfo(this, localMatchInfo.wordPos, localMatchInfo.pinyinPos, 1 + localMatchInfo.char4PinyinPos);
            localSearchChain2.farthers = new ArrayList();
            localSearchChain2.farthers.add(localSearchChain1);
            localArrayList2.add(localSearchChain2);
          }
          if (localArrayList2.size() <= 0);
        }
        for (ArrayList localArrayList3 = localArrayList2; ; localArrayList3 = null)
        {
          if (localArrayList3 == null)
            break label289;
          localArrayList1.addAll(localArrayList3);
          break;
        }
      }
      if (localArrayList1.size() == 0)
        return null;
      i++;
      paramList = localArrayList1;
    }
    a(paramList);
    return paramList;
  }

  private void a(int paramInt, ContactPerson.MatchInfo paramMatchInfo)
  {
    List localList = (List)this.a.get(Integer.valueOf(paramInt));
    if (localList == null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramMatchInfo);
      this.a.put(Integer.valueOf(paramInt), localArrayList);
      return;
    }
    localList.add(paramMatchInfo);
  }

  private void a(List<ContactPerson.SearchChain> paramList)
  {
    ContactPerson.SearchChain localSearchChain = (ContactPerson.SearchChain)paramList.get(0);
    List localList = localSearchChain.farthers;
    this.matchedEndIndex = (1 + localSearchChain.matchInfo.wordPos);
    this.matchedStartIndex = localSearchChain.matchInfo.wordPos;
    while (localList != null)
    {
      this.matchedStartIndex = ((ContactPerson.SearchChain)localList.get(0)).matchInfo.wordPos;
      localList = ((ContactPerson.SearchChain)localList.get(0)).farthers;
    }
    this.matchedWord = this.displayName.substring(this.matchedStartIndex, this.matchedEndIndex);
  }

  private void a(String[] paramArrayOfString)
  {
    this.matchedPinYin.add(paramArrayOfString);
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null)
      return false;
    ContactPerson localContactPerson = (ContactPerson)paramObject;
    if (this.displayName.equals(localContactPerson.displayName))
    {
      Iterator localIterator = localContactPerson.phoneNumber.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!this.phoneNumber.contains(str))
          return false;
      }
      return true;
    }
    return super.equals(paramObject);
  }

  public Set<Integer> getFirstChars()
  {
    return this.a.keySet();
  }

  public int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.displayName == null)
    {
      i = 0;
      j = 31 * (i + 31);
      List localList = this.phoneNumber;
      k = 0;
      if (localList != null)
        break label45;
    }
    while (true)
    {
      return j + k;
      i = this.displayName.hashCode();
      break;
      label45: k = this.phoneNumber.hashCode();
    }
  }

  public void initSearchInfo()
  {
    this.a.clear();
    int i = 0;
    if (i < this.displayName.length())
    {
      char c = this.displayName.toUpperCase().charAt(i);
      String[] arrayOfString = PinyinHelper.toHanyuPinyinStringArray(c);
      if (arrayOfString == null)
      {
        a(new String[0]);
        a(c, new ContactPerson.MatchInfo(this, i, -1, 0));
      }
      while (true)
      {
        i++;
        break;
        a(arrayOfString);
        a(c, new ContactPerson.MatchInfo(this, i, -1, 0));
        for (int j = 0; j < arrayOfString.length; j++)
          a(arrayOfString[j].toUpperCase().charAt(0), new ContactPerson.MatchInfo(this, i, j, 0));
      }
    }
  }

  public boolean isNameMatch(String paramString)
  {
    String str = paramString.toUpperCase();
    int i = str.charAt(0);
    List localList = (List)this.a.get(Integer.valueOf(i));
    if (localList == null)
      return false;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      ContactPerson.MatchInfo localMatchInfo = (ContactPerson.MatchInfo)localIterator.next();
      ContactPerson.SearchChain localSearchChain = new ContactPerson.SearchChain(this, null);
      localSearchChain.matchInfo = localMatchInfo;
      localSearchChain.farthers = null;
      localSearchChain.isFirstChar = Boolean.valueOf(true);
      localArrayList.add(localSearchChain);
    }
    return a(localArrayList, str) != null;
  }

  public boolean isPhoneNumberMatch(String paramString)
  {
    int i = this.mobileNumber.indexOf(paramString, 0);
    if (i >= 0)
    {
      this.isNumberMatch = true;
      this.matchedStartIndex4Phone = i;
      this.matchedEndIndex4Phone = (i + paramString.length());
      this.isSearch = true;
      this.isNumberMatch = true;
      return true;
    }
    this.isNumberMatch = false;
    return false;
  }

  public String toString()
  {
    return this.displayName + this.phoneNumber;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.displayName);
    paramParcel.writeList(this.phoneNumber);
    paramParcel.writeList(this.matchedPinYin);
    paramParcel.writeString(this.isNumberMatch);
    paramParcel.writeString(this.isBindInfo);
    paramParcel.writeString(this.enabledStatus);
    paramParcel.writeString(this.matchedNum);
    paramParcel.writeString(this.sortKey);
    paramParcel.writeString(this.mobileNumber);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.model.ContactPerson
 * JD-Core Version:    0.6.2
 */