package com.alipay.mobile.quinox.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{
  public static List a(BufferedReader paramBufferedReader)
  {
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      String str = paramBufferedReader.readLine();
      if (str == null)
        break;
      if (str.trim().length() > 0)
        localArrayList.add(str.split("\\|"));
    }
    return localArrayList;
  }

  public static void a(BufferedWriter paramBufferedWriter, List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      paramBufferedWriter.write((String)localIterator.next());
      paramBufferedWriter.newLine();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.utils.a
 * JD-Core Version:    0.6.2
 */