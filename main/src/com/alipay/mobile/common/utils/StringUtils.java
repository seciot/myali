package com.alipay.mobile.common.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

public class StringUtils
{
  public static String abbreviate(String paramString, int paramInt)
  {
    return abbreviate(paramString, 0, paramInt);
  }

  public static String abbreviate(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 4)
      throw new IllegalArgumentException("Minimum abbreviation width is 4");
    if (paramString.length() <= paramInt2)
      return paramString;
    if (paramInt1 > paramString.length())
      paramInt1 = paramString.length();
    if (paramString.length() - paramInt1 < paramInt2 - 3)
      paramInt1 = paramString.length() - (paramInt2 - 3);
    if (paramInt1 <= 4)
      return paramString.substring(0, paramInt2 - 3) + "...";
    if (paramInt2 < 7)
      throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
    if (paramInt1 + (paramInt2 - 3) < paramString.length())
      return "..." + abbreviate(paramString.substring(paramInt1), paramInt2 - 3);
    return "..." + paramString.substring(paramString.length() - (paramInt2 - 3));
  }

  public static String addAndDeHump(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramString.length(); i++)
    {
      if ((i != 0) && (Character.isUpperCase(paramString.charAt(i))))
        localStringBuilder.append('-');
      localStringBuilder.append(paramString.charAt(i));
    }
    return localStringBuilder.toString().trim().toLowerCase(Locale.ENGLISH);
  }

  public static String capitalise(String paramString)
  {
    if (paramString == null)
      return null;
    if (paramString.length() == 0)
      return "";
    return paramString.length() + Character.toTitleCase(paramString.charAt(0)) + paramString.substring(1);
  }

  public static String capitaliseAllWords(String paramString)
  {
    if (paramString == null)
      return null;
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    int k = 1;
    if (j < i)
    {
      char c = paramString.charAt(j);
      if (Character.isWhitespace(c))
      {
        localStringBuilder.append(c);
        k = 1;
      }
      while (true)
      {
        j++;
        break;
        if (k != 0)
        {
          localStringBuilder.append(Character.toTitleCase(c));
          k = 0;
        }
        else
        {
          localStringBuilder.append(c);
        }
      }
    }
    return localStringBuilder.toString();
  }

  public static String capitalizeFirstLetter(String paramString)
  {
    char c = Character.toTitleCase(paramString.substring(0, 1).charAt(0));
    String str = paramString.substring(1);
    return c + str;
  }

  public static String center(String paramString, int paramInt)
  {
    return center(paramString, paramInt, " ");
  }

  public static String center(String paramString1, int paramInt, String paramString2)
  {
    int i = paramString1.length();
    int j = paramInt - i;
    if (j <= 0)
      return paramString1;
    return rightPad(leftPad(paramString1, i + j / 2, paramString2), paramInt, paramString2);
  }

  public static String chomp(String paramString)
  {
    return chomp(paramString, "\n");
  }

  public static String chomp(String paramString1, String paramString2)
  {
    int i = paramString1.lastIndexOf(paramString2);
    if (i != -1)
      paramString1 = paramString1.substring(0, i);
    return paramString1;
  }

  public static String chompLast(String paramString)
  {
    return chompLast(paramString, "\n");
  }

  public static String chompLast(String paramString1, String paramString2)
  {
    if (paramString1.length() == 0);
    while (!paramString2.equals(paramString1.substring(paramString1.length() - paramString2.length())))
      return paramString1;
    return paramString1.substring(0, paramString1.length() - paramString2.length());
  }

  public static String chop(String paramString)
  {
    String str;
    if ("".equals(paramString))
      str = "";
    int i;
    do
    {
      return str;
      if (paramString.length() == 1)
        return "";
      i = -1 + paramString.length();
      str = paramString.substring(0, i);
    }
    while ((paramString.charAt(i) != '\n') || (str.charAt(i - 1) != '\r'));
    return str.substring(0, i - 1);
  }

  public static String chopNewline(String paramString)
  {
    int i = -1 + paramString.length();
    if (paramString.charAt(i) == '\n')
      if (paramString.charAt(i - 1) == '\r')
        i--;
    while (true)
    {
      return paramString.substring(0, i);
      i++;
    }
  }

  public static String clean(String paramString)
  {
    if (paramString == null)
      return "";
    return paramString.trim();
  }

  public static String concatenate(Object[] paramArrayOfObject)
  {
    return join(paramArrayOfObject, "");
  }

  public static boolean contains(String paramString, char paramChar)
  {
    if (isEmpty(paramString));
    while (paramString.indexOf(paramChar) < 0)
      return false;
    return true;
  }

  public static boolean contains(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null));
    while (paramString1.indexOf(paramString2) < 0)
      return false;
    return true;
  }

  public static int countMatches(String paramString1, String paramString2)
  {
    int i = 0;
    if (paramString2.equals(""));
    while (paramString1 == null)
      return 0;
    int j = 0;
    while (true)
    {
      int k = paramString1.indexOf(paramString2, i);
      if (k == -1)
        break;
      j++;
      i = k + paramString2.length();
    }
    return j;
  }

  public static String defaultString(Object paramObject)
  {
    return defaultString(paramObject, "");
  }

  public static String defaultString(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return paramObject.toString();
  }

  public static String deleteWhitespace(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramString.length();
    for (int j = 0; j < i; j++)
      if (!Character.isWhitespace(paramString.charAt(j)))
        localStringBuilder.append(paramString.charAt(j));
    return localStringBuilder.toString();
  }

  public static String difference(String paramString1, String paramString2)
  {
    int i = differenceAt(paramString1, paramString2);
    if (i == -1)
      return "";
    return paramString2.substring(i);
  }

  public static int differenceAt(String paramString1, String paramString2)
  {
    for (int i = 0; (i < paramString1.length()) && (i < paramString2.length()) && (paramString1.charAt(i) == paramString2.charAt(i)); i++);
    if ((i < paramString2.length()) || (i < paramString1.length()))
      return i;
    return -1;
  }

  public static boolean equals(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2 == null;
    return paramString1.equals(paramString2);
  }

  public static boolean equalsIgnoreCase(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2 == null;
    return paramString1.equalsIgnoreCase(paramString2);
  }

  public static String escape(String paramString)
  {
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i * 2);
    int j = 0;
    if (j < i)
    {
      int k = paramString.charAt(j);
      if (k > 4095)
        localStringBuilder.append("\\u" + Integer.toHexString(k));
      while (true)
      {
        j++;
        break;
        if (k > 255)
          localStringBuilder.append("\\u0" + Integer.toHexString(k));
        else if (k > 127)
          localStringBuilder.append("\\u00" + Integer.toHexString(k));
        else if (k < 32)
          switch (k)
          {
          case 11:
          default:
            if (k > 15)
              localStringBuilder.append("\\u00" + Integer.toHexString(k));
            break;
          case 8:
            localStringBuilder.append('\\');
            localStringBuilder.append('b');
            break;
          case 10:
            localStringBuilder.append('\\');
            localStringBuilder.append('n');
            break;
          case 9:
            localStringBuilder.append('\\');
            localStringBuilder.append('t');
            break;
          case 12:
            localStringBuilder.append('\\');
            localStringBuilder.append('f');
            break;
          case 13:
            localStringBuilder.append('\\');
            localStringBuilder.append('r');
            continue;
            localStringBuilder.append("\\u000" + Integer.toHexString(k));
            break;
          }
        else
          switch (k)
          {
          default:
            localStringBuilder.append(k);
            break;
          case 39:
            localStringBuilder.append('\\');
            localStringBuilder.append('\'');
            break;
          case 34:
            localStringBuilder.append('\\');
            localStringBuilder.append('"');
            break;
          case 92:
            localStringBuilder.append('\\');
            localStringBuilder.append('\\');
          }
      }
    }
    return localStringBuilder.toString();
  }

  public static String escape(String paramString, char[] paramArrayOfChar, char paramChar)
  {
    int i = 0;
    if (paramString == null)
      return null;
    char[] arrayOfChar = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, arrayOfChar, 0, paramArrayOfChar.length);
    Arrays.sort(arrayOfChar);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    while (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if (Arrays.binarySearch(arrayOfChar, c) >= 0)
        localStringBuilder.append(paramChar);
      localStringBuilder.append(c);
      i++;
    }
    return localStringBuilder.toString();
  }

  public static String getChomp(String paramString1, String paramString2)
  {
    int i = paramString1.lastIndexOf(paramString2);
    if (i == paramString1.length() - paramString2.length())
      return paramString2;
    if (i != -1)
      return paramString1.substring(i);
    return "";
  }

  public static String getNestedString(String paramString1, String paramString2)
  {
    return getNestedString(paramString1, paramString2, paramString2);
  }

  public static String getNestedString(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null);
    int i;
    int j;
    do
    {
      do
      {
        return null;
        i = paramString1.indexOf(paramString2);
      }
      while (i == -1);
      j = paramString1.indexOf(paramString3, i + paramString2.length());
    }
    while (j == -1);
    return paramString1.substring(i + paramString2.length(), j);
  }

  public static String getPrechomp(String paramString1, String paramString2)
  {
    int i = paramString1.indexOf(paramString2);
    if (i != -1)
      return paramString1.substring(0, i + paramString2.length());
    return "";
  }

  public static int indexOfAny(String paramString, String[] paramArrayOfString)
  {
    if ((paramString == null) || (paramArrayOfString == null))
    {
      i = -1;
      return i;
    }
    int j = paramArrayOfString.length;
    int k = 0;
    int i = 2147483647;
    label21: int m;
    if (k < j)
    {
      m = paramString.indexOf(paramArrayOfString[k]);
      if ((m == -1) || (m >= i))
        break label66;
    }
    while (true)
    {
      k++;
      i = m;
      break label21;
      if (i != 2147483647)
        break;
      return -1;
      label66: m = i;
    }
  }

  public static String interpolate(String paramString, Map paramMap)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = localIterator.next().toString();
      Object localObject = paramMap.get(str1);
      if (localObject == null)
        throw new NullPointerException("The value of the key '" + str1 + "' is null.");
      String str2 = localObject.toString();
      paramString = replace(paramString, "${" + str1 + "}", str2);
      if (str1.indexOf(" ") == -1)
        paramString = replace(paramString, "$" + str1, str2);
    }
    return paramString;
  }

  public static boolean isAlpha(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label35;
      if (!Character.isLetter(paramString.charAt(j)))
        break;
    }
    label35: return true;
  }

  public static boolean isAlphaSpace(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label45;
      if ((!Character.isLetter(paramString.charAt(j))) && (paramString.charAt(j) != ' '))
        break;
    }
    label45: return true;
  }

  public static boolean isAlphanumeric(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label35;
      if (!Character.isLetterOrDigit(paramString.charAt(j)))
        break;
    }
    label35: return true;
  }

  public static boolean isAlphanumericSpace(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label45;
      if ((!Character.isLetterOrDigit(paramString.charAt(j))) && (paramString.charAt(j) != ' '))
        break;
    }
    label45: return true;
  }

  public static boolean isBlank(String paramString)
  {
    int i;
    boolean bool1;
    if (paramString != null)
    {
      i = paramString.length();
      if (i != 0);
    }
    else
    {
      bool1 = true;
      return bool1;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label47;
      boolean bool2 = Character.isWhitespace(paramString.charAt(j));
      bool1 = false;
      if (!bool2)
        break;
    }
    label47: return true;
  }

  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  public static boolean isNotBlank(String paramString)
  {
    return !isBlank(paramString);
  }

  public static boolean isNotEmpty(String paramString)
  {
    return (paramString != null) && (paramString.trim().length() > 0);
  }

  public static boolean isNumeric(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label35;
      if (!Character.isDigit(paramString.charAt(j)))
        break;
    }
    label35: return true;
  }

  public static boolean isNumericSpace(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label45;
      if ((!Character.isDigit(paramString.charAt(j))) && (paramString.charAt(j) != ' '))
        break;
    }
    label45: return true;
  }

  public static boolean isWhitespace(String paramString)
  {
    if (paramString == null)
      return false;
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label35;
      if (!Character.isWhitespace(paramString.charAt(j)))
        break;
    }
    label35: return true;
  }

  public static String join(Iterator paramIterator, String paramString)
  {
    if (paramString == null)
      paramString = "";
    StringBuilder localStringBuilder = new StringBuilder(256);
    while (paramIterator.hasNext())
    {
      localStringBuilder.append(paramIterator.next());
      if (paramIterator.hasNext())
        localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }

  public static String join(Object[] paramArrayOfObject, String paramString)
  {
    int i = 0;
    if (paramString == null)
      paramString = "";
    int j = paramArrayOfObject.length;
    if (j == 0);
    StringBuilder localStringBuilder;
    for (int k = 0; ; k = j * (paramArrayOfObject[0].toString().length() + paramString.length()))
    {
      localStringBuilder = new StringBuilder(k);
      while (i < j)
      {
        if (i > 0)
          localStringBuilder.append(paramString);
        localStringBuilder.append(paramArrayOfObject[i]);
        i++;
      }
    }
    return localStringBuilder.toString();
  }

  public static int lastIndexOfAny(String paramString, String[] paramArrayOfString)
  {
    int i = -1;
    if ((paramString == null) || (paramArrayOfString == null))
      return i;
    int j = paramArrayOfString.length;
    int k = 0;
    label18: int m;
    if (k < j)
    {
      m = paramString.lastIndexOf(paramArrayOfString[k]);
      if (m <= i)
        break label49;
    }
    while (true)
    {
      k++;
      i = m;
      break label18;
      break;
      label49: m = i;
    }
  }

  public static String left(String paramString, int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Requested String length " + paramInt + " is less than zero");
    if ((paramString == null) || (paramString.length() <= paramInt))
      return paramString;
    return paramString.substring(0, paramInt);
  }

  public static String leftPad(String paramString, int paramInt)
  {
    return leftPad(paramString, paramInt, " ");
  }

  public static String leftPad(String paramString1, int paramInt, String paramString2)
  {
    int i = (paramInt - paramString1.length()) / paramString2.length();
    if (i > 0)
      paramString1 = repeat(paramString2, i) + paramString1;
    return paramString1;
  }

  public static String lowerCase(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.toLowerCase();
  }

  public static String lowercaseFirstLetter(String paramString)
  {
    char c = Character.toLowerCase(paramString.substring(0, 1).charAt(0));
    String str = paramString.substring(1);
    return c + str;
  }

  public static String mid(String paramString, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || ((paramString != null) && (paramInt1 > paramString.length())))
      throw new StringIndexOutOfBoundsException("String index " + paramInt1 + " is out of bounds");
    if (paramInt2 < 0)
      throw new IllegalArgumentException("Requested String length " + paramInt2 + " is less than zero");
    if (paramString == null)
      return null;
    if (paramString.length() <= paramInt1 + paramInt2)
      return paramString.substring(paramInt1);
    return paramString.substring(paramInt1, paramInt1 + paramInt2);
  }

  public static String overlayString(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    return 1 + (paramInt1 + paramString2.length() + paramString1.length() - paramInt2) + paramString1.substring(0, paramInt1) + paramString2 + paramString1.substring(paramInt2);
  }

  public static String prechomp(String paramString1, String paramString2)
  {
    int i = paramString1.indexOf(paramString2);
    if (i != -1)
      paramString1 = paramString1.substring(i + paramString2.length());
    return paramString1;
  }

  public static String quoteAndEscape(String paramString, char paramChar)
  {
    return quoteAndEscape(paramString, paramChar, new char[] { paramChar }, new char[] { ' ' }, '\\', false);
  }

  public static String quoteAndEscape(String paramString, char paramChar, char[] paramArrayOfChar)
  {
    return quoteAndEscape(paramString, paramChar, new char[] { paramChar }, paramArrayOfChar, '\\', false);
  }

  public static String quoteAndEscape(String paramString, char paramChar1, char[] paramArrayOfChar, char paramChar2, boolean paramBoolean)
  {
    return quoteAndEscape(paramString, paramChar1, paramArrayOfChar, new char[] { ' ' }, paramChar2, paramBoolean);
  }

  public static String quoteAndEscape(String paramString, char paramChar1, char[] paramArrayOfChar1, char[] paramArrayOfChar2, char paramChar2, boolean paramBoolean)
  {
    if (paramString == null)
      paramString = null;
    while ((!paramBoolean) && (paramString.startsWith(Character.toString(paramChar1))) && (paramString.endsWith(Character.toString(paramChar1))))
      return paramString;
    String str = escape(paramString, paramArrayOfChar1, paramChar2);
    int k;
    if (paramBoolean)
      k = 1;
    while (k != 0)
    {
      return paramChar1 + str + paramChar1;
      if (!str.equals(paramString))
        k = 1;
      else
        for (int i = 0; ; i++)
        {
          int j = paramArrayOfChar2.length;
          k = 0;
          if (i >= j)
            break;
          if (str.indexOf(paramArrayOfChar2[i]) >= 0)
          {
            k = 1;
            break;
          }
        }
    }
    return str;
  }

  public static String removeAndHump(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString1, paramString2);
    while (localStringTokenizer.hasMoreTokens())
      localStringBuilder.append(capitalizeFirstLetter((String)localStringTokenizer.nextElement()));
    return localStringBuilder.toString();
  }

  public static String removeDuplicateWhitespace(String paramString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString.length();
    boolean bool;
    for (int k = 0; i < j; k = bool)
    {
      char c = paramString.charAt(i);
      bool = Character.isWhitespace(c);
      if ((k == 0) || (!bool))
        localStringBuilder.append(c);
      i++;
    }
    return localStringBuilder.toString();
  }

  public static String repeat(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt * paramString.length());
    for (int i = 0; i < paramInt; i++)
      localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }

  public static String replace(String paramString, char paramChar1, char paramChar2)
  {
    return replace(paramString, paramChar1, paramChar2, -1);
  }

  public static String replace(String paramString, char paramChar1, char paramChar2, int paramInt)
  {
    return replace(paramString, String.valueOf(paramChar1), String.valueOf(paramChar2), paramInt);
  }

  public static String replace(String paramString1, String paramString2, String paramString3)
  {
    return replace(paramString1, paramString2, paramString3, -1);
  }

  public static String replace(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null) || (paramString2.length() == 0))
      return paramString1;
    StringBuilder localStringBuilder = new StringBuilder(paramString1.length());
    int i = 0;
    do
    {
      int j = paramString1.indexOf(paramString2, i);
      if (j == -1)
        break;
      localStringBuilder.append(paramString1.substring(i, j)).append(paramString3);
      i = j + paramString2.length();
      paramInt--;
    }
    while (paramInt != 0);
    localStringBuilder.append(paramString1.substring(i));
    return localStringBuilder.toString();
  }

  public static String replaceOnce(String paramString, char paramChar1, char paramChar2)
  {
    return replace(paramString, paramChar1, paramChar2, 1);
  }

  public static String replaceOnce(String paramString1, String paramString2, String paramString3)
  {
    return replace(paramString1, paramString2, paramString3, 1);
  }

  public static String reverse(String paramString)
  {
    if (paramString == null)
      return null;
    return new StringBuilder(paramString).reverse().toString();
  }

  public static String reverseDelimitedString(String paramString1, String paramString2)
  {
    String[] arrayOfString = split(paramString1, paramString2);
    int i = 0;
    int j = -1 + arrayOfString.length;
    while (j > i)
    {
      String str = arrayOfString[j];
      arrayOfString[j] = arrayOfString[i];
      arrayOfString[i] = str;
      j--;
      i++;
    }
    return join(arrayOfString, paramString2);
  }

  public static String right(String paramString, int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Requested String length " + paramInt + " is less than zero");
    if ((paramString == null) || (paramString.length() <= paramInt))
      return paramString;
    return paramString.substring(paramString.length() - paramInt);
  }

  public static String rightPad(String paramString, int paramInt)
  {
    return rightPad(paramString, paramInt, " ");
  }

  public static String rightPad(String paramString1, int paramInt, String paramString2)
  {
    int i = (paramInt - paramString1.length()) / paramString2.length();
    if (i > 0)
      paramString1 = paramString1 + repeat(paramString2, i);
    return paramString1;
  }

  public static String[] split(String paramString)
  {
    return split(paramString, null, -1);
  }

  public static String[] split(String paramString1, String paramString2)
  {
    return split(paramString1, paramString2, -1);
  }

  public static String[] split(String paramString1, String paramString2, int paramInt)
  {
    int i = 0;
    StringTokenizer localStringTokenizer;
    int j;
    String[] arrayOfString;
    if (paramString2 == null)
    {
      localStringTokenizer = new StringTokenizer(paramString1);
      j = localStringTokenizer.countTokens();
      if ((paramInt > 0) && (j > paramInt))
        j = paramInt;
      arrayOfString = new String[j];
    }
    for (int k = 0; ; k++)
    {
      if (localStringTokenizer.hasMoreTokens())
      {
        if ((paramInt > 0) && (k == j - 1))
          arrayOfString[k] = paramString1.substring(paramString1.indexOf(localStringTokenizer.nextToken(), i));
      }
      else
      {
        return arrayOfString;
        localStringTokenizer = new StringTokenizer(paramString1, paramString2);
        break;
      }
      arrayOfString[k] = localStringTokenizer.nextToken();
      i = paramString1.indexOf(arrayOfString[k], i) + arrayOfString[k].length();
    }
  }

  public static String strip(String paramString)
  {
    return strip(paramString, null);
  }

  public static String strip(String paramString1, String paramString2)
  {
    return stripEnd(stripStart(paramString1, paramString2), paramString2);
  }

  public static String[] stripAll(String[] paramArrayOfString)
  {
    return stripAll(paramArrayOfString, null);
  }

  public static String[] stripAll(String[] paramArrayOfString, String paramString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      return paramArrayOfString;
    int i = paramArrayOfString.length;
    String[] arrayOfString = new String[i];
    for (int j = 0; j < i; j++)
      arrayOfString[j] = strip(paramArrayOfString[j], paramString);
    return arrayOfString;
  }

  public static String stripEnd(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return null;
    int i = paramString1.length();
    if (paramString2 == null)
      while ((i != 0) && (Character.isWhitespace(paramString1.charAt(i - 1))))
        i--;
    while ((i != 0) && (paramString2.indexOf(paramString1.charAt(i - 1)) != -1))
      i--;
    return paramString1.substring(0, i);
  }

  public static String stripStart(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return null;
    int i = paramString1.length();
    int j = 0;
    if (paramString2 == null)
      while ((j != i) && (Character.isWhitespace(paramString1.charAt(j))))
        j++;
    while ((j != i) && (paramString2.indexOf(paramString1.charAt(j)) != -1))
      j++;
    return paramString1.substring(j);
  }

  public static String substring(String paramString, int paramInt)
  {
    if (paramString == null)
      return null;
    if (paramInt < 0);
    for (int i = paramInt + paramString.length(); ; i = paramInt)
    {
      if (i < 0)
        i = 0;
      if (i > paramString.length())
        return "";
      return paramString.substring(i);
    }
  }

  public static String substring(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      return null;
    if (paramInt2 < 0);
    for (int i = paramInt2 + paramString.length(); ; i = paramInt2)
    {
      if (paramInt1 < 0)
        paramInt1 += paramString.length();
      if (i > paramString.length())
        i = paramString.length();
      if (paramInt1 > i)
        return "";
      if (paramInt1 < 0)
        paramInt1 = 0;
      int j = 0;
      if (i < 0);
      while (true)
      {
        return paramString.substring(paramInt1, j);
        j = i;
      }
    }
  }

  public static String substringBefore(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (paramString2 == null));
    int i;
    do
    {
      return paramString1;
      if (paramString2.length() == 0)
        return "";
      i = paramString1.indexOf(paramString2);
    }
    while (i == -1);
    return paramString1.substring(0, i);
  }

  public static String swapCase(String paramString)
  {
    int i = 0;
    if (paramString == null)
      return null;
    int j = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(j);
    int k = 0;
    if (k < j)
    {
      char c1 = paramString.charAt(k);
      char c2;
      if (Character.isUpperCase(c1))
        c2 = Character.toLowerCase(c1);
      while (true)
      {
        localStringBuilder.append(c2);
        boolean bool = Character.isWhitespace(c1);
        k++;
        i = bool;
        break;
        if (Character.isTitleCase(c1))
          c2 = Character.toLowerCase(c1);
        else if (Character.isLowerCase(c1))
        {
          if (i != 0)
            c2 = Character.toTitleCase(c1);
          else
            c2 = Character.toUpperCase(c1);
        }
        else
          c2 = c1;
      }
    }
    return localStringBuilder.toString();
  }

  public static String trim(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.trim();
  }

  public static String uncapitalise(String paramString)
  {
    if (paramString == null)
      return null;
    if (paramString.length() == 0)
      return "";
    return paramString.length() + Character.toLowerCase(paramString.charAt(0)) + paramString.substring(1);
  }

  public static String uncapitaliseAllWords(String paramString)
  {
    if (paramString == null)
      return null;
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    int k = 1;
    if (j < i)
    {
      char c = paramString.charAt(j);
      if (Character.isWhitespace(c))
      {
        localStringBuilder.append(c);
        k = 1;
      }
      while (true)
      {
        j++;
        break;
        if (k != 0)
        {
          localStringBuilder.append(Character.toLowerCase(c));
          k = 0;
        }
        else
        {
          localStringBuilder.append(c);
        }
      }
    }
    return localStringBuilder.toString();
  }

  public static String unifyLineSeparators(String paramString)
  {
    return unifyLineSeparators(paramString, System.getProperty("line.separator"));
  }

  public static String unifyLineSeparators(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return null;
    if (paramString2 == null)
      paramString2 = System.getProperty("line.separator");
    if ((!paramString2.equals("\n")) && (!paramString2.equals("\r")) && (!paramString2.equals("\r\n")))
      throw new IllegalArgumentException("Requested line separator is invalid.");
    int i = paramString1.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    if (j < i)
    {
      if (paramString1.charAt(j) == '\r')
      {
        if ((j + 1 < i) && (paramString1.charAt(j + 1) == '\n'))
          j++;
        localStringBuilder.append(paramString2);
      }
      while (true)
      {
        j++;
        break;
        if (paramString1.charAt(j) == '\n')
          localStringBuilder.append(paramString2);
        else
          localStringBuilder.append(paramString1.charAt(j));
      }
    }
    return localStringBuilder.toString();
  }

  public static String upperCase(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.toUpperCase();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.StringUtils
 * JD-Core Version:    0.6.2
 */