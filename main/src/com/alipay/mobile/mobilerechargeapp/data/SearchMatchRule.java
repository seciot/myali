package com.alipay.mobile.mobilerechargeapp.data;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
import java.util.ArrayList;

public class SearchMatchRule
{
  public static DisplayData a(ArrayList paramArrayList, CharSequence paramCharSequence)
  {
    DisplayData localDisplayData = new DisplayData();
    localDisplayData.b = 60;
    String str1 = paramCharSequence.toString().replace(" ", "");
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
    {
      if (str1.length() == 11)
        localDisplayData.b = 40;
      return localDisplayData;
    }
    if ((str1 != null) && (str1.length() > 0))
    {
      if (str1.length() == 11)
      {
        localDisplayData.b = 40;
        int m = paramArrayList.size();
        ArrayList localArrayList2 = localDisplayData.a;
        int n = 0;
        ItemData localItemData2;
        String str3;
        int i1;
        if (n < m)
        {
          localItemData2 = (ItemData)paramArrayList.get(n);
          str3 = localItemData2.b;
          if ((str3 == null) || (str3.length() == 0))
          {
            i1 = 40;
            label137: if (30 != i1)
              break label320;
            localDisplayData.b = 30;
            localArrayList2.clear();
            localArrayList2.add(localItemData2);
          }
        }
        else
        {
          switch (localDisplayData.b)
          {
          default:
          case 20:
          case 30:
          }
        }
        while (true)
        {
          return localDisplayData;
          if ((str1 == null) || (str1.length() == 0))
          {
            i1 = 40;
            break label137;
          }
          if (str3.length() > str1.length());
          int i3;
          for (int i2 = str1.length(); ; i2 = str3.length())
          {
            i3 = 0;
            for (int i4 = 0; i4 < i2; i4++)
              if (str3.charAt(i4) == str1.charAt(i4))
                i3++;
          }
          if ((i3 >= 9) && (i3 != 11))
          {
            i1 = 20;
            break label137;
          }
          if (i3 == 11)
          {
            i1 = 30;
            break label137;
          }
          i1 = 40;
          break label137;
          label320: if (20 == i1)
          {
            localDisplayData.b = 20;
            if (localArrayList2.size() < 3)
              localArrayList2.add(localItemData2);
          }
          n++;
          break;
          localDisplayData.b = 20;
          localDisplayData.a.add(0, new ItemData());
          localDisplayData.a.add(new ItemData());
          localDisplayData.c = str1;
          localDisplayData.d = localDisplayData.a.size();
        }
      }
      new StringBuilder("searchDisplayData prefix = ").append(str1).toString();
      localDisplayData.b = 60;
      int i = paramArrayList.size();
      ArrayList localArrayList1 = localDisplayData.a;
      int j = 0;
      if ((j < i) && (localArrayList1.size() < 3))
      {
        ItemData localItemData1 = (ItemData)paramArrayList.get(j);
        String str2 = localItemData1.b;
        if ((str1.length() > 0) && (str2.startsWith(str1)));
        for (int k = 50; ; k = 60)
        {
          if (50 == k)
          {
            localDisplayData.b = 50;
            localArrayList1.add(localItemData1);
          }
          j++;
          break;
        }
      }
      if (localDisplayData.b == 60)
      {
        localDisplayData.c = "";
        localDisplayData.d = 0;
      }
      return localDisplayData;
    }
    return localDisplayData;
  }

  public static String a(String paramString)
  {
    if (!a(paramString, paramString))
      return paramString;
    return paramString.substring(0, 3) + " " + paramString.substring(3, 7) + " " + paramString.substring(7, 11);
  }

  public static void a(TextView paramTextView, String paramString1, String paramString2)
  {
    if (!a(paramString1, paramString2))
      return;
    String str1 = a(paramString1);
    String str2 = a(paramString2);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str1);
    for (int i = 0; i < str2.length(); i++)
      if (str1.charAt(i) != str2.charAt(i))
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-65536), i, i + 1, 18);
    paramTextView.setText(localSpannableStringBuilder);
  }

  private static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null));
    while ((paramString1.length() != 11) || (paramString2.length() != 11) || (paramString1.length() == 0) || (paramString2.length() == 0))
      return false;
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.data.SearchMatchRule
 * JD-Core Version:    0.6.2
 */