package com.alibaba.fastjson.parser;

public final class CharTypes
{
  public static final char[] ASCII_CHARS = { 48, 48, 48, 49, 48, 50, 48, 51, 48, 52, 48, 53, 48, 54, 48, 55, 48, 56, 48, 57, 48, 65, 48, 66, 48, 67, 48, 68, 48, 69, 48, 70, 49, 48, 49, 49, 49, 50, 49, 51, 49, 52, 49, 53, 49, 54, 49, 55, 49, 56, 49, 57, 49, 65, 49, 66, 49, 67, 49, 68, 49, 69, 49, 70, 50, 48, 50, 49, 50, 50, 50, 51, 50, 52, 50, 53, 50, 54, 50, 55, 50, 56, 50, 57, 50, 65, 50, 66, 50, 67, 50, 68, 50, 69, 50, 70 };
  public static final char[] digits = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  public static final boolean[] firstIdentifierFlags = new boolean[256];
  public static final boolean[] identifierFlags;
  public static final char[] replaceChars;
  public static final boolean[] specicalFlags_doubleQuotes;
  public static final boolean[] specicalFlags_singleQuotes;

  static
  {
    int i = 0;
    if (i < firstIdentifierFlags.length)
    {
      if ((i >= 65) && (i <= 90))
        firstIdentifierFlags[i] = true;
      while (true)
      {
        i = (char)(i + 1);
        break;
        if ((i >= 97) && (i <= 122))
          firstIdentifierFlags[i] = true;
        else if (i == 95)
          firstIdentifierFlags[i] = true;
      }
    }
    identifierFlags = new boolean[256];
    int j = 0;
    if (j < identifierFlags.length)
    {
      if ((j >= 65) && (j <= 90))
        identifierFlags[j] = true;
      while (true)
      {
        j = (char)(j + 1);
        break;
        if ((j >= 97) && (j <= 122))
          identifierFlags[j] = true;
        else if (j == 95)
          identifierFlags[j] = true;
        else if ((j >= 48) && (j <= 57))
          identifierFlags[j] = true;
      }
    }
    specicalFlags_doubleQuotes = new boolean[''];
    specicalFlags_singleQuotes = new boolean[''];
    replaceChars = new char[''];
    specicalFlags_doubleQuotes[8] = true;
    specicalFlags_doubleQuotes[10] = true;
    specicalFlags_doubleQuotes[12] = true;
    specicalFlags_doubleQuotes[13] = true;
    specicalFlags_doubleQuotes[34] = true;
    specicalFlags_doubleQuotes[92] = true;
    specicalFlags_doubleQuotes[11] = true;
    specicalFlags_singleQuotes[8] = true;
    specicalFlags_singleQuotes[10] = true;
    specicalFlags_singleQuotes[12] = true;
    specicalFlags_singleQuotes[13] = true;
    specicalFlags_singleQuotes[39] = true;
    specicalFlags_singleQuotes[92] = true;
    specicalFlags_singleQuotes[11] = true;
    replaceChars[8] = 'b';
    replaceChars[10] = 'n';
    replaceChars[12] = 'f';
    replaceChars[13] = 'r';
    replaceChars[34] = '"';
    replaceChars[39] = '\'';
    replaceChars[92] = '\\';
    replaceChars[9] = 't';
    replaceChars[47] = '/';
    replaceChars[11] = 'v';
  }

  public static final boolean isEmoji(char paramChar)
  {
    if ((paramChar >= 57345) && (paramChar <= 57434));
    while (((paramChar >= 57601) && (paramChar <= 57690)) || ((paramChar >= 57857) && (paramChar <= 57939)) || ((paramChar >= 58369) && (paramChar <= 58444)) || ((paramChar >= 58625) && (paramChar <= 58679)))
      return true;
    return false;
  }

  public static boolean isSpecial_doubleQuotes(char paramChar)
  {
    return (paramChar < specicalFlags_doubleQuotes.length) && (specicalFlags_doubleQuotes[paramChar] != 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.CharTypes
 * JD-Core Version:    0.6.2
 */