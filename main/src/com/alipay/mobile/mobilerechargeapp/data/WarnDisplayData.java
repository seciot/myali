package com.alipay.mobile.mobilerechargeapp.data;

import android.content.Context;
import android.content.res.Resources;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignQueryRes;
import com.alipay.mobileprod.biz.recharge.vo.AlertSignVO;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WarnDisplayData
  implements Serializable
{
  public static final int MAX_LIST_SIZE = 0;
  private static final long serialVersionUID = 986532L;
  private boolean isBindName = false;
  public boolean mAddSwitch = false;
  public AlertSignQueryRes mAlertSignQueryRes;
  private String mBindNum = "";
  private Context mComtext;
  private ArrayList mContactList = null;
  public ArrayList mDataList = new ArrayList();
  private boolean mDisPlayAddSwitch = false;
  private int mMaxListSize = 0;

  public WarnDisplayData(AlertSignQueryRes paramAlertSignQueryRes, Context paramContext, String paramString)
  {
    this.mAlertSignQueryRes = paramAlertSignQueryRes;
    if (paramAlertSignQueryRes != null)
    {
      this.mAddSwitch = paramAlertSignQueryRes.addSwitch;
      this.mMaxListSize = paramAlertSignQueryRes.maxListSize;
    }
    this.mComtext = paramContext;
    if (this.mMaxListSize <= 0)
      this.mMaxListSize = 0;
    this.mBindNum = paramString;
  }

  private ArrayList addListData(String paramString)
  {
    if ((this.mAlertSignQueryRes == null) || (this.mAlertSignQueryRes.alertSignList == null) || (this.mAlertSignQueryRes.alertSignList.size() == 0))
      return null;
    ArrayList localArrayList = new ArrayList();
    List localList = this.mAlertSignQueryRes.alertSignList;
    int i = 0;
    int j = 0;
    if ((i < localList.size()) && (localArrayList.size() < this.mMaxListSize))
    {
      ItemData localItemData = new ItemData();
      localItemData.b = ((AlertSignVO)localList.get(i)).mobileNo;
      new StringBuilder("temp.phoneNum = ").append(localItemData.b).toString();
      if (paramString.equals(localItemData.b));
      for (int k = 1; ; k = j)
      {
        i++;
        j = k;
        break;
        localItemData.d = ((AlertSignVO)localList.get(i)).signStatus;
        localItemData.a = getName(localItemData.b, "");
        localItemData.e = ((AlertSignVO)localList.get(i)).valid;
        localItemData.f = false;
        localArrayList.add(localItemData);
      }
    }
    if ((j != 0) && (localArrayList.size() == this.mMaxListSize))
      localArrayList.remove(-1 + localArrayList.size());
    return localArrayList;
  }

  private ItemData addSelfData()
  {
    if ((this.mAlertSignQueryRes == null) || (this.mAlertSignQueryRes.bindingMobileAlertSign == null))
      return null;
    AlertSignVO localAlertSignVO = this.mAlertSignQueryRes.bindingMobileAlertSign;
    String str = this.mComtext.getResources().getString(R.string.u);
    ItemData localItemData = new ItemData();
    localItemData.b = localAlertSignVO.mobileNo;
    if ((this.mBindNum != null) && (this.mBindNum.length() > 0))
      if (this.mBindNum.equals(localAlertSignVO.mobileNo))
        break label117;
    label117: for (localItemData.a = ""; ; localItemData.a = str)
    {
      localItemData.d = localAlertSignVO.signStatus;
      localItemData.e = localAlertSignVO.valid;
      localItemData.f = true;
      return localItemData;
    }
  }

  private ItemData addSwitch()
  {
    this.mDisPlayAddSwitch = false;
    if ((this.mAlertSignQueryRes == null) || (!this.mAlertSignQueryRes.addSwitch));
    while ((this.mAlertSignQueryRes.alertSignList != null) && (this.mAlertSignQueryRes.alertSignList.size() >= this.mMaxListSize))
      return null;
    this.mDisPlayAddSwitch = true;
    ItemData localItemData = new ItemData();
    localItemData.g = true;
    localItemData.f = false;
    return localItemData;
  }

  private String getName(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0));
    String str;
    ItemData localItemData;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        do
          return paramString2;
        while ((this.mContactList == null) || (this.mContactList.size() == 0));
        paramString2 = this.mComtext.getResources().getString(R.string.g);
        str = this.mComtext.getResources().getString(R.string.u);
        localIterator = this.mContactList.iterator();
      }
      localItemData = (ItemData)localIterator.next();
    }
    while (localItemData.b.indexOf(paramString1) < 0);
    if (str.equals(localItemData.a))
    {
      this.isBindName = true;
      return "";
    }
    return localItemData.a;
  }

  private void setDataNewF()
  {
    if (this.mDataList.size() > 0)
    {
      if ((this.isBindName) && (((ItemData)this.mDataList.get(0)).f))
        ((ItemData)this.mDataList.get(0)).a = "";
      ((ItemData)this.mDataList.get(-1 + this.mDataList.size())).h = true;
    }
  }

  public boolean getAddSwitch()
  {
    return this.mAddSwitch;
  }

  public ArrayList getDisplayData()
  {
    startGenerateData();
    return this.mDataList;
  }

  public int getMaxListSize()
  {
    return this.mMaxListSize;
  }

  public int getSignQueryResListSize()
  {
    if ((this.mAlertSignQueryRes != null) && (this.mAlertSignQueryRes.alertSignList != null) && (this.mAlertSignQueryRes.alertSignList.size() > 0))
      return this.mAlertSignQueryRes.alertSignList.size();
    return 0;
  }

  public boolean isDisplayAddSwitch()
  {
    return this.mDisPlayAddSwitch;
  }

  public void setContactList(ArrayList paramArrayList)
  {
    this.mContactList = paramArrayList;
  }

  public void startGenerateData()
  {
    if (this.mAlertSignQueryRes == null);
    ItemData localItemData2;
    do
    {
      return;
      this.isBindName = false;
      String str = "";
      ItemData localItemData1 = addSelfData();
      if (localItemData1 != null)
      {
        str = localItemData1.b;
        this.mDataList.add(0, localItemData1);
      }
      ArrayList localArrayList = addListData(str);
      if (localArrayList != null)
        this.mDataList.addAll(localArrayList);
      setDataNewF();
      localItemData2 = addSwitch();
    }
    while (localItemData2 == null);
    this.mDataList.add(localItemData2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.data.WarnDisplayData
 * JD-Core Version:    0.6.2
 */