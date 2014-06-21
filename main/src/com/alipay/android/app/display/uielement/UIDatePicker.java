package com.alipay.android.app.display.uielement;

import android.os.Handler;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import java.text.DateFormat;
import java.util.Date;

public class UIDatePicker extends BaseElement
  implements ISubmitable
{
  private String a;
  private Date b;
  private Date c;
  private DateFormat d;
  private TextView e;

  public final ElementType a()
  {
    return ElementType.n;
  }

  protected final void a(Handler paramHandler)
  {
    super.a(paramHandler);
    paramHandler.post(new ay(this));
  }

  // ERROR //
  public final void a(org.json.JSONObject paramJSONObject1, org.json.JSONObject paramJSONObject2)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokespecial 147	com/alipay/android/app/display/uielement/BaseElement:a	(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    //   6: aload_1
    //   7: ldc 148
    //   9: invokevirtual 154	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   12: astore_3
    //   13: new 156	java/text/SimpleDateFormat
    //   16: dup
    //   17: aload_3
    //   18: invokestatic 162	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   21: invokespecial 165	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   24: astore 4
    //   26: aload_0
    //   27: aload_1
    //   28: ldc 167
    //   30: invokevirtual 154	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   33: putfield 169	com/alipay/android/app/display/uielement/UIDatePicker:a	Ljava/lang/String;
    //   36: aload_0
    //   37: aload 4
    //   39: aload_1
    //   40: ldc 171
    //   42: invokevirtual 154	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   45: invokevirtual 93	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   48: putfield 113	com/alipay/android/app/display/uielement/UIDatePicker:b	Ljava/util/Date;
    //   51: aload_0
    //   52: aload 4
    //   54: aload_1
    //   55: ldc 173
    //   57: invokevirtual 154	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   60: invokevirtual 93	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   63: putfield 117	com/alipay/android/app/display/uielement/UIDatePicker:c	Ljava/util/Date;
    //   66: aload_1
    //   67: ldc 175
    //   69: invokevirtual 154	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   72: astore 8
    //   74: aload_0
    //   75: new 156	java/text/SimpleDateFormat
    //   78: dup
    //   79: aload 8
    //   81: invokestatic 162	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   84: invokespecial 165	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   87: putfield 27	com/alipay/android/app/display/uielement/UIDatePicker:d	Ljava/text/DateFormat;
    //   90: return
    //   91: astore 10
    //   93: invokestatic 179	java/text/SimpleDateFormat:getDateInstance	()Ljava/text/DateFormat;
    //   96: astore 4
    //   98: goto -72 -> 26
    //   101: astore 6
    //   103: invokestatic 89	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   106: astore 7
    //   108: aload 7
    //   110: sipush 2101
    //   113: bipush 12
    //   115: bipush 31
    //   117: invokevirtual 183	java/util/Calendar:set	(III)V
    //   120: aload_0
    //   121: aload 7
    //   123: invokevirtual 187	java/util/Calendar:getTime	()Ljava/util/Date;
    //   126: putfield 117	com/alipay/android/app/display/uielement/UIDatePicker:c	Ljava/util/Date;
    //   129: goto -63 -> 66
    //   132: astore 9
    //   134: aload_0
    //   135: invokestatic 179	java/text/SimpleDateFormat:getDateInstance	()Ljava/text/DateFormat;
    //   138: putfield 27	com/alipay/android/app/display/uielement/UIDatePicker:d	Ljava/text/DateFormat;
    //   141: return
    //   142: astore 5
    //   144: goto -93 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   13	26	91	java/lang/Exception
    //   51	66	101	java/text/ParseException
    //   74	90	132	java/lang/Exception
    //   36	51	142	java/text/ParseException
  }

  protected final void b(Handler paramHandler, String paramString)
  {
    a("value", paramString);
    paramHandler.post(new aw(this, paramString));
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    super.c(paramHandler, paramBoolean);
    paramHandler.post(new ax(this, paramBoolean));
  }

  public void dispose()
  {
    super.dispose();
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
  }

  public final int[] h()
  {
    if (this.e != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.e.getId();
      return arrayOfInt;
    }
    return null;
  }

  public final ISubmitable.SubmitValue getRequireBundleName()
  {
    if (!super.s())
      return null;
    return new ISubmitable.SubmitValue(this.a, this.d.format(e()));
  }

  public final boolean k()
  {
    return true;
  }

  protected final int p()
  {
    return R.layout.T;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIDatePicker
 * JD-Core Version:    0.6.2
 */