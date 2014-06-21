package com.ut.device;

import java.util.Random;

public class e
{
  private static Random ac = new Random();
  private String ab = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";

  public static String n()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < 24; i++)
      localStringBuffer.append((char)(65 + ac.nextInt(25)));
    return localStringBuffer.toString();
  }

  public String g(byte[] paramArrayOfByte)
  {
    String str = com.ut.a.a.a.a.a.getBundle(paramArrayOfByte);
    return com.ut.c.a.b(this.ab, str);
  }

  public String x(String paramString)
  {
    String str = com.ut.c.a.c(this.ab, paramString);
    if (str != null)
      return str;
    return n();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.e
 * JD-Core Version:    0.6.2
 */