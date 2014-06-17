package com.alipay.mobile.commonui.widget;

import android.widget.SectionIndexer;
import java.util.Arrays;

public class APContactSectionIndexer
  implements SectionIndexer
{
  private final String[] a;
  private final int[] b;
  private final int c;

  public APContactSectionIndexer(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if ((paramArrayOfString == null) || (paramArrayOfInt == null))
      throw new NullPointerException();
    if (paramArrayOfString.length != paramArrayOfInt.length)
      throw new IllegalArgumentException("The sections and counts arrays must have the same length");
    this.a = paramArrayOfString;
    this.b = new int[paramArrayOfInt.length];
    int j = 0;
    if (i < paramArrayOfInt.length)
    {
      if (this.a[i] == null)
        this.a[i] = "";
      while (true)
      {
        this.b[i] = j;
        j += paramArrayOfInt[i];
        i++;
        break;
        this.a[i] = this.a[i].trim();
      }
    }
    this.c = j;
  }

  public int getPositionForSection(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.a.length))
      return -1;
    return this.b[paramInt];
  }

  public int getSectionForPosition(int paramInt)
  {
    int i;
    if ((paramInt < 0) || (paramInt >= this.c))
      i = -1;
    do
    {
      return i;
      i = Arrays.binarySearch(this.b, paramInt);
    }
    while (i >= 0);
    return -2 + -i;
  }

  public Object[] getSections()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APContactSectionIndexer
 * JD-Core Version:    0.6.2
 */