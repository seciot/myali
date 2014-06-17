package com.alipay.mobile.common.ui.contacts.util;

public class MatchedContact
{
  public boolean isBind;
  public boolean isNumberMatch;
  public int matchedEndIndex = 0;
  public int matchedStartIndex = 0;
  public String matchedWord = "";
  public String name;
  public String phoneNum;
  public String searchedWord;

  public void setMatchedIndex(int paramInt)
  {
    if ((this.matchedStartIndex == 0) && (this.matchedEndIndex == 0))
      this.matchedStartIndex = paramInt;
    while (this.matchedEndIndex >= paramInt)
      return;
    this.matchedEndIndex = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.MatchedContact
 * JD-Core Version:    0.6.2
 */