package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.Base64;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;

public final class JSONScanner
  implements JSONLexer
{
  public static final int ARRAY = 2;
  public static final int END = 4;
  public static final byte EOI = 26;
  private static final int INT_MULTMIN_RADIX_TEN = -214748364;
  private static final int INT_N_MULTMAX_RADIX_TEN = -214748364;
  private static final long MULTMIN_RADIX_TEN = -922337203685477580L;
  public static final int NOT_MATCH = -1;
  public static final int NOT_MATCH_NAME = -2;
  private static final long N_MULTMAX_RADIX_TEN = -922337203685477580L;
  public static final int OBJECT = 1;
  public static final int UNKOWN = 0;
  public static final int VALUE = 3;
  private static final int[] digits;
  private static final ThreadLocal<SoftReference<char[]>> sbufRefLocal = new ThreadLocal();
  private static final char[] typeFieldName;
  private static boolean[] whitespaceFlags;
  public final int ISO8601_LEN_0 = 10;
  public final int ISO8601_LEN_1 = 19;
  public final int ISO8601_LEN_2 = 23;
  private int bp;
  private final char[] buf;
  private final int buflen;
  private Calendar calendar = null;
  private char ch;
  private int eofPos;
  private int features = JSON.DEFAULT_PARSER_FEATURE;
  boolean hasSpecial;
  private Keywords keywods = Keywords.DEFAULT_KEYWORDS;
  public int matchStat = 0;
  private int np;
  private int pos;
  public int resetCount = 0;
  private boolean resetFlag = false;
  private char[] sbuf;
  private int sp;
  private int token;

  static
  {
    boolean[] arrayOfBoolean = new boolean[256];
    whitespaceFlags = arrayOfBoolean;
    arrayOfBoolean[32] = true;
    whitespaceFlags[10] = true;
    whitespaceFlags[13] = true;
    whitespaceFlags[9] = true;
    whitespaceFlags[12] = true;
    whitespaceFlags[8] = true;
    typeFieldName = "\"@type\":\"".toCharArray();
    digits = new int[103];
    for (int i = 48; i <= 57; i++)
      digits[i] = (i - 48);
    for (int j = 97; j <= 102; j++)
      digits[j] = (10 + (j - 97));
    for (int k = 65; k <= 70; k++)
      digits[k] = (10 + (k - 65));
  }

  public JSONScanner(String paramString)
  {
    this(paramString, JSON.DEFAULT_PARSER_FEATURE);
  }

  public JSONScanner(String paramString, int paramInt)
  {
    this(paramString.toCharArray(), paramString.length(), paramInt);
  }

  public JSONScanner(char[] paramArrayOfChar, int paramInt)
  {
    this(paramArrayOfChar, paramInt, JSON.DEFAULT_PARSER_FEATURE);
  }

  public JSONScanner(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.features = paramInt2;
    SoftReference localSoftReference = (SoftReference)sbufRefLocal.get();
    if (localSoftReference != null)
    {
      this.sbuf = ((char[])localSoftReference.get());
      sbufRefLocal.set(null);
    }
    if (this.sbuf == null)
      this.sbuf = new char[64];
    this.eofPos = paramInt1;
    if (paramInt1 == paramArrayOfChar.length)
    {
      if ((paramArrayOfChar.length <= 0) || (!isWhitespace(paramArrayOfChar[(-1 + paramArrayOfChar.length)])))
        break label198;
      paramInt1--;
    }
    while (true)
    {
      this.buf = paramArrayOfChar;
      this.buflen = paramInt1;
      this.buf[this.buflen] = '\032';
      this.bp = -1;
      char[] arrayOfChar1 = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      this.ch = arrayOfChar1[i];
      return;
      label198: char[] arrayOfChar2 = new char[paramInt1 + 1];
      System.arraycopy(paramArrayOfChar, 0, arrayOfChar2, 0, paramArrayOfChar.length);
      paramArrayOfChar = arrayOfChar2;
    }
  }

  public static final boolean isWhitespace(char paramChar)
  {
    return (paramChar == ' ') || (paramChar == '\n') || (paramChar == '\r') || (paramChar == '\t') || (paramChar == '\f') || (paramChar == '\b');
  }

  private void lexError(String paramString, Object[] paramArrayOfObject)
  {
    this.token = 1;
  }

  private final void putChar(char paramChar)
  {
    if (this.sp == this.sbuf.length)
    {
      char[] arrayOfChar2 = new char[2 * this.sbuf.length];
      System.arraycopy(this.sbuf, 0, arrayOfChar2, 0, this.sbuf.length);
      this.sbuf = arrayOfChar2;
    }
    char[] arrayOfChar1 = this.sbuf;
    int i = this.sp;
    this.sp = (i + 1);
    arrayOfChar1[i] = paramChar;
  }

  public final byte[] bytesValue()
  {
    return Base64.decodeFast(this.buf, 1 + this.np, this.sp);
  }

  public final void close()
  {
    if (this.sbuf.length <= 8192)
      sbufRefLocal.set(new SoftReference(this.sbuf));
    this.sbuf = null;
  }

  public final void config(Feature paramFeature, boolean paramBoolean)
  {
    this.features = Feature.config(this.features, paramFeature, paramBoolean);
  }

  public final Number decimalValue(boolean paramBoolean)
  {
    int i = this.buf[(-1 + (this.np + this.sp))];
    if (i == 70)
      return Float.valueOf(Float.parseFloat(new String(this.buf, this.np, -1 + this.sp)));
    if (i == 68)
      return Double.valueOf(Double.parseDouble(new String(this.buf, this.np, -1 + this.sp)));
    if (paramBoolean)
      return decimalValue();
    return Double.valueOf(doubleValue());
  }

  public final BigDecimal decimalValue()
  {
    int i = this.buf[(-1 + (this.np + this.sp))];
    int j = this.sp;
    if ((i == 76) || (i == 83) || (i == 66) || (i == 70) || (i == 68))
      j--;
    return new BigDecimal(this.buf, this.np, j);
  }

  public final double doubleValue()
  {
    return Double.parseDouble(numberString());
  }

  public final float floatValue()
  {
    return Float.parseFloat(numberString());
  }

  public final int getBufferPosition()
  {
    return this.bp;
  }

  public final Calendar getCalendar()
  {
    return this.calendar;
  }

  public final char getCurrent()
  {
    return this.ch;
  }

  public final void incrementBufferPosition()
  {
    char[] arrayOfChar = this.buf;
    int i = 1 + this.bp;
    this.bp = i;
    this.ch = arrayOfChar[i];
  }

  public final int intValue()
  {
    int i = this.np;
    int j = this.np + this.sp;
    int n;
    int k;
    int m;
    int i1;
    int i2;
    if (this.buf[this.np] == '-')
    {
      int i7 = i + 1;
      n = 1;
      k = -2147483648;
      m = i7;
      if (m >= j)
        break label244;
      int[] arrayOfInt = digits;
      char[] arrayOfChar2 = this.buf;
      i1 = m + 1;
      i2 = -arrayOfInt[arrayOfChar2[m]];
    }
    while (true)
    {
      if (i1 < j)
      {
        char[] arrayOfChar1 = this.buf;
        i3 = i1 + 1;
        int i4 = arrayOfChar1[i1];
        if ((i4 == 76) || (i4 == 83) || (i4 == 66))
          break label209;
        int i5 = digits[i4];
        if (i2 < -214748364)
        {
          throw new NumberFormatException(numberString());
          k = -2147483647;
          m = i;
          n = 0;
          break;
        }
        int i6 = i2 * 10;
        if (i6 < k + i5)
          throw new NumberFormatException(numberString());
        i2 = i6 - i5;
        i1 = i3;
        continue;
      }
      int i3 = i1;
      label209: if (n != 0)
      {
        if (i3 > 1 + this.np)
          return i2;
        throw new NumberFormatException(numberString());
      }
      return -i2;
      label244: i1 = m;
      i2 = 0;
    }
  }

  public final Number integerValue()
  {
    long l1 = 0L;
    int i = this.np;
    int j = this.np + this.sp;
    int k = 32;
    if (j > 0);
    int n;
    long l2;
    int m;
    label103: int i1;
    switch (this.buf[(j - 1)])
    {
    default:
      if (this.buf[this.np] == '-')
      {
        int i4 = i + 1;
        n = 1;
        l2 = -9223372036854775808L;
        m = i4;
        if (m >= j)
          break label426;
        int[] arrayOfInt2 = digits;
        char[] arrayOfChar2 = this.buf;
        i1 = m + 1;
        l1 = -arrayOfInt2[arrayOfChar2[m]];
      }
      break;
    case 'L':
    case 'S':
    case 'B':
    }
    while (true)
    {
      if (i1 < j)
      {
        int[] arrayOfInt1 = digits;
        char[] arrayOfChar1 = this.buf;
        int i2 = i1 + 1;
        int i3 = arrayOfInt1[arrayOfChar1[i1]];
        if (l1 < -922337203685477580L)
        {
          return new BigInteger(numberString());
          j--;
          k = 76;
          break;
          j--;
          k = 83;
          break;
          j--;
          k = 66;
          break;
          l2 = -9223372036854775807L;
          m = i;
          n = 0;
          break label103;
        }
        long l4 = l1 * 10L;
        if (l4 < l2 + i3)
          return new BigInteger(numberString());
        l1 = l4 - i3;
        i1 = i2;
        continue;
      }
      if (n != 0)
      {
        if (i1 > 1 + this.np)
        {
          if ((l1 >= -2147483648L) && (k != 76))
          {
            if (k == 83)
              return Short.valueOf((short)(int)l1);
            if (k == 66)
              return Byte.valueOf((byte)(int)l1);
            return Integer.valueOf((int)l1);
          }
          return Long.valueOf(l1);
        }
        throw new NumberFormatException(numberString());
      }
      long l3 = -l1;
      if ((l3 <= 2147483647L) && (k != 76))
      {
        if (k == 83)
          return Short.valueOf((short)(int)l3);
        if (k == 66)
          return Byte.valueOf((byte)(int)l3);
        return Integer.valueOf((int)l3);
      }
      return Long.valueOf(l3);
      label426: i1 = m;
    }
  }

  public final boolean isBlankInput()
  {
    for (int i = 0; i < this.buflen; i++)
      if (!isWhitespace(this.buf[i]))
        return false;
    return true;
  }

  public final boolean isEOF()
  {
    switch (this.token)
    {
    case 1:
    case 13:
    default:
      return false;
    case 20:
    }
    return true;
  }

  public final boolean isEnabled(Feature paramFeature)
  {
    return Feature.isEnabled(this.features, paramFeature);
  }

  public final boolean isRef()
  {
    if (this.hasSpecial);
    while ((this.sp != 4) || (this.buf[(1 + this.np)] != '$') || (this.buf[(2 + this.np)] != 'r') || (this.buf[(3 + this.np)] != 'e') || (this.buf[(4 + this.np)] != 'f'))
      return false;
    return true;
  }

  public final boolean isResetFlag()
  {
    return this.resetFlag;
  }

  public final long longValue()
  {
    long l1 = 0L;
    int i = this.np;
    int j = this.np + this.sp;
    int m;
    long l2;
    int k;
    int n;
    if (this.buf[this.np] == '-')
    {
      int i4 = i + 1;
      m = 1;
      l2 = -9223372036854775808L;
      k = i4;
      if (k >= j)
        break label255;
      int[] arrayOfInt = digits;
      char[] arrayOfChar2 = this.buf;
      n = k + 1;
      l1 = -arrayOfInt[arrayOfChar2[k]];
    }
    while (true)
    {
      if (n < j)
      {
        char[] arrayOfChar1 = this.buf;
        i1 = n + 1;
        int i2 = arrayOfChar1[n];
        if ((i2 == 76) || (i2 == 83) || (i2 == 66))
          break label222;
        int i3 = digits[i2];
        if (l1 < -922337203685477580L)
        {
          throw new NumberFormatException(numberString());
          l2 = -9223372036854775807L;
          k = i;
          m = 0;
          break;
        }
        long l3 = l1 * 10L;
        if (l3 < l2 + i3)
          throw new NumberFormatException(numberString());
        l1 = l3 - i3;
        n = i1;
        continue;
      }
      int i1 = n;
      label222: if (m != 0)
      {
        if (i1 > 1 + this.np)
          return l1;
        throw new NumberFormatException(numberString());
      }
      return -l1;
      label255: n = k;
    }
  }

  public final boolean matchField(char[] paramArrayOfChar)
  {
    int i = paramArrayOfChar.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfChar[j] != this.buf[(j + this.bp)])
        return false;
    this.bp = (i + this.bp);
    this.ch = this.buf[this.bp];
    if (this.ch == '{')
    {
      char[] arrayOfChar2 = this.buf;
      int m = 1 + this.bp;
      this.bp = m;
      this.ch = arrayOfChar2[m];
      this.token = 12;
    }
    while (true)
    {
      return true;
      if (this.ch == '[')
      {
        char[] arrayOfChar1 = this.buf;
        int k = 1 + this.bp;
        this.bp = k;
        this.ch = arrayOfChar1[k];
        this.token = 14;
      }
      else
      {
        nextToken();
      }
    }
  }

  public final void nextToken()
  {
    this.sp = 0;
    while (true)
    {
      this.pos = this.bp;
      if (this.ch == '"')
      {
        scanString();
        return;
      }
      if (this.ch == ',')
      {
        char[] arrayOfChar10 = this.buf;
        int i6 = 1 + this.bp;
        this.bp = i6;
        this.ch = arrayOfChar10[i6];
        this.token = 16;
        return;
      }
      if ((this.ch >= '0') && (this.ch <= '9'))
      {
        scanNumber();
        return;
      }
      if (this.ch == '-')
      {
        scanNumber();
        return;
      }
      switch (this.ch)
      {
      default:
        if ((this.bp != this.buflen) && ((this.ch != '\032') || (1 + this.bp != this.buflen)))
          break label695;
        if (this.token != 20)
          break;
        throw new JSONException("EOF error");
      case '\'':
        if (!isEnabled(Feature.AllowSingleQuotes))
          throw new JSONException("Feature.AllowSingleQuotes is false");
        scanStringSingleQuote();
        return;
      case '\b':
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
        char[] arrayOfChar8 = this.buf;
        int i3 = 1 + this.bp;
        this.bp = i3;
        this.ch = arrayOfChar8[i3];
      case 't':
      case 'T':
      case 'S':
      case 'f':
      case 'n':
      case 'D':
      case '(':
      case ')':
      case '[':
      case ']':
      case '{':
      case '}':
      case ':':
      }
    }
    scanTrue();
    return;
    scanTreeSet();
    return;
    scanSet();
    return;
    scanFalse();
    return;
    scanNullOrNew();
    return;
    scanIdent();
    return;
    char[] arrayOfChar7 = this.buf;
    int i2 = 1 + this.bp;
    this.bp = i2;
    this.ch = arrayOfChar7[i2];
    this.token = 10;
    return;
    char[] arrayOfChar6 = this.buf;
    int i1 = 1 + this.bp;
    this.bp = i1;
    this.ch = arrayOfChar6[i1];
    this.token = 11;
    return;
    char[] arrayOfChar5 = this.buf;
    int n = 1 + this.bp;
    this.bp = n;
    this.ch = arrayOfChar5[n];
    this.token = 14;
    return;
    char[] arrayOfChar4 = this.buf;
    int m = 1 + this.bp;
    this.bp = m;
    this.ch = arrayOfChar4[m];
    this.token = 15;
    return;
    char[] arrayOfChar3 = this.buf;
    int k = 1 + this.bp;
    this.bp = k;
    this.ch = arrayOfChar3[k];
    this.token = 12;
    return;
    char[] arrayOfChar2 = this.buf;
    int j = 1 + this.bp;
    this.bp = j;
    this.ch = arrayOfChar2[j];
    this.token = 13;
    return;
    char[] arrayOfChar1 = this.buf;
    int i = 1 + this.bp;
    this.bp = i;
    this.ch = arrayOfChar1[i];
    this.token = 17;
    return;
    this.token = 20;
    int i4 = this.eofPos;
    this.bp = i4;
    this.pos = i4;
    return;
    label695: new Object[1][0] = String.valueOf(this.ch);
    this.token = 1;
    char[] arrayOfChar9 = this.buf;
    int i5 = 1 + this.bp;
    this.bp = i5;
    this.ch = arrayOfChar9[i5];
  }

  public final void nextToken(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 12:
    case 16:
    case 2:
    case 4:
    case 14:
    case 15:
    case 20:
    }
    while (true)
      if ((this.ch == ' ') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\f') || (this.ch == '\b'))
      {
        char[] arrayOfChar1 = this.buf;
        int i = 1 + this.bp;
        this.bp = i;
        this.ch = arrayOfChar1[i];
        break;
        if (this.ch == '{')
        {
          this.token = 12;
          char[] arrayOfChar13 = this.buf;
          int i8 = 1 + this.bp;
          this.bp = i8;
          this.ch = arrayOfChar13[i8];
          return;
        }
        if (this.ch == '[')
        {
          this.token = 14;
          char[] arrayOfChar12 = this.buf;
          int i7 = 1 + this.bp;
          this.bp = i7;
          this.ch = arrayOfChar12[i7];
          return;
          if (this.ch == ',')
          {
            this.token = 16;
            char[] arrayOfChar11 = this.buf;
            int i6 = 1 + this.bp;
            this.bp = i6;
            this.ch = arrayOfChar11[i6];
            return;
          }
          if (this.ch == '}')
          {
            this.token = 13;
            char[] arrayOfChar10 = this.buf;
            int i5 = 1 + this.bp;
            this.bp = i5;
            this.ch = arrayOfChar10[i5];
            return;
          }
          if (this.ch == ']')
          {
            this.token = 15;
            char[] arrayOfChar9 = this.buf;
            int i4 = 1 + this.bp;
            this.bp = i4;
            this.ch = arrayOfChar9[i4];
            return;
          }
          if (this.ch == '\032')
          {
            this.token = 20;
            return;
            if ((this.ch >= '0') && (this.ch <= '9'))
            {
              this.sp = 0;
              this.pos = this.bp;
              scanNumber();
              return;
            }
            if (this.ch == '"')
            {
              this.sp = 0;
              this.pos = this.bp;
              scanString();
              return;
            }
            if (this.ch == '[')
            {
              this.token = 14;
              char[] arrayOfChar8 = this.buf;
              int i3 = 1 + this.bp;
              this.bp = i3;
              this.ch = arrayOfChar8[i3];
              return;
            }
            if (this.ch == '{')
            {
              this.token = 12;
              char[] arrayOfChar7 = this.buf;
              int i2 = 1 + this.bp;
              this.bp = i2;
              this.ch = arrayOfChar7[i2];
              return;
              if (this.ch == '"')
              {
                this.sp = 0;
                this.pos = this.bp;
                scanString();
                return;
              }
              if ((this.ch >= '0') && (this.ch <= '9'))
              {
                this.sp = 0;
                this.pos = this.bp;
                scanNumber();
                return;
              }
              if (this.ch == '[')
              {
                this.token = 14;
                char[] arrayOfChar6 = this.buf;
                int i1 = 1 + this.bp;
                this.bp = i1;
                this.ch = arrayOfChar6[i1];
                return;
              }
              if (this.ch == '{')
              {
                this.token = 12;
                char[] arrayOfChar5 = this.buf;
                int n = 1 + this.bp;
                this.bp = n;
                this.ch = arrayOfChar5[n];
                return;
                if (this.ch == '[')
                {
                  this.token = 14;
                  char[] arrayOfChar4 = this.buf;
                  int m = 1 + this.bp;
                  this.bp = m;
                  this.ch = arrayOfChar4[m];
                  return;
                }
                if (this.ch == '{')
                {
                  this.token = 12;
                  char[] arrayOfChar3 = this.buf;
                  int k = 1 + this.bp;
                  this.bp = k;
                  this.ch = arrayOfChar3[k];
                  return;
                  if (this.ch == ']')
                  {
                    this.token = 15;
                    char[] arrayOfChar2 = this.buf;
                    int j = 1 + this.bp;
                    this.bp = j;
                    this.ch = arrayOfChar2[j];
                    return;
                  }
                  if (this.ch == '\032')
                  {
                    this.token = 20;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    nextToken();
  }

  public final void nextTokenWithColon()
  {
    while (true)
    {
      if (this.ch == ':')
      {
        char[] arrayOfChar2 = this.buf;
        int j = 1 + this.bp;
        this.bp = j;
        this.ch = arrayOfChar2[j];
        nextToken();
        return;
      }
      if ((this.ch != ' ') && (this.ch != '\n') && (this.ch != '\r') && (this.ch != '\t') && (this.ch != '\f') && (this.ch != '\b'))
        break;
      char[] arrayOfChar1 = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      this.ch = arrayOfChar1[i];
    }
    throw new JSONException("not match ':' - " + this.ch);
  }

  public final void nextTokenWithColon(int paramInt)
  {
    char[] arrayOfChar2;
    int j;
    if (this.ch == ':')
    {
      arrayOfChar2 = this.buf;
      j = 1 + this.bp;
      this.bp = j;
    }
    label431: char[] arrayOfChar3;
    int k;
    for (this.ch = arrayOfChar2[j]; ; this.ch = arrayOfChar3[k])
    {
      if (paramInt == 2)
      {
        if ((this.ch >= '0') && (this.ch <= '9'))
        {
          this.sp = 0;
          this.pos = this.bp;
          scanNumber();
          return;
          if (isWhitespace(this.ch))
          {
            char[] arrayOfChar1 = this.buf;
            int i = 1 + this.bp;
            this.bp = i;
            this.ch = arrayOfChar1[i];
            break;
          }
          throw new JSONException("not match ':', actual " + this.ch);
        }
        if (this.ch != '"')
          break label431;
        this.sp = 0;
        this.pos = this.bp;
        scanString();
        return;
      }
      if (paramInt == 4)
      {
        if (this.ch == '"')
        {
          this.sp = 0;
          this.pos = this.bp;
          scanString();
          return;
        }
        if ((this.ch >= '0') && (this.ch <= '9'))
        {
          this.sp = 0;
          this.pos = this.bp;
          scanNumber();
        }
      }
      else if (paramInt == 12)
      {
        if (this.ch == '{')
        {
          this.token = 12;
          char[] arrayOfChar7 = this.buf;
          int i2 = 1 + this.bp;
          this.bp = i2;
          this.ch = arrayOfChar7[i2];
          return;
        }
        if (this.ch == '[')
        {
          this.token = 14;
          char[] arrayOfChar6 = this.buf;
          int i1 = 1 + this.bp;
          this.bp = i1;
          this.ch = arrayOfChar6[i1];
        }
      }
      else if (paramInt == 14)
      {
        if (this.ch == '[')
        {
          this.token = 14;
          char[] arrayOfChar5 = this.buf;
          int n = 1 + this.bp;
          this.bp = n;
          this.ch = arrayOfChar5[n];
          return;
        }
        if (this.ch == '{')
        {
          this.token = 12;
          char[] arrayOfChar4 = this.buf;
          int m = 1 + this.bp;
          this.bp = m;
          this.ch = arrayOfChar4[m];
          return;
        }
      }
      if (!isWhitespace(this.ch))
        break label473;
      arrayOfChar3 = this.buf;
      k = 1 + this.bp;
      this.bp = k;
    }
    label473: nextToken();
  }

  public final String numberString()
  {
    int i = this.buf[(-1 + (this.np + this.sp))];
    int j = this.sp;
    if ((i == 76) || (i == 83) || (i == 66) || (i == 70) || (i == 68))
      j--;
    return new String(this.buf, this.np, j);
  }

  public final int pos()
  {
    return this.pos;
  }

  public final void reset(int paramInt1, char paramChar, int paramInt2)
  {
    this.bp = paramInt1;
    this.ch = paramChar;
    this.token = paramInt2;
    this.resetFlag = true;
    this.resetCount = (1 + this.resetCount);
  }

  public final void resetStringPosition()
  {
    this.sp = 0;
  }

  public final void scanFalse()
  {
    char[] arrayOfChar1 = this.buf;
    int i = this.bp;
    this.bp = (i + 1);
    if (arrayOfChar1[i] != 'f')
      throw new JSONException("error parse false");
    char[] arrayOfChar2 = this.buf;
    int j = this.bp;
    this.bp = (j + 1);
    if (arrayOfChar2[j] != 'a')
      throw new JSONException("error parse false");
    char[] arrayOfChar3 = this.buf;
    int k = this.bp;
    this.bp = (k + 1);
    if (arrayOfChar3[k] != 'l')
      throw new JSONException("error parse false");
    char[] arrayOfChar4 = this.buf;
    int m = this.bp;
    this.bp = (m + 1);
    if (arrayOfChar4[m] != 's')
      throw new JSONException("error parse false");
    char[] arrayOfChar5 = this.buf;
    int n = this.bp;
    this.bp = (n + 1);
    if (arrayOfChar5[n] != 'e')
      throw new JSONException("error parse false");
    this.ch = this.buf[this.bp];
    if ((this.ch == ' ') || (this.ch == ',') || (this.ch == '}') || (this.ch == ']') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\032') || (this.ch == '\f') || (this.ch == '\b'))
    {
      this.token = 7;
      return;
    }
    throw new JSONException("scan false error");
  }

  public final boolean scanFieldBoolean(char[] paramArrayOfChar)
  {
    this.matchStat = 0;
    int i = paramArrayOfChar.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfChar[j] != this.buf[(j + this.bp)])
      {
        this.matchStat = -2;
        return false;
      }
    int k = i + this.bp;
    char[] arrayOfChar1 = this.buf;
    int m = k + 1;
    int n = arrayOfChar1[k];
    int i5;
    boolean bool;
    if (n == 116)
    {
      char[] arrayOfChar10 = this.buf;
      int i11 = m + 1;
      if (arrayOfChar10[m] != 'r')
      {
        this.matchStat = -1;
        return false;
      }
      char[] arrayOfChar11 = this.buf;
      int i12 = i11 + 1;
      if (arrayOfChar11[i11] != 'u')
      {
        this.matchStat = -1;
        return false;
      }
      char[] arrayOfChar12 = this.buf;
      int i13 = i12 + 1;
      if (arrayOfChar12[i12] != 'e')
      {
        this.matchStat = -1;
        return false;
      }
      this.bp = i13;
      i5 = this.buf[this.bp];
      bool = true;
    }
    while (i5 == 44)
    {
      this.bp = (1 + this.bp);
      this.matchStat = 3;
      this.token = 16;
      return bool;
      if (n == 102)
      {
        char[] arrayOfChar2 = this.buf;
        int i1 = m + 1;
        if (arrayOfChar2[m] != 'a')
        {
          this.matchStat = -1;
          return false;
        }
        char[] arrayOfChar3 = this.buf;
        int i2 = i1 + 1;
        if (arrayOfChar3[i1] != 'l')
        {
          this.matchStat = -1;
          return false;
        }
        char[] arrayOfChar4 = this.buf;
        int i3 = i2 + 1;
        if (arrayOfChar4[i2] != 's')
        {
          this.matchStat = -1;
          return false;
        }
        char[] arrayOfChar5 = this.buf;
        int i4 = i3 + 1;
        if (arrayOfChar5[i3] != 'e')
        {
          this.matchStat = -1;
          return false;
        }
        this.bp = i4;
        i5 = this.buf[this.bp];
        bool = false;
      }
      else
      {
        this.matchStat = -1;
        return false;
      }
    }
    if (i5 == 125)
    {
      char[] arrayOfChar6 = this.buf;
      int i6 = 1 + this.bp;
      this.bp = i6;
      int i7 = arrayOfChar6[i6];
      if (i7 == 44)
      {
        this.token = 16;
        char[] arrayOfChar9 = this.buf;
        int i10 = 1 + this.bp;
        this.bp = i10;
        this.ch = arrayOfChar9[i10];
      }
      while (true)
      {
        this.matchStat = 4;
        break;
        if (i7 == 93)
        {
          this.token = 15;
          char[] arrayOfChar8 = this.buf;
          int i9 = 1 + this.bp;
          this.bp = i9;
          this.ch = arrayOfChar8[i9];
        }
        else if (i7 == 125)
        {
          this.token = 13;
          char[] arrayOfChar7 = this.buf;
          int i8 = 1 + this.bp;
          this.bp = i8;
          this.ch = arrayOfChar7[i8];
        }
        else
        {
          if (i7 != 26)
            break label566;
          this.token = 20;
        }
      }
      label566: this.matchStat = -1;
      return false;
    }
    this.matchStat = -1;
    return false;
  }

  public final double scanFieldDouble(char[] paramArrayOfChar)
  {
    int i = 0;
    this.matchStat = 0;
    int j = paramArrayOfChar.length;
    while (i < j)
    {
      if (paramArrayOfChar[i] != this.buf[(i + this.bp)])
      {
        this.matchStat = -2;
        return 0.0D;
      }
      i++;
    }
    int k = j + this.bp;
    char[] arrayOfChar1 = this.buf;
    int m = k + 1;
    int n = arrayOfChar1[k];
    int i1;
    if ((n >= 48) && (n <= 57))
      i1 = m - 1;
    while (true)
    {
      char[] arrayOfChar2 = this.buf;
      int i2 = m + 1;
      int i3 = arrayOfChar2[m];
      if ((i3 < 48) || (i3 > 57))
      {
        if (i3 == 46)
        {
          char[] arrayOfChar7 = this.buf;
          int i9 = i2 + 1;
          int i10 = arrayOfChar7[i2];
          if ((i10 >= 48) && (i10 <= 57))
            while (true)
            {
              char[] arrayOfChar8 = this.buf;
              i2 = i9 + 1;
              i3 = arrayOfChar8[i9];
              if ((i3 < 48) || (i3 > 57))
                break;
              i9 = i2;
            }
          this.matchStat = -1;
          return 0.0D;
        }
        this.bp = (i2 - 1);
        double d = Double.parseDouble(new String(this.buf, i1, -1 + (i2 - i1)));
        if (i3 == 44)
        {
          this.bp = (1 + this.bp);
          this.matchStat = 3;
          this.token = 16;
          return d;
          this.matchStat = -1;
          return 0.0D;
        }
        if (i3 == 125)
        {
          char[] arrayOfChar3 = this.buf;
          int i4 = 1 + this.bp;
          this.bp = i4;
          int i5 = arrayOfChar3[i4];
          if (i5 == 44)
          {
            this.token = 16;
            char[] arrayOfChar6 = this.buf;
            int i8 = 1 + this.bp;
            this.bp = i8;
            this.ch = arrayOfChar6[i8];
          }
          while (true)
          {
            this.matchStat = 4;
            break;
            if (i5 == 93)
            {
              this.token = 15;
              char[] arrayOfChar5 = this.buf;
              int i7 = 1 + this.bp;
              this.bp = i7;
              this.ch = arrayOfChar5[i7];
            }
            else if (i5 == 125)
            {
              this.token = 13;
              char[] arrayOfChar4 = this.buf;
              int i6 = 1 + this.bp;
              this.bp = i6;
              this.ch = arrayOfChar4[i6];
            }
            else
            {
              if (i5 != 26)
                break label479;
              this.token = 20;
            }
          }
          label479: this.matchStat = -1;
          return 0.0D;
        }
        this.matchStat = -1;
        return 0.0D;
      }
      m = i2;
    }
  }

  public final float scanFieldFloat(char[] paramArrayOfChar)
  {
    int i = 0;
    this.matchStat = 0;
    int j = paramArrayOfChar.length;
    while (i < j)
    {
      if (paramArrayOfChar[i] != this.buf[(i + this.bp)])
      {
        this.matchStat = -2;
        return 0.0F;
      }
      i++;
    }
    int k = j + this.bp;
    char[] arrayOfChar1 = this.buf;
    int m = k + 1;
    int n = arrayOfChar1[k];
    int i1;
    if ((n >= 48) && (n <= 57))
      i1 = m - 1;
    while (true)
    {
      char[] arrayOfChar2 = this.buf;
      int i2 = m + 1;
      int i3 = arrayOfChar2[m];
      if ((i3 < 48) || (i3 > 57))
      {
        if (i3 == 46)
        {
          char[] arrayOfChar7 = this.buf;
          int i9 = i2 + 1;
          int i10 = arrayOfChar7[i2];
          if ((i10 >= 48) && (i10 <= 57))
            while (true)
            {
              char[] arrayOfChar8 = this.buf;
              i2 = i9 + 1;
              i3 = arrayOfChar8[i9];
              if ((i3 < 48) || (i3 > 57))
                break;
              i9 = i2;
            }
          this.matchStat = -1;
          return 0.0F;
        }
        this.bp = (i2 - 1);
        float f = Float.parseFloat(new String(this.buf, i1, -1 + (i2 - i1)));
        if (i3 == 44)
        {
          this.bp = (1 + this.bp);
          this.matchStat = 3;
          this.token = 16;
          return f;
          this.matchStat = -1;
          return 0.0F;
        }
        if (i3 == 125)
        {
          char[] arrayOfChar3 = this.buf;
          int i4 = 1 + this.bp;
          this.bp = i4;
          int i5 = arrayOfChar3[i4];
          if (i5 == 44)
          {
            this.token = 16;
            char[] arrayOfChar6 = this.buf;
            int i8 = 1 + this.bp;
            this.bp = i8;
            this.ch = arrayOfChar6[i8];
          }
          while (true)
          {
            this.matchStat = 4;
            return f;
            if (i5 == 93)
            {
              this.token = 15;
              char[] arrayOfChar5 = this.buf;
              int i7 = 1 + this.bp;
              this.bp = i7;
              this.ch = arrayOfChar5[i7];
            }
            else if (i5 == 125)
            {
              this.token = 13;
              char[] arrayOfChar4 = this.buf;
              int i6 = 1 + this.bp;
              this.bp = i6;
              this.ch = arrayOfChar4[i6];
            }
            else
            {
              if (i5 != 26)
                break;
              this.token = 20;
            }
          }
          this.matchStat = -1;
          return 0.0F;
        }
        this.matchStat = -1;
        return 0.0F;
      }
      m = i2;
    }
  }

  public final int scanFieldInt(char[] paramArrayOfChar)
  {
    this.matchStat = 0;
    int i = paramArrayOfChar.length;
    int j = 0;
    int i1;
    if (j < i)
      if (paramArrayOfChar[j] != this.buf[(j + this.bp)])
      {
        this.matchStat = -2;
        i1 = 0;
      }
    int i3;
    do
    {
      return i1;
      j++;
      break;
      int k = i + this.bp;
      char[] arrayOfChar1 = this.buf;
      int m = k + 1;
      int n = arrayOfChar1[k];
      if ((n >= 48) && (n <= 57))
      {
        i1 = digits[n];
        int i2;
        while (true)
        {
          char[] arrayOfChar2 = this.buf;
          i2 = m + 1;
          i3 = arrayOfChar2[m];
          if ((i3 < 48) || (i3 > 57))
            break;
          i1 = i1 * 10 + digits[i3];
          m = i2;
        }
        if (i3 == 46)
        {
          this.matchStat = -1;
          return 0;
        }
        this.bp = (i2 - 1);
        if (i1 < 0)
        {
          this.matchStat = -1;
          return 0;
        }
      }
      else
      {
        this.matchStat = -1;
        return 0;
      }
      if (i3 == 44)
      {
        this.bp = (1 + this.bp);
        this.matchStat = 3;
        this.token = 16;
        return i1;
      }
    }
    while (i3 != 125);
    char[] arrayOfChar3 = this.buf;
    int i4 = 1 + this.bp;
    this.bp = i4;
    int i5 = arrayOfChar3[i4];
    if (i5 == 44)
    {
      this.token = 16;
      char[] arrayOfChar6 = this.buf;
      int i8 = 1 + this.bp;
      this.bp = i8;
      this.ch = arrayOfChar6[i8];
    }
    while (true)
    {
      this.matchStat = 4;
      return i1;
      if (i5 == 93)
      {
        this.token = 15;
        char[] arrayOfChar5 = this.buf;
        int i7 = 1 + this.bp;
        this.bp = i7;
        this.ch = arrayOfChar5[i7];
      }
      else if (i5 == 125)
      {
        this.token = 13;
        char[] arrayOfChar4 = this.buf;
        int i6 = 1 + this.bp;
        this.bp = i6;
        this.ch = arrayOfChar4[i6];
      }
      else
      {
        if (i5 != 26)
          break;
        this.token = 20;
      }
    }
    this.matchStat = -1;
    return 0;
  }

  public final long scanFieldLong(char[] paramArrayOfChar)
  {
    int i = 0;
    this.matchStat = 0;
    int j = paramArrayOfChar.length;
    while (i < j)
    {
      if (paramArrayOfChar[i] != this.buf[(i + this.bp)])
      {
        this.matchStat = -2;
        return 0L;
      }
      i++;
    }
    int k = j + this.bp;
    char[] arrayOfChar1 = this.buf;
    int m = k + 1;
    int n = arrayOfChar1[k];
    long l;
    int i2;
    if ((n >= 48) && (n <= 57))
    {
      l = digits[n];
      int i1;
      while (true)
      {
        char[] arrayOfChar2 = this.buf;
        i1 = m + 1;
        i2 = arrayOfChar2[m];
        if ((i2 < 48) || (i2 > 57))
          break;
        l = l * 10L + digits[i2];
        m = i1;
      }
      if (i2 == 46)
      {
        this.token = -1;
        return 0L;
      }
      this.bp = (i1 - 1);
      if (l < 0L)
      {
        this.matchStat = -1;
        return 0L;
      }
    }
    else
    {
      this.matchStat = -1;
      return 0L;
    }
    if (i2 == 44)
    {
      this.bp = (1 + this.bp);
      this.matchStat = 3;
      this.token = 16;
      return l;
    }
    if (i2 == 125)
    {
      char[] arrayOfChar3 = this.buf;
      int i3 = 1 + this.bp;
      this.bp = i3;
      int i4 = arrayOfChar3[i3];
      if (i4 == 44)
      {
        this.token = 16;
        char[] arrayOfChar6 = this.buf;
        int i7 = 1 + this.bp;
        this.bp = i7;
        this.ch = arrayOfChar6[i7];
      }
      while (true)
      {
        this.matchStat = 4;
        return l;
        if (i4 == 93)
        {
          this.token = 15;
          char[] arrayOfChar5 = this.buf;
          int i6 = 1 + this.bp;
          this.bp = i6;
          this.ch = arrayOfChar5[i6];
        }
        else if (i4 == 125)
        {
          this.token = 13;
          char[] arrayOfChar4 = this.buf;
          int i5 = 1 + this.bp;
          this.bp = i5;
          this.ch = arrayOfChar4[i5];
        }
        else
        {
          if (i4 != 26)
            break;
          this.token = 20;
        }
      }
      this.matchStat = -1;
      return 0L;
    }
    this.matchStat = -1;
    return 0L;
  }

  public final String scanFieldString(char[] paramArrayOfChar)
  {
    int i = 0;
    this.matchStat = 0;
    int j = paramArrayOfChar.length;
    while (i < j)
    {
      if (paramArrayOfChar[i] != this.buf[(i + this.bp)])
      {
        this.matchStat = -2;
        return stringDefaultValue();
      }
      i++;
    }
    int k = j + this.bp;
    char[] arrayOfChar1 = this.buf;
    int m = k + 1;
    if (arrayOfChar1[k] != '"')
    {
      this.matchStat = -1;
      return stringDefaultValue();
    }
    int i1;
    for (int n = m; ; n = i1)
    {
      char[] arrayOfChar2 = this.buf;
      i1 = n + 1;
      int i2 = arrayOfChar2[n];
      char c;
      String str;
      if (i2 == 34)
      {
        this.bp = i1;
        c = this.buf[this.bp];
        this.ch = c;
        str = new String(this.buf, m, -1 + (i1 - m));
        if (c == ',')
        {
          char[] arrayOfChar7 = this.buf;
          int i8 = 1 + this.bp;
          this.bp = i8;
          this.ch = arrayOfChar7[i8];
          this.matchStat = 3;
          return str;
        }
      }
      else
      {
        if (i2 != 92)
          continue;
        this.matchStat = -1;
        return stringDefaultValue();
      }
      if (c == '}')
      {
        char[] arrayOfChar3 = this.buf;
        int i3 = 1 + this.bp;
        this.bp = i3;
        int i4 = arrayOfChar3[i3];
        if (i4 == 44)
        {
          this.token = 16;
          char[] arrayOfChar6 = this.buf;
          int i7 = 1 + this.bp;
          this.bp = i7;
          this.ch = arrayOfChar6[i7];
        }
        while (true)
        {
          this.matchStat = 4;
          return str;
          if (i4 == 93)
          {
            this.token = 15;
            char[] arrayOfChar5 = this.buf;
            int i6 = 1 + this.bp;
            this.bp = i6;
            this.ch = arrayOfChar5[i6];
          }
          else if (i4 == 125)
          {
            this.token = 13;
            char[] arrayOfChar4 = this.buf;
            int i5 = 1 + this.bp;
            this.bp = i5;
            this.ch = arrayOfChar4[i5];
          }
          else
          {
            if (i4 != 26)
              break;
            this.token = 20;
          }
        }
        this.matchStat = -1;
        return stringDefaultValue();
      }
      this.matchStat = -1;
      return stringDefaultValue();
    }
  }

  public final ArrayList<String> scanFieldStringArray(char[] paramArrayOfChar)
  {
    return (ArrayList)scanFieldStringArray(paramArrayOfChar, null);
  }

  public final Collection<String> scanFieldStringArray(char[] paramArrayOfChar, Class<?> paramClass)
  {
    int i = 0;
    this.matchStat = 0;
    Object localObject;
    int j;
    if (paramClass.isAssignableFrom(HashSet.class))
    {
      localObject = new HashSet();
      j = paramArrayOfChar.length;
    }
    while (true)
    {
      while (true)
      {
        if (i >= j)
          break label118;
        if (paramArrayOfChar[i] != this.buf[(i + this.bp)])
        {
          this.matchStat = -2;
          return null;
          if (paramClass.isAssignableFrom(ArrayList.class))
          {
            localObject = new ArrayList();
            break;
          }
          try
          {
            localObject = (Collection)paramClass.newInstance();
          }
          catch (Exception localException)
          {
            throw new JSONException(localException.getMessage(), localException);
          }
        }
      }
      i++;
    }
    label118: int k = j + this.bp;
    char[] arrayOfChar1 = this.buf;
    int m = k + 1;
    if (arrayOfChar1[k] != '[')
    {
      this.matchStat = -1;
      return null;
    }
    char[] arrayOfChar2 = this.buf;
    int n = m + 1;
    if (arrayOfChar2[m] != '"')
    {
      this.matchStat = -1;
      return null;
    }
    int i2;
    for (int i1 = n; ; i1 = i2)
    {
      char[] arrayOfChar3 = this.buf;
      i2 = i1 + 1;
      int i3 = arrayOfChar3[i1];
      int i6;
      if (i3 == 34)
      {
        ((Collection)localObject).add(new String(this.buf, n, -1 + (i2 - n)));
        char[] arrayOfChar4 = this.buf;
        m = i2 + 1;
        int i4 = arrayOfChar4[i2];
        if (i4 == 44)
          break;
        if (i4 != 93)
          break label343;
        char[] arrayOfChar5 = this.buf;
        int i5 = m + 1;
        i6 = arrayOfChar5[m];
        this.bp = i5;
        if (i6 != 44)
          break label350;
        this.ch = this.buf[this.bp];
        this.matchStat = 3;
        return localObject;
      }
      if (i3 == 92)
      {
        this.matchStat = -1;
        return null;
        label343: this.matchStat = -1;
        return null;
        label350: if (i6 == 125)
        {
          char c = this.buf[this.bp];
          if (c == ',')
          {
            this.token = 16;
            char[] arrayOfChar8 = this.buf;
            int i9 = 1 + this.bp;
            this.bp = i9;
            this.ch = arrayOfChar8[i9];
          }
          while (true)
          {
            this.matchStat = 4;
            return localObject;
            if (c == ']')
            {
              this.token = 15;
              char[] arrayOfChar7 = this.buf;
              int i8 = 1 + this.bp;
              this.bp = i8;
              this.ch = arrayOfChar7[i8];
            }
            else if (c == '}')
            {
              this.token = 13;
              char[] arrayOfChar6 = this.buf;
              int i7 = 1 + this.bp;
              this.bp = i7;
              this.ch = arrayOfChar6[i7];
            }
            else
            {
              if (c != '\032')
                break;
              this.token = 20;
              this.ch = c;
            }
          }
          this.matchStat = -1;
          return null;
        }
        this.matchStat = -1;
        return null;
      }
    }
  }

  public final String scanFieldSymbol(char[] paramArrayOfChar, SymbolTable paramSymbolTable)
  {
    int i = 0;
    this.matchStat = 0;
    int j = paramArrayOfChar.length;
    for (int k = 0; k < j; k++)
      if (paramArrayOfChar[k] != this.buf[(k + this.bp)])
      {
        this.matchStat = -2;
        return null;
      }
    int m = j + this.bp;
    char[] arrayOfChar1 = this.buf;
    int n = m + 1;
    if (arrayOfChar1[m] != '"')
    {
      this.matchStat = -1;
      return null;
    }
    int i2;
    for (int i1 = n; ; i1 = i2)
    {
      char[] arrayOfChar2 = this.buf;
      i2 = i1 + 1;
      int i3 = arrayOfChar2[i1];
      char c;
      String str;
      if (i3 == 34)
      {
        this.bp = i2;
        c = this.buf[this.bp];
        this.ch = c;
        str = paramSymbolTable.addSymbol(this.buf, n, -1 + (i2 - n), i);
        if (c == ',')
        {
          char[] arrayOfChar7 = this.buf;
          int i9 = 1 + this.bp;
          this.bp = i9;
          this.ch = arrayOfChar7[i9];
          this.matchStat = 3;
          return str;
        }
      }
      else
      {
        i = i3 + i * 31;
        if (i3 != 92)
          continue;
        this.matchStat = -1;
        return null;
      }
      if (c == '}')
      {
        char[] arrayOfChar3 = this.buf;
        int i4 = 1 + this.bp;
        this.bp = i4;
        int i5 = arrayOfChar3[i4];
        if (i5 == 44)
        {
          this.token = 16;
          char[] arrayOfChar6 = this.buf;
          int i8 = 1 + this.bp;
          this.bp = i8;
          this.ch = arrayOfChar6[i8];
        }
        while (true)
        {
          this.matchStat = 4;
          return str;
          if (i5 == 93)
          {
            this.token = 15;
            char[] arrayOfChar5 = this.buf;
            int i7 = 1 + this.bp;
            this.bp = i7;
            this.ch = arrayOfChar5[i7];
          }
          else if (i5 == 125)
          {
            this.token = 13;
            char[] arrayOfChar4 = this.buf;
            int i6 = 1 + this.bp;
            this.bp = i6;
            this.ch = arrayOfChar4[i6];
          }
          else
          {
            if (i5 != 26)
              break;
            this.token = 20;
          }
        }
        this.matchStat = -1;
        return null;
      }
      this.matchStat = -1;
      return null;
    }
  }

  public final boolean scanISO8601DateIfMatch()
  {
    int i = this.buflen - this.bp;
    if (i < this.ISO8601_LEN_0)
      return false;
    int j = this.buf[this.bp];
    int k = this.buf[(1 + this.bp)];
    int m = this.buf[(2 + this.bp)];
    int n = this.buf[(3 + this.bp)];
    if ((j != 49) && (j != 50))
      return false;
    if ((k < 48) || (k > 57))
      return false;
    if ((m < 48) || (m > 57))
      return false;
    if ((n < 48) || (n > 57))
      return false;
    if (this.buf[(4 + this.bp)] != '-')
      return false;
    int i1 = this.buf[(5 + this.bp)];
    int i2 = this.buf[(6 + this.bp)];
    if (i1 == 48)
    {
      if ((i2 < 49) || (i2 > 57))
        return false;
    }
    else if (i1 == 49)
    {
      if ((i2 != 48) && (i2 != 49) && (i2 != 50))
        return false;
    }
    else
      return false;
    if (this.buf[(7 + this.bp)] != '-')
      return false;
    int i3 = this.buf[(8 + this.bp)];
    int i4 = this.buf[(9 + this.bp)];
    if (i3 == 48)
    {
      if ((i4 < 49) || (i4 > 57))
        return false;
    }
    else if ((i3 == 49) || (i3 == 50))
    {
      if ((i4 < 48) || (i4 > 57))
        return false;
    }
    else if (i3 == 51)
    {
      if ((i4 != 48) && (i4 != 49))
        return false;
    }
    else
      return false;
    Locale localLocale = Locale.getDefault();
    this.calendar = Calendar.getInstance(TimeZone.getDefault(), localLocale);
    int i5 = 1000 * digits[j] + 100 * digits[k] + 10 * digits[m] + digits[n];
    int i6 = -1 + (10 * digits[i1] + digits[i2]);
    int i7 = 10 * digits[i3] + digits[i4];
    this.calendar.set(1, i5);
    this.calendar.set(2, i6);
    this.calendar.set(5, i7);
    int i8 = this.buf[(10 + this.bp)];
    if (i8 == 84)
    {
      if (i < this.ISO8601_LEN_1)
        return false;
    }
    else
    {
      if ((i8 == 34) || (i8 == 26))
      {
        this.calendar.set(11, 0);
        this.calendar.set(12, 0);
        this.calendar.set(13, 0);
        this.calendar.set(14, 0);
        char[] arrayOfChar1 = this.buf;
        int i9 = 10 + this.bp;
        this.bp = i9;
        this.ch = arrayOfChar1[i9];
        this.token = 5;
        return true;
      }
      return false;
    }
    int i10 = this.buf[(11 + this.bp)];
    int i11 = this.buf[(12 + this.bp)];
    if (i10 == 48)
    {
      if ((i11 < 48) || (i11 > 57))
        return false;
    }
    else if (i10 == 49)
    {
      if ((i11 < 48) || (i11 > 57))
        return false;
    }
    else if (i10 == 50)
    {
      if ((i11 < 48) || (i11 > 52))
        return false;
    }
    else
      return false;
    if (this.buf[(13 + this.bp)] != ':')
      return false;
    int i12 = this.buf[(14 + this.bp)];
    int i13 = this.buf[(15 + this.bp)];
    if ((i12 >= 48) && (i12 <= 53))
    {
      if ((i13 < 48) || (i13 > 57))
        return false;
    }
    else if (i12 == 54)
    {
      if (i13 != 48)
        return false;
    }
    else
      return false;
    if (this.buf[(16 + this.bp)] != ':')
      return false;
    int i14 = this.buf[(17 + this.bp)];
    int i15 = this.buf[(18 + this.bp)];
    if ((i14 >= 48) && (i14 <= 53))
    {
      if ((i15 < 48) || (i15 > 57))
        return false;
    }
    else if (i14 == 54)
    {
      if (i15 != 48)
        return false;
    }
    else
      return false;
    int i16 = 10 * digits[i10] + digits[i11];
    int i17 = 10 * digits[i12] + digits[i13];
    int i18 = 10 * digits[i14] + digits[i15];
    this.calendar.set(11, i16);
    this.calendar.set(12, i17);
    this.calendar.set(13, i18);
    if (this.buf[(19 + this.bp)] == '.')
    {
      if (i < this.ISO8601_LEN_2)
        return false;
    }
    else
    {
      this.calendar.set(14, 0);
      char[] arrayOfChar2 = this.buf;
      int i19 = 19 + this.bp;
      this.bp = i19;
      this.ch = arrayOfChar2[i19];
      this.token = 5;
      return true;
    }
    int i20 = this.buf[(20 + this.bp)];
    int i21 = this.buf[(21 + this.bp)];
    int i22 = this.buf[(22 + this.bp)];
    if ((i20 < 48) || (i20 > 57))
      return false;
    if ((i21 < 48) || (i21 > 57))
      return false;
    if ((i22 < 48) || (i22 > 57))
      return false;
    int i23 = 100 * digits[i20] + 10 * digits[i21] + digits[i22];
    this.calendar.set(14, i23);
    char[] arrayOfChar3 = this.buf;
    int i24 = 23 + this.bp;
    this.bp = i24;
    this.ch = arrayOfChar3[i24];
    this.token = 5;
    return true;
  }

  public final void scanIdent()
  {
    this.np = (-1 + this.bp);
    this.hasSpecial = false;
    do
    {
      this.sp = (1 + this.sp);
      char[] arrayOfChar = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      this.ch = arrayOfChar[i];
    }
    while (Character.isLetterOrDigit(this.ch));
    String str = stringVal();
    Integer localInteger = this.keywods.getKeyword(str);
    if (localInteger != null)
    {
      this.token = localInteger.intValue();
      return;
    }
    this.token = 18;
  }

  public final void scanNullOrNew()
  {
    char[] arrayOfChar1 = this.buf;
    int i = this.bp;
    this.bp = (i + 1);
    if (arrayOfChar1[i] != 'n')
      throw new JSONException("error parse null or new");
    if (this.buf[this.bp] == 'u')
    {
      this.bp = (1 + this.bp);
      char[] arrayOfChar3 = this.buf;
      int k = this.bp;
      this.bp = (k + 1);
      if (arrayOfChar3[k] != 'l')
        throw new JSONException("error parse true");
      char[] arrayOfChar4 = this.buf;
      int m = this.bp;
      this.bp = (m + 1);
      if (arrayOfChar4[m] != 'l')
        throw new JSONException("error parse true");
      this.ch = this.buf[this.bp];
      if ((this.ch == ' ') || (this.ch == ',') || (this.ch == '}') || (this.ch == ']') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\032') || (this.ch == '\f') || (this.ch == '\b'))
      {
        this.token = 8;
        return;
      }
      throw new JSONException("scan true error");
    }
    if (this.buf[this.bp] != 'e')
      throw new JSONException("error parse e");
    this.bp = (1 + this.bp);
    char[] arrayOfChar2 = this.buf;
    int j = this.bp;
    this.bp = (j + 1);
    if (arrayOfChar2[j] != 'w')
      throw new JSONException("error parse w");
    this.ch = this.buf[this.bp];
    if ((this.ch == ' ') || (this.ch == ',') || (this.ch == '}') || (this.ch == ']') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\032') || (this.ch == '\f') || (this.ch == '\b'))
    {
      this.token = 9;
      return;
    }
    throw new JSONException("scan true error");
  }

  public final void scanNumber()
  {
    this.np = this.bp;
    char[] arrayOfChar10;
    int i7;
    if (this.ch == '-')
    {
      this.sp = (1 + this.sp);
      arrayOfChar10 = this.buf;
      i7 = 1 + this.bp;
      this.bp = i7;
    }
    char[] arrayOfChar9;
    int i6;
    for (this.ch = arrayOfChar10[i7]; (this.ch >= '0') && (this.ch <= '9'); this.ch = arrayOfChar9[i6])
    {
      this.sp = (1 + this.sp);
      arrayOfChar9 = this.buf;
      i6 = 1 + this.bp;
      this.bp = i6;
    }
    int i = this.ch;
    int j = 0;
    if (i == 46)
    {
      this.sp = (1 + this.sp);
      char[] arrayOfChar7 = this.buf;
      int i4 = 1 + this.bp;
      this.bp = i4;
      char[] arrayOfChar8;
      int i5;
      for (this.ch = arrayOfChar7[i4]; (this.ch >= '0') && (this.ch <= '9'); this.ch = arrayOfChar8[i5])
      {
        this.sp = (1 + this.sp);
        arrayOfChar8 = this.buf;
        i5 = 1 + this.bp;
        this.bp = i5;
      }
      j = 1;
    }
    if (this.ch == 'L')
    {
      this.sp = (1 + this.sp);
      char[] arrayOfChar6 = this.buf;
      int i3 = 1 + this.bp;
      this.bp = i3;
      this.ch = arrayOfChar6[i3];
    }
    while (j != 0)
    {
      this.token = 3;
      return;
      if (this.ch == 'S')
      {
        this.sp = (1 + this.sp);
        char[] arrayOfChar5 = this.buf;
        int i2 = 1 + this.bp;
        this.bp = i2;
        this.ch = arrayOfChar5[i2];
      }
      else if (this.ch == 'B')
      {
        this.sp = (1 + this.sp);
        char[] arrayOfChar4 = this.buf;
        int i1 = 1 + this.bp;
        this.bp = i1;
        this.ch = arrayOfChar4[i1];
      }
      else
      {
        if (this.ch == 'F')
          this.sp = (1 + this.sp);
        while (true)
        {
          label409: char[] arrayOfChar3 = this.buf;
          int n = 1 + this.bp;
          this.bp = n;
          this.ch = arrayOfChar3[n];
          do
          {
            j = 1;
            break;
            if (this.ch == 'D')
            {
              this.sp = (1 + this.sp);
              break label409;
            }
            if ((this.ch != 'e') && (this.ch != 'E'))
              break;
            this.sp = (1 + this.sp);
            char[] arrayOfChar1 = this.buf;
            int k = 1 + this.bp;
            this.bp = k;
            this.ch = arrayOfChar1[k];
            if ((this.ch == '+') || (this.ch == '-'));
            while ((this.ch >= '0') && (this.ch <= '9'))
            {
              this.sp = (1 + this.sp);
              char[] arrayOfChar2 = this.buf;
              int m = 1 + this.bp;
              this.bp = m;
              this.ch = arrayOfChar2[m];
            }
            if (this.ch == 'D')
              break label409;
          }
          while (this.ch != 'F');
        }
      }
    }
    this.token = 2;
  }

  public final void scanSet()
  {
    char[] arrayOfChar1 = this.buf;
    int i = this.bp;
    this.bp = (i + 1);
    if (arrayOfChar1[i] != 'S')
      throw new JSONException("error parse true");
    char[] arrayOfChar2 = this.buf;
    int j = this.bp;
    this.bp = (j + 1);
    if (arrayOfChar2[j] != 'e')
      throw new JSONException("error parse true");
    char[] arrayOfChar3 = this.buf;
    int k = this.bp;
    this.bp = (k + 1);
    if (arrayOfChar3[k] != 't')
      throw new JSONException("error parse true");
    this.ch = this.buf[this.bp];
    if ((this.ch == ' ') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\f') || (this.ch == '\b') || (this.ch == '[') || (this.ch == '('))
    {
      this.token = 21;
      return;
    }
    throw new JSONException("scan set error");
  }

  public final void scanString()
  {
    this.np = this.bp;
    this.hasSpecial = false;
    while (true)
    {
      char[] arrayOfChar1 = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      char c1 = arrayOfChar1[i];
      if (c1 == '"')
        break;
      if (c1 == '\\')
      {
        if (!this.hasSpecial)
        {
          this.hasSpecial = true;
          if (this.sp >= this.sbuf.length)
          {
            int i11 = 2 * this.sbuf.length;
            if (this.sp > i11)
              i11 = this.sp;
            char[] arrayOfChar11 = new char[i11];
            System.arraycopy(this.sbuf, 0, arrayOfChar11, 0, this.sbuf.length);
            this.sbuf = arrayOfChar11;
          }
          System.arraycopy(this.buf, 1 + this.np, this.sbuf, 0, this.sp);
        }
        char[] arrayOfChar4 = this.buf;
        int m = 1 + this.bp;
        this.bp = m;
        char c2 = arrayOfChar4[m];
        switch (c2)
        {
        default:
          this.ch = c2;
          throw new JSONException("unclosed string : " + c2);
        case '"':
          putChar('"');
          break;
        case '\\':
          putChar('\\');
          break;
        case '/':
          putChar('/');
          break;
        case 'b':
          putChar('\b');
          break;
        case 'F':
        case 'f':
          putChar('\f');
          break;
        case 'n':
          putChar('\n');
          break;
        case 'r':
          putChar('\r');
          break;
        case 't':
          putChar('\t');
          break;
        case 'x':
          char[] arrayOfChar9 = this.buf;
          int i7 = 1 + this.bp;
          this.bp = i7;
          int i8 = arrayOfChar9[i7];
          char[] arrayOfChar10 = this.buf;
          int i9 = 1 + this.bp;
          this.bp = i9;
          int i10 = arrayOfChar10[i9];
          putChar((char)(16 * digits[i8] + digits[i10]));
          break;
        case 'u':
          char[] arrayOfChar5 = this.buf;
          int n = 1 + this.bp;
          this.bp = n;
          int i1 = arrayOfChar5[n];
          char[] arrayOfChar6 = this.buf;
          int i2 = 1 + this.bp;
          this.bp = i2;
          int i3 = arrayOfChar6[i2];
          char[] arrayOfChar7 = this.buf;
          int i4 = 1 + this.bp;
          this.bp = i4;
          int i5 = arrayOfChar7[i4];
          char[] arrayOfChar8 = this.buf;
          int i6 = 1 + this.bp;
          this.bp = i6;
          putChar((char)Integer.parseInt(new String(new char[] { i1, i3, i5, arrayOfChar8[i6] }), 16));
          break;
        }
      }
      else if (!this.hasSpecial)
      {
        this.sp = (1 + this.sp);
      }
      else if (this.sp == this.sbuf.length)
      {
        putChar(c1);
      }
      else
      {
        char[] arrayOfChar3 = this.sbuf;
        int k = this.sp;
        this.sp = (k + 1);
        arrayOfChar3[k] = c1;
      }
    }
    this.token = 4;
    char[] arrayOfChar2 = this.buf;
    int j = 1 + this.bp;
    this.bp = j;
    this.ch = arrayOfChar2[j];
  }

  public final void scanStringSingleQuote()
  {
    this.np = this.bp;
    this.hasSpecial = false;
    while (true)
    {
      char[] arrayOfChar1 = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      char c1 = arrayOfChar1[i];
      if (c1 == '\'')
        break;
      if (c1 == '\032')
        throw new JSONException("unclosed single-quote string");
      if (c1 == '\\')
      {
        if (!this.hasSpecial)
        {
          this.hasSpecial = true;
          if (this.sp > this.sbuf.length)
          {
            char[] arrayOfChar11 = new char[2 * this.sp];
            System.arraycopy(this.sbuf, 0, arrayOfChar11, 0, this.sbuf.length);
            this.sbuf = arrayOfChar11;
          }
          System.arraycopy(this.buf, 1 + this.np, this.sbuf, 0, this.sp);
        }
        char[] arrayOfChar4 = this.buf;
        int m = 1 + this.bp;
        this.bp = m;
        char c2 = arrayOfChar4[m];
        switch (c2)
        {
        default:
          this.ch = c2;
          throw new JSONException("unclosed single-quote string");
        case '"':
          putChar('"');
          break;
        case '\\':
          putChar('\\');
          break;
        case '/':
          putChar('/');
          break;
        case '\'':
          putChar('\'');
          break;
        case 'b':
          putChar('\b');
          break;
        case 'F':
        case 'f':
          putChar('\f');
          break;
        case 'n':
          putChar('\n');
          break;
        case 'r':
          putChar('\r');
          break;
        case 't':
          putChar('\t');
          break;
        case 'x':
          char[] arrayOfChar9 = this.buf;
          int i7 = 1 + this.bp;
          this.bp = i7;
          int i8 = arrayOfChar9[i7];
          char[] arrayOfChar10 = this.buf;
          int i9 = 1 + this.bp;
          this.bp = i9;
          int i10 = arrayOfChar10[i9];
          putChar((char)(16 * digits[i8] + digits[i10]));
          break;
        case 'u':
          char[] arrayOfChar5 = this.buf;
          int n = 1 + this.bp;
          this.bp = n;
          int i1 = arrayOfChar5[n];
          char[] arrayOfChar6 = this.buf;
          int i2 = 1 + this.bp;
          this.bp = i2;
          int i3 = arrayOfChar6[i2];
          char[] arrayOfChar7 = this.buf;
          int i4 = 1 + this.bp;
          this.bp = i4;
          int i5 = arrayOfChar7[i4];
          char[] arrayOfChar8 = this.buf;
          int i6 = 1 + this.bp;
          this.bp = i6;
          putChar((char)Integer.parseInt(new String(new char[] { i1, i3, i5, arrayOfChar8[i6] }), 16));
          break;
        }
      }
      else if (!this.hasSpecial)
      {
        this.sp = (1 + this.sp);
      }
      else if (this.sp == this.sbuf.length)
      {
        putChar(c1);
      }
      else
      {
        char[] arrayOfChar3 = this.sbuf;
        int k = this.sp;
        this.sp = (k + 1);
        arrayOfChar3[k] = c1;
      }
    }
    this.token = 4;
    char[] arrayOfChar2 = this.buf;
    int j = 1 + this.bp;
    this.bp = j;
    this.ch = arrayOfChar2[j];
  }

  public final String scanSymbol(SymbolTable paramSymbolTable)
  {
    skipWhitespace();
    if (this.ch == '"')
      return scanSymbol(paramSymbolTable, '"');
    if (this.ch == '\'')
    {
      if (!isEnabled(Feature.AllowSingleQuotes))
        throw new JSONException("syntax error");
      return scanSymbol(paramSymbolTable, '\'');
    }
    if (this.ch == '}')
    {
      char[] arrayOfChar2 = this.buf;
      int j = 1 + this.bp;
      this.bp = j;
      this.ch = arrayOfChar2[j];
      this.token = 13;
      return null;
    }
    if (this.ch == ',')
    {
      char[] arrayOfChar1 = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      this.ch = arrayOfChar1[i];
      this.token = 16;
      return null;
    }
    if (this.ch == '\032')
    {
      this.token = 20;
      return null;
    }
    if (!isEnabled(Feature.AllowUnQuotedFieldNames))
      throw new JSONException("syntax error");
    return scanSymbolUnQuoted(paramSymbolTable);
  }

  public final String scanSymbol(SymbolTable paramSymbolTable, char paramChar)
  {
    this.np = this.bp;
    this.sp = 0;
    int i = 0;
    int j = 0;
    while (true)
    {
      char[] arrayOfChar1 = this.buf;
      int k = 1 + this.bp;
      this.bp = k;
      char c1 = arrayOfChar1[k];
      if (c1 == paramChar)
        break;
      if (c1 == '\032')
        throw new JSONException("unclosed.str");
      if (c1 == '\\')
      {
        if (i == 0)
        {
          if (this.sp >= this.sbuf.length)
          {
            int i10 = 2 * this.sbuf.length;
            if (this.sp > i10)
              i10 = this.sp;
            char[] arrayOfChar9 = new char[i10];
            System.arraycopy(this.sbuf, 0, arrayOfChar9, 0, this.sbuf.length);
            this.sbuf = arrayOfChar9;
          }
          System.arraycopy(this.buf, 1 + this.np, this.sbuf, 0, this.sp);
          i = 1;
        }
        char[] arrayOfChar4 = this.buf;
        int i1 = 1 + this.bp;
        this.bp = i1;
        char c2 = arrayOfChar4[i1];
        switch (c2)
        {
        default:
          this.ch = c2;
          throw new JSONException("unclosed.str.lit");
        case '"':
          j = 34 + j * 31;
          putChar('"');
          break;
        case '\\':
          j = 92 + j * 31;
          putChar('\\');
          break;
        case '/':
          j = 47 + j * 31;
          putChar('/');
          break;
        case 'b':
          j = 8 + j * 31;
          putChar('\b');
          break;
        case 'F':
        case 'f':
          j = 12 + j * 31;
          putChar('\f');
          break;
        case 'n':
          j = 10 + j * 31;
          putChar('\n');
          break;
        case 'r':
          j = 13 + j * 31;
          putChar('\r');
          break;
        case 't':
          j = 9 + j * 31;
          putChar('\t');
          break;
        case 'u':
          char[] arrayOfChar5 = this.buf;
          int i2 = 1 + this.bp;
          this.bp = i2;
          int i3 = arrayOfChar5[i2];
          char[] arrayOfChar6 = this.buf;
          int i4 = 1 + this.bp;
          this.bp = i4;
          int i5 = arrayOfChar6[i4];
          char[] arrayOfChar7 = this.buf;
          int i6 = 1 + this.bp;
          this.bp = i6;
          int i7 = arrayOfChar7[i6];
          char[] arrayOfChar8 = this.buf;
          int i8 = 1 + this.bp;
          this.bp = i8;
          int i9 = Integer.parseInt(new String(new char[] { i3, i5, i7, arrayOfChar8[i8] }), 16);
          j = i9 + j * 31;
          putChar((char)i9);
          break;
        }
      }
      else
      {
        j = c1 + j * 31;
        if (i == 0)
        {
          this.sp = (1 + this.sp);
        }
        else if (this.sp == this.sbuf.length)
        {
          putChar(c1);
        }
        else
        {
          char[] arrayOfChar3 = this.sbuf;
          int n = this.sp;
          this.sp = (n + 1);
          arrayOfChar3[n] = c1;
        }
      }
    }
    this.token = 4;
    char[] arrayOfChar2 = this.buf;
    int m = 1 + this.bp;
    this.bp = m;
    this.ch = arrayOfChar2[m];
    if (i == 0)
      return paramSymbolTable.addSymbol(this.buf, 1 + this.np, this.sp, j);
    return paramSymbolTable.addSymbol(this.sbuf, 0, this.sp, j);
  }

  public final String scanSymbolUnQuoted(SymbolTable paramSymbolTable)
  {
    boolean[] arrayOfBoolean1 = CharTypes.firstIdentifierFlags;
    int i = this.ch;
    if ((this.ch >= arrayOfBoolean1.length) || (arrayOfBoolean1[i] != 0));
    for (int j = 1; j == 0; j = 0)
      throw new JSONException("illegal identifier : " + this.ch);
    boolean[] arrayOfBoolean2 = CharTypes.identifierFlags;
    this.np = this.bp;
    for (this.sp = 1; ; this.sp = (1 + this.sp))
    {
      char[] arrayOfChar = this.buf;
      int k = 1 + this.bp;
      this.bp = k;
      int m = arrayOfChar[k];
      if ((m < arrayOfBoolean2.length) && (arrayOfBoolean2[m] == 0))
        break;
      i = m + i * 31;
    }
    this.ch = this.buf[this.bp];
    this.token = 18;
    if ((this.sp == 4) && (i == 3392903) && (this.buf[this.np] == 'n') && (this.buf[(1 + this.np)] == 'u') && (this.buf[(2 + this.np)] == 'l') && (this.buf[(3 + this.np)] == 'l'))
      return null;
    return paramSymbolTable.addSymbol(this.buf, this.np, this.sp, i);
  }

  public final void scanTreeSet()
  {
    char[] arrayOfChar1 = this.buf;
    int i = this.bp;
    this.bp = (i + 1);
    if (arrayOfChar1[i] != 'T')
      throw new JSONException("error parse true");
    char[] arrayOfChar2 = this.buf;
    int j = this.bp;
    this.bp = (j + 1);
    if (arrayOfChar2[j] != 'r')
      throw new JSONException("error parse true");
    char[] arrayOfChar3 = this.buf;
    int k = this.bp;
    this.bp = (k + 1);
    if (arrayOfChar3[k] != 'e')
      throw new JSONException("error parse true");
    char[] arrayOfChar4 = this.buf;
    int m = this.bp;
    this.bp = (m + 1);
    if (arrayOfChar4[m] != 'e')
      throw new JSONException("error parse true");
    char[] arrayOfChar5 = this.buf;
    int n = this.bp;
    this.bp = (n + 1);
    if (arrayOfChar5[n] != 'S')
      throw new JSONException("error parse true");
    char[] arrayOfChar6 = this.buf;
    int i1 = this.bp;
    this.bp = (i1 + 1);
    if (arrayOfChar6[i1] != 'e')
      throw new JSONException("error parse true");
    char[] arrayOfChar7 = this.buf;
    int i2 = this.bp;
    this.bp = (i2 + 1);
    if (arrayOfChar7[i2] != 't')
      throw new JSONException("error parse true");
    this.ch = this.buf[this.bp];
    if ((this.ch == ' ') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\f') || (this.ch == '\b') || (this.ch == '[') || (this.ch == '('))
    {
      this.token = 22;
      return;
    }
    throw new JSONException("scan set error");
  }

  public final void scanTrue()
  {
    char[] arrayOfChar1 = this.buf;
    int i = this.bp;
    this.bp = (i + 1);
    if (arrayOfChar1[i] != 't')
      throw new JSONException("error parse true");
    char[] arrayOfChar2 = this.buf;
    int j = this.bp;
    this.bp = (j + 1);
    if (arrayOfChar2[j] != 'r')
      throw new JSONException("error parse true");
    char[] arrayOfChar3 = this.buf;
    int k = this.bp;
    this.bp = (k + 1);
    if (arrayOfChar3[k] != 'u')
      throw new JSONException("error parse true");
    char[] arrayOfChar4 = this.buf;
    int m = this.bp;
    this.bp = (m + 1);
    if (arrayOfChar4[m] != 'e')
      throw new JSONException("error parse true");
    this.ch = this.buf[this.bp];
    if ((this.ch == ' ') || (this.ch == ',') || (this.ch == '}') || (this.ch == ']') || (this.ch == '\n') || (this.ch == '\r') || (this.ch == '\t') || (this.ch == '\032') || (this.ch == '\f') || (this.ch == '\b'))
    {
      this.token = 6;
      return;
    }
    throw new JSONException("scan true error");
  }

  public final int scanType(String paramString)
  {
    int i = 0;
    this.matchStat = 0;
    int j = typeFieldName.length;
    for (int k = 0; k < j; k++)
      if (typeFieldName[k] != this.buf[(k + this.bp)])
        return -2;
    int m = j + this.bp;
    int n = paramString.length();
    while (i < n)
    {
      if (paramString.charAt(i) != this.buf[(m + i)])
        return -1;
      i++;
    }
    int i1 = m + n;
    if (this.buf[i1] != '"')
      return -1;
    char[] arrayOfChar1 = this.buf;
    int i2 = i1 + 1;
    this.ch = arrayOfChar1[i2];
    if (this.ch == ',')
    {
      char[] arrayOfChar6 = this.buf;
      int i3 = i2 + 1;
      this.ch = arrayOfChar6[i3];
      this.bp = i3;
      this.token = 16;
      return 3;
    }
    if (this.ch == '}')
    {
      char[] arrayOfChar2 = this.buf;
      i2++;
      this.ch = arrayOfChar2[i2];
      if (this.ch != ',')
        break label258;
      this.token = 16;
      char[] arrayOfChar5 = this.buf;
      i2++;
      this.ch = arrayOfChar5[i2];
    }
    while (true)
    {
      this.matchStat = 4;
      this.bp = i2;
      return this.matchStat;
      label258: if (this.ch == ']')
      {
        this.token = 15;
        char[] arrayOfChar4 = this.buf;
        i2++;
        this.ch = arrayOfChar4[i2];
      }
      else if (this.ch == '}')
      {
        this.token = 13;
        char[] arrayOfChar3 = this.buf;
        i2++;
        this.ch = arrayOfChar3[i2];
      }
      else
      {
        if (this.ch != '\032')
          break;
        this.token = 20;
      }
    }
    return -1;
  }

  public final void setResetFlag(boolean paramBoolean)
  {
    this.resetFlag = paramBoolean;
  }

  public final void skipWhitespace()
  {
    while (whitespaceFlags[this.ch] != 0)
    {
      char[] arrayOfChar = this.buf;
      int i = 1 + this.bp;
      this.bp = i;
      this.ch = arrayOfChar[i];
    }
  }

  public final String stringDefaultValue()
  {
    if (isEnabled(Feature.InitStringFieldAsEmpty))
      return "";
    return null;
  }

  public final String stringVal()
  {
    if (!this.hasSpecial)
      return new String(this.buf, 1 + this.np, this.sp);
    return new String(this.sbuf, 0, this.sp);
  }

  public final String symbol(SymbolTable paramSymbolTable)
  {
    if (paramSymbolTable == null)
    {
      if (!this.hasSpecial)
        return new String(this.buf, 1 + this.np, this.sp);
      return new String(this.sbuf, 0, this.sp);
    }
    if (!this.hasSpecial)
      return paramSymbolTable.addSymbol(this.buf, 1 + this.np, this.sp);
    return paramSymbolTable.addSymbol(this.sbuf, 0, this.sp);
  }

  public final int token()
  {
    return this.token;
  }

  public final String tokenName()
  {
    return JSONToken.name(this.token);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.JSONScanner
 * JD-Core Version:    0.6.2
 */