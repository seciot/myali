package com.alipay.android.app.json;

import android.text.TextUtils;
import com.alipay.android.app.util.StringPool;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public final class JsonReader
  implements Closeable
{
  private final StringPool a = new StringPool();
  private final Reader b;
  private boolean c = false;
  private final char[] d = new char[1024];
  private int e = 0;
  private int f = 0;
  private int g = 1;
  private int h = 1;
  private final List i = new ArrayList();
  private JsonToken j;
  private String k;
  private String l;
  private int m;
  private int n;
  private boolean o;

  public JsonReader(Reader paramReader)
  {
    a(b.f);
    this.o = false;
    if (paramReader == null)
      throw new NullPointerException("in == null");
    this.b = paramReader;
  }

  private JsonToken a(boolean paramBoolean)
  {
    if (paramBoolean)
      b(b.b);
    while (true)
      switch (m())
      {
      default:
        this.e = (-1 + this.e);
        return j();
        switch (m())
        {
        case 44:
        default:
          throw a("Unterminated array");
        case 93:
          i();
          JsonToken localJsonToken3 = JsonToken.b;
          this.j = localJsonToken3;
          return localJsonToken3;
        case 59:
        }
        n();
      case 93:
      case 44:
      case 59:
      }
    if (paramBoolean)
    {
      i();
      JsonToken localJsonToken2 = JsonToken.b;
      this.j = localJsonToken2;
      return localJsonToken2;
    }
    n();
    this.e = (-1 + this.e);
    this.l = "null";
    JsonToken localJsonToken1 = JsonToken.i;
    this.j = localJsonToken1;
    return localJsonToken1;
  }

  private IOException a(String paramString)
  {
    throw new MalformedJsonException(paramString + " at line " + k() + " column " + l());
  }

  private String a(char paramChar)
  {
    Object localObject1 = null;
    int i1 = this.e;
    label7: char c2;
    label260: int i7;
    Object localObject2;
    if (this.e < this.f)
    {
      char[] arrayOfChar1 = this.d;
      int i2 = this.e;
      this.e = (i2 + 1);
      char c1 = arrayOfChar1[i2];
      if (c1 == paramChar)
      {
        if (this.o)
          return "skipped!";
        if (localObject1 == null)
          return this.a.a(this.d, i1, -1 + (this.e - i1));
        ((StringBuilder)localObject1).append(this.d, i1, -1 + (this.e - i1));
        return ((StringBuilder)localObject1).toString();
      }
      if (c1 != '\\')
        break label440;
      if (localObject1 == null)
        localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(this.d, i1, -1 + (this.e - i1));
      if ((this.e == this.f) && (!a(1)))
        throw a("Unterminated escape sequence");
      char[] arrayOfChar2 = this.d;
      int i6 = this.e;
      this.e = (i6 + 1);
      c2 = arrayOfChar2[i6];
      switch (c2)
      {
      default:
        ((StringBuilder)localObject1).append(c2);
        i7 = this.e;
        localObject2 = localObject1;
      case 'u':
      case 't':
      case 'b':
      case 'n':
      case 'r':
      case 'f':
      }
    }
    label440: int i3;
    for (int i4 = i7; ; i4 = i3)
    {
      int i5 = i4;
      localObject1 = localObject2;
      i1 = i5;
      break label7;
      if ((4 + this.e > this.f) && (!a(4)))
        throw a("Unterminated escape sequence");
      String str = this.a.a(this.d, this.e, 4);
      this.e = (4 + this.e);
      c2 = (char)Integer.parseInt(str, 16);
      break label260;
      c2 = '\t';
      break label260;
      c2 = '\b';
      break label260;
      c2 = '\n';
      break label260;
      c2 = '\r';
      break label260;
      c2 = '\f';
      break label260;
      if (localObject1 == null)
        localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(this.d, i1, this.e - i1);
      if (a(1))
        break;
      throw a("Unterminated string");
      i3 = i1;
      localObject2 = localObject1;
    }
  }

  private void a(JsonToken paramJsonToken)
  {
    g();
    if (this.j != paramJsonToken)
      throw new IllegalStateException("Expected " + paramJsonToken + " but was " + g());
    h();
  }

  private void a(b paramb)
  {
    this.i.add(paramb);
  }

  private boolean a(int paramInt)
  {
    int i1 = 0;
    if (i1 < this.e)
    {
      if (this.d[i1] == '\n')
        this.g = (1 + this.g);
      for (this.h = 1; ; this.h = (1 + this.h))
      {
        i1++;
        break;
      }
    }
    if (this.f != this.e)
    {
      this.f -= this.e;
      System.arraycopy(this.d, this.e, this.d, 0, this.f);
    }
    while (true)
    {
      this.e = 0;
      do
      {
        int i2 = this.b.read(this.d, this.f, this.d.length - this.f);
        bool = false;
        if (i2 == -1)
          break;
        this.f = (i2 + this.f);
        if ((this.g == 1) && (this.h == 1) && (this.f > 0) && (this.d[0] == 65279))
        {
          this.e = (1 + this.e);
          this.h = (-1 + this.h);
        }
      }
      while (this.f < paramInt);
      boolean bool = true;
      return bool;
      this.f = 0;
    }
  }

  private JsonToken b(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean)
    {
      switch (m())
      {
      default:
        this.e = (-1 + this.e);
        i1 = m();
        switch (i1)
        {
        default:
          n();
          this.e = (-1 + this.e);
          this.k = c(false);
          if (!TextUtils.isEmpty(this.k))
            break label206;
          throw a("Expected name");
        case 39:
        case 34:
        }
      case 125:
        i();
        JsonToken localJsonToken3 = JsonToken.d;
        this.j = localJsonToken3;
        return localJsonToken3;
      }
    }
    else
    {
      switch (m())
      {
      case 44:
      case 59:
      default:
        throw a("Unterminated object");
      case 125:
      }
      i();
      JsonToken localJsonToken1 = JsonToken.d;
      this.j = localJsonToken1;
      return localJsonToken1;
      n();
      this.k = a((char)i1);
    }
    label206: b(b.d);
    JsonToken localJsonToken2 = JsonToken.e;
    this.j = localJsonToken2;
    return localJsonToken2;
  }

  private void b(b paramb)
  {
    this.i.set(-1 + this.i.size(), paramb);
  }

  private String c(boolean paramBoolean)
  {
    String str = null;
    this.m = -1;
    this.n = 0;
    int i1 = 0;
    StringBuilder localStringBuilder = null;
    while (true)
      if (i1 + this.e < this.f)
      {
        switch (this.d[(i1 + this.e)])
        {
        default:
          i1++;
          break;
        case '#':
        case '/':
        case ';':
        case '=':
        case '\\':
          n();
        case '\t':
        case '\n':
        case '\f':
        case '\r':
        case ' ':
        case ',':
        case ':':
        case '[':
        case ']':
        case '{':
        case '}':
          label190: if ((paramBoolean) && (localStringBuilder == null))
            this.m = this.e;
          break;
        }
      }
      else
      {
        while (true)
        {
          this.n = (i1 + this.n);
          this.e = (i1 + this.e);
          return str;
          if (i1 < this.d.length)
          {
            if (a(i1 + 1))
              break;
            this.d[this.f] = '\000';
            break label190;
          }
          if (localStringBuilder == null)
            localStringBuilder = new StringBuilder();
          localStringBuilder.append(this.d, this.e, i1);
          this.n = (i1 + this.n);
          this.e = (i1 + this.e);
          if (a(1))
            break label385;
          i1 = 0;
          break label190;
          if (this.o)
          {
            str = "skipped!";
          }
          else if (localStringBuilder == null)
          {
            str = this.a.a(this.d, this.e, i1);
          }
          else
          {
            localStringBuilder.append(this.d, this.e, i1);
            str = localStringBuilder.toString();
          }
        }
        label385: i1 = 0;
      }
  }

  private JsonToken g()
  {
    JsonToken localJsonToken2;
    if (this.j != null)
      localJsonToken2 = this.j;
    while (true)
    {
      return localJsonToken2;
      switch (a.a[((b)this.i.get(-1 + this.i.size())).ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        b(b.g);
        localJsonToken2 = j();
        if ((!this.c) && (this.j != JsonToken.a) && (this.j != JsonToken.c))
          throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.j);
        break;
      case 2:
        return a(true);
      case 3:
        return a(false);
      case 4:
        return b(true);
      case 5:
        switch (m())
        {
        case 59:
        case 60:
        default:
          throw a("Expected ':'");
        case 61:
          n();
          if (((this.e < this.f) || (a(1))) && (this.d[this.e] == '>'))
            this.e = (1 + this.e);
          break;
        case 58:
        }
        b(b.e);
        return j();
      case 6:
        return b(false);
      case 7:
        try
        {
          localJsonToken2 = j();
          if (!this.c)
            throw a("Expected EOF");
        }
        catch (EOFException localEOFException)
        {
          JsonToken localJsonToken1 = JsonToken.j;
          this.j = localJsonToken1;
          return localJsonToken1;
        }
      case 8:
      }
    }
    throw new IllegalStateException("JsonReader is closed");
  }

  private JsonToken h()
  {
    g();
    JsonToken localJsonToken = this.j;
    this.j = null;
    this.l = null;
    this.k = null;
    return localJsonToken;
  }

  private b i()
  {
    return (b)this.i.remove(-1 + this.i.size());
  }

  private JsonToken j()
  {
    int i1 = m();
    switch (i1)
    {
    default:
      this.e = (-1 + this.e);
      this.l = c(true);
      if (this.n == 0)
        throw a("Expected literal value");
      break;
    case 123:
      a(b.c);
      JsonToken localJsonToken3 = JsonToken.c;
      this.j = localJsonToken3;
      return localJsonToken3;
    case 91:
      a(b.a);
      JsonToken localJsonToken2 = JsonToken.a;
      this.j = localJsonToken2;
      return localJsonToken2;
    case 39:
      n();
    case 34:
      this.l = a((char)i1);
      JsonToken localJsonToken1 = JsonToken.f;
      this.j = localJsonToken1;
      return localJsonToken1;
    }
    JsonToken localJsonToken4;
    char[] arrayOfChar;
    int i2;
    int i3;
    int i4;
    int i5;
    if (this.m != -1)
    {
      if ((this.n == 4) && (('n' == this.d[this.m]) || ('N' == this.d[this.m])) && (('u' == this.d[(1 + this.m)]) || ('U' == this.d[(1 + this.m)])) && (('l' == this.d[(2 + this.m)]) || ('L' == this.d[(2 + this.m)])) && (('l' == this.d[(3 + this.m)]) || ('L' == this.d[(3 + this.m)])))
      {
        this.l = "null";
        localJsonToken4 = JsonToken.i;
      }
      while (true)
      {
        this.j = localJsonToken4;
        if (this.j == JsonToken.f)
          n();
        return this.j;
        if ((this.n == 4) && (('t' == this.d[this.m]) || ('T' == this.d[this.m])) && (('r' == this.d[(1 + this.m)]) || ('R' == this.d[(1 + this.m)])) && (('u' == this.d[(2 + this.m)]) || ('U' == this.d[(2 + this.m)])) && (('e' == this.d[(3 + this.m)]) || ('E' == this.d[(3 + this.m)])))
        {
          this.l = "true";
          localJsonToken4 = JsonToken.h;
        }
        else
        {
          if ((this.n != 5) || (('f' != this.d[this.m]) && ('F' != this.d[this.m])) || (('a' != this.d[(1 + this.m)]) && ('A' != this.d[(1 + this.m)])) || (('l' != this.d[(2 + this.m)]) && ('L' != this.d[(2 + this.m)])) || (('s' != this.d[(3 + this.m)]) && ('S' != this.d[(3 + this.m)])) || (('e' != this.d[(4 + this.m)]) && ('E' != this.d[(4 + this.m)])))
            break;
          this.l = "false";
          localJsonToken4 = JsonToken.h;
        }
      }
      this.l = this.a.a(this.d, this.m, this.n);
      arrayOfChar = this.d;
      i2 = this.m;
      i3 = this.n;
      i4 = arrayOfChar[i2];
      if (i4 != 45)
        break label1008;
      i5 = i2 + 1;
      i4 = arrayOfChar[i5];
    }
    while (true)
    {
      int i6;
      int i7;
      if (i4 == 48)
      {
        i6 = i5 + 1;
        i7 = arrayOfChar[i6];
      }
      while (true)
        label736: if (i7 == 46)
        {
          i6++;
          i7 = arrayOfChar[i6];
          while (true)
            if ((i7 >= 48) && (i7 <= 57))
            {
              i6++;
              i7 = arrayOfChar[i6];
              continue;
              if ((i4 >= 49) && (i4 <= 57))
              {
                i6 = i5 + 1;
                for (i7 = arrayOfChar[i6]; (i7 >= 48) && (i7 <= 57); i7 = arrayOfChar[i6])
                  i6++;
                break label736;
              }
              localJsonToken4 = JsonToken.f;
              break;
            }
        }
      int i8 = i7;
      int i9 = i6;
      if ((i8 == 101) || (i8 == 69))
      {
        int i10 = i9 + 1;
        int i11 = arrayOfChar[i10];
        if ((i11 == 43) || (i11 == 45))
        {
          i10++;
          i11 = arrayOfChar[i10];
        }
        int i14;
        if ((i11 >= 48) && (i11 <= 57))
        {
          int i12 = i10 + 1;
          int i13 = arrayOfChar[i12];
          i9 = i12;
          i14 = i13;
        }
        while (true)
          if ((i14 >= 48) && (i14 <= 57))
          {
            int i15 = i9 + 1;
            int i16 = arrayOfChar[i15];
            i9 = i15;
            i14 = i16;
            continue;
            localJsonToken4 = JsonToken.f;
            break;
          }
      }
      if (i9 == i2 + i3)
      {
        localJsonToken4 = JsonToken.g;
        break;
      }
      localJsonToken4 = JsonToken.f;
      break;
      label1008: i5 = i2;
    }
  }

  private int k()
  {
    int i1 = this.g;
    for (int i2 = 0; i2 < this.e; i2++)
      if (this.d[i2] == '\n')
        i1++;
    return i1;
  }

  private int l()
  {
    int i1 = this.h;
    int i2 = 0;
    if (i2 < this.e)
    {
      if (this.d[i2] == '\n');
      for (i1 = 1; ; i1++)
      {
        i2++;
        break;
      }
    }
    return i1;
  }

  private int m()
  {
    while ((this.e < this.f) || (a(1)))
    {
      char[] arrayOfChar = this.d;
      int i1 = this.e;
      this.e = (i1 + 1);
      int i2 = arrayOfChar[i1];
      switch (i2)
      {
      case 9:
      case 10:
      case 13:
      case 32:
      default:
      case 47:
        do
          return i2;
        while ((this.e == this.f) && (!a(1)));
        n();
        switch (this.d[this.e])
        {
        default:
          return i2;
        case '*':
          this.e = (1 + this.e);
          if ((this.e + "*/".length() <= this.f) || (a("*/".length())))
            for (int i3 = 0; i3 < "*/".length(); i3++)
              if (this.d[(i3 + this.e)] != "*/".charAt(i3))
                break label262;
          for (int i4 = 1; ; i4 = 0)
          {
            if (i4 != 0)
              break label281;
            throw a("Unterminated comment");
            label262: this.e = (1 + this.e);
            break;
          }
          label281: this.e = (2 + this.e);
          break;
        case '/':
        }
        this.e = (1 + this.e);
        o();
        break;
      case 35:
      }
      n();
      o();
    }
    throw new EOFException("End of input");
  }

  private void n()
  {
    if (!this.c)
      throw a("Use JsonReader.setLenient(true) to accept malformed JSON");
  }

  private void o()
  {
    int i2;
    do
    {
      if ((this.e >= this.f) && (!a(1)))
        break;
      char[] arrayOfChar = this.d;
      int i1 = this.e;
      this.e = (i1 + 1);
      i2 = arrayOfChar[i1];
    }
    while ((i2 != 13) && (i2 != 10));
  }

  public final void a()
  {
    a(JsonToken.c);
  }

  public final void b()
  {
    a(JsonToken.d);
  }

  public final boolean c()
  {
    g();
    return (this.j != JsonToken.d) && (this.j != JsonToken.b);
  }

  public final void close()
  {
    this.l = null;
    this.j = null;
    this.i.clear();
    this.i.add(b.h);
    this.b.close();
  }

  public final String d()
  {
    g();
    if (this.j != JsonToken.e)
      throw new IllegalStateException("Expected a name but was " + g());
    String str = this.k;
    h();
    return str;
  }

  public final String e()
  {
    g();
    if ((this.j != JsonToken.f) && (this.j != JsonToken.g))
      throw new IllegalStateException("Expected a string but was " + g());
    String str = this.l;
    h();
    return str;
  }

  public final void f()
  {
    this.o = true;
    int i1 = 0;
    try
    {
      JsonToken localJsonToken1 = h();
      if (localJsonToken1 != JsonToken.a)
      {
        JsonToken localJsonToken2 = JsonToken.c;
        if (localJsonToken1 != localJsonToken2);
      }
      else
      {
        i1++;
      }
      while (i1 == 0)
      {
        return;
        if (localJsonToken1 != JsonToken.b)
        {
          JsonToken localJsonToken3 = JsonToken.d;
          if (localJsonToken1 != localJsonToken3);
        }
        else
        {
          i1--;
        }
      }
    }
    finally
    {
      this.o = false;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append(getClass().getSimpleName()).append(" near ");
    StringBuilder localStringBuilder2 = new StringBuilder();
    int i1 = Math.min(this.e, 20);
    localStringBuilder2.append(this.d, this.e - i1, i1);
    int i2 = Math.min(this.f - this.e, 20);
    localStringBuilder2.append(this.d, this.e, i2);
    return localStringBuilder2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.json.JsonReader
 * JD-Core Version:    0.6.2
 */