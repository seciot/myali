package com.alipay.mobile.mobilerechargeapp.history;

import android.text.format.DateFormat;
import java.util.Date;

public class RechargeHistoryInfo
  implements Comparable
{
  private String A;
  private String B;
  private String C;
  private String D;
  private Date E;

  public RechargeHistoryInfo()
  {
  }

  public RechargeHistoryInfo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.A = paramString1;
    this.B = paramString2;
    this.C = paramString3;
    this.D = paramString4;
    this.E = new Date();
  }

  public int compareTo(RechargeHistoryInfo paramRechargeHistoryInfo)
  {
    if (paramRechargeHistoryInfo == null);
    do
    {
      return -1;
      if (this.E.equals(paramRechargeHistoryInfo.E))
        return 0;
    }
    while (this.E.before(paramRechargeHistoryInfo.E));
    return 1;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof RechargeHistoryInfo))
      return false;
    RechargeHistoryInfo localRechargeHistoryInfo = (RechargeHistoryInfo)paramObject;
    return this.A.equals(localRechargeHistoryInfo.A);
  }

  public String getA()
  {
    return this.A;
  }

  public String getB()
  {
    return this.B;
  }

  public String getC()
  {
    return this.C;
  }

  public String getD()
  {
    return this.D;
  }

  public Date getE()
  {
    return this.E;
  }

  public String getPhoneNumberWithName()
  {
    return this.A + "(" + this.B + ")";
  }

  public void setA(String paramString)
  {
    this.A = paramString;
  }

  public void setB(String paramString)
  {
    this.B = paramString;
  }

  public void setC(String paramString)
  {
    this.C = paramString;
  }

  public void setD(String paramString)
  {
    this.D = paramString;
  }

  public void setE(Date paramDate)
  {
    this.E = paramDate;
  }

  public String toString()
  {
    return "phoneNumber:" + this.A + ",rechargeName:" + this.B + ",location:" + this.C + ",facePrice:" + this.D + ",rechargeDate:" + DateFormat.format("yyyy-MM-dd hh:mm:ss", this.E);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryInfo
 * JD-Core Version:    0.6.2
 */