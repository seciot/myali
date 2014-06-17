package com.alipay.mobile.commonui.inputfomatter;

import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import java.util.ArrayList;

public class APSplitTextFormatter
  implements APFormatter
{
  private ArrayList a = new ArrayList();
  private InputFilter[] b;

  public APSplitTextFormatter(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      for (String str : paramString.split(","))
        this.a.add(Integer.valueOf(Integer.parseInt(str)));
  }

  public void format(Editable paramEditable)
  {
    if (this.a.size() == 0)
      return;
    int i = Selection.getSelectionStart(paramEditable);
    String str1 = paramEditable.toString();
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < str1.length(); j++)
      localArrayList.add(Character.valueOf(str1.charAt(j)));
    int k = i;
    int m = 0;
    if (m < localArrayList.size())
      if (this.a.contains(Integer.valueOf(m)))
      {
        if (((Character)localArrayList.get(m)).charValue() == ' ')
          break label341;
        localArrayList.add(m, Character.valueOf(' '));
        if (m >= k)
          break label341;
      }
    label341: for (int i1 = k + 1; ; i1 = k)
    {
      m++;
      k = i1;
      break;
      while ((localArrayList.size() > m) && (((Character)localArrayList.get(m)).charValue() == ' '))
      {
        localArrayList.remove(m);
        if (m < k)
        {
          k--;
          continue;
          StringBuilder localStringBuilder = new StringBuilder(localArrayList.size());
          for (int n = 0; n < localArrayList.size(); n++)
            localStringBuilder.append(localArrayList.get(n));
          String str2 = localStringBuilder.toString();
          if (!str2.equals(str1))
          {
            if (this.b != null)
              paramEditable.setFilters(this.b);
            paramEditable.replace(0, paramEditable.toString().length(), str2, 0, str2.length());
          }
          while ((k > paramEditable.length()) || ((k > 0) && (str2.charAt(k - 1) == ' ')))
            k--;
          Selection.setSelection(paramEditable, k);
          return;
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter
 * JD-Core Version:    0.6.2
 */