package com.alipay.android.app.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.StrikethroughSpan;
import android.text.style.UnderlineSpan;
import android.util.DisplayMetrics;
import android.widget.TextView;
import com.alipay.android.app.R.color;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.widget.BaseTarget;
import com.alipay.html.Html;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestBuilder;
import java.io.File;
import java.util.HashMap;

public class UIUtils
{
  private static String a = "((https://)|(http://)?([a-z]+[.])|(www.))\\w+[.]([a-z]{2,4})?[[.]([a-z]{2,4})]+((/[\\S&&[^,;一-龥]]+)+)?([.][a-z]{2,4}+|/?)";
  private static final HashMap b = new HashMap();
  private static final HashMap c = new HashMap();
  private static final HashMap d = new HashMap();
  private static final HashMap e = new HashMap();

  static
  {
    b.put("left", Integer.valueOf(19));
    b.put("center", Integer.valueOf(17));
    b.put("right", Integer.valueOf(21));
    b.put("top", Integer.valueOf(49));
    b.put("middle", Integer.valueOf(17));
    b.put("bottom", Integer.valueOf(81));
    c.put("small", Float.valueOf(14.0F));
    c.put("medium", Float.valueOf(16.0F));
    c.put("large", Float.valueOf(19.0F));
    c.put("huge", Float.valueOf(19.0F));
    d.put("italic", Integer.valueOf(2));
    d.put("bold", Integer.valueOf(1));
    d.put("normal", Integer.valueOf(0));
    d.put("bold_italic", Integer.valueOf(3));
    e.put("success", Integer.valueOf(R.drawable.al));
    e.put("error", Integer.valueOf(R.drawable.V));
    e.put("block", Integer.valueOf(R.drawable.P));
    e.put("info", Integer.valueOf(R.drawable.Y));
    e.put("question", Integer.valueOf(R.drawable.ag));
    e.put("warning", Integer.valueOf(R.drawable.at));
    e.put("waiting", Integer.valueOf(R.drawable.ar));
    e.put("newicon", Integer.valueOf(R.drawable.ab));
    e.put("success_small", Integer.valueOf(R.drawable.am));
    e.put("error_small", Integer.valueOf(R.drawable.W));
    e.put("block_small", Integer.valueOf(R.drawable.R));
    e.put("info_small", Integer.valueOf(R.drawable.Z));
    e.put("question_small", Integer.valueOf(R.drawable.ah));
    e.put("warning_small", Integer.valueOf(R.drawable.au));
    e.put("waiting_small", Integer.valueOf(R.drawable.as));
    e.put("newicon_small", Integer.valueOf(R.drawable.ac));
    e.put("shield", Integer.valueOf(R.drawable.ak));
    e.put("card", Integer.valueOf(R.drawable.ad));
    e.put("bg_checkbox", Integer.valueOf(R.drawable.an));
    e.put("bg_button_arrow", Integer.valueOf(R.drawable.ap));
    e.put("bg_button_confirm", Integer.valueOf(R.drawable.ao));
    e.put("bg_panel", Integer.valueOf(R.drawable.O));
    e.put("_panel_blank", Integer.valueOf(R.drawable.O));
    e.put("discount", Integer.valueOf(R.drawable.T));
    e.put("bg_button_confirm_small", Integer.valueOf(R.drawable.N));
    e.put("robot", Integer.valueOf(R.drawable.aj));
    e.put("bg_button_secondary", Integer.valueOf(R.drawable.aq));
    e.put("idlesse", Integer.valueOf(R.drawable.X));
    e.put("bung", Integer.valueOf(R.drawable.Q));
    e.put("busy", Integer.valueOf(R.drawable.S));
    e.put("refresh", Integer.valueOf(R.drawable.ai));
  }

  public static float a()
  {
    return ((Float)c.get("medium")).floatValue();
  }

  public static int a(Context paramContext, float paramFloat)
  {
    if (paramContext != null);
    for (Resources localResources = paramContext.getResources(); ; localResources = Resources.getSystem())
      return (int)(paramFloat * localResources.getDisplayMetrics().density);
  }

  public static int a(String paramString)
  {
    if (StringUtil.a(paramString));
    while (!b.containsKey(paramString))
      return 3;
    return ((Integer)b.get(paramString)).intValue();
  }

  public static Spanned a(CharSequence paramCharSequence)
  {
    return Html.a("<u>" + paramCharSequence + "</u>");
  }

  public static Spanned a(CharSequence paramCharSequence, int paramInt)
  {
    SpannableString localSpannableString = new SpannableString(paramCharSequence);
    localSpannableString.setSpan(new UnderlineSpan(), 0, paramInt, 33);
    return localSpannableString;
  }

  public static void a(String paramString, TextView paramTextView, int paramInt)
  {
    if (paramInt == 0)
    {
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      return;
    }
    if (TextUtils.indexOf(paramString, "left") >= 0)
    {
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(paramInt, 0, 0, 0);
      return;
    }
    if (TextUtils.indexOf(paramString, "top") < 0)
    {
      if (TextUtils.indexOf(paramString, "right") >= 0)
      {
        paramTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, paramInt, 0);
        return;
      }
      if (TextUtils.indexOf(paramString, "bottom") >= 0)
      {
        paramTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, paramInt);
        return;
      }
    }
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(0, paramInt, 0, 0);
  }

  public static void a(String paramString, TextView paramTextView, Drawable paramDrawable)
  {
    if (paramDrawable == null)
    {
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      return;
    }
    if (TextUtils.indexOf(paramString, "left") >= 0)
    {
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(paramDrawable, null, null, null);
      return;
    }
    if (TextUtils.indexOf(paramString, "top") < 0)
    {
      if (TextUtils.indexOf(paramString, "right") >= 0)
      {
        paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, null, paramDrawable, null);
        return;
      }
      if (TextUtils.indexOf(paramString, "bottom") >= 0)
      {
        paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, null, null, paramDrawable);
        return;
      }
    }
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, paramDrawable, null, null);
  }

  public static void a(String paramString, BaseTarget paramBaseTarget)
  {
    if (TextUtils.isEmpty(paramString));
    Context localContext;
    int i;
    do
    {
      return;
      localContext = GlobalContext.a().b();
      if (!g(paramString))
        break;
      i = h(paramString);
    }
    while (i == 0);
    paramBaseTarget.a(i);
    return;
    if ((paramString.startsWith("http://")) || (paramString.startsWith("https://")))
    {
      Picasso.a(localContext).a(paramString).a(paramBaseTarget);
      return;
    }
    Picasso.a(localContext).a(new File(paramString)).a(paramBaseTarget);
  }

  public static float b()
  {
    return 50.0F;
  }

  public static int b(String paramString)
  {
    if (StringUtil.a(paramString));
    while (!b.containsKey(paramString))
      return 16;
    return ((Integer)b.get(paramString)).intValue();
  }

  public static Spanned b(CharSequence paramCharSequence, int paramInt)
  {
    SpannableString localSpannableString = new SpannableString(paramCharSequence);
    localSpannableString.setSpan(new StrikethroughSpan(), 0, paramInt, 33);
    return localSpannableString;
  }

  public static float c(String paramString)
  {
    if (c.containsKey(paramString))
      return ((Float)c.get(paramString)).floatValue();
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (Exception localException)
    {
    }
    return a();
  }

  // ERROR //
  public static String d(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: invokestatic 336	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: aload_0
    //   12: invokestatic 347	com/alipay/android/app/util/UIUtils:g	(Ljava/lang/String;)Z
    //   15: ifeq +5 -> 20
    //   18: aload_0
    //   19: areturn
    //   20: aload_0
    //   21: ldc_w 357
    //   24: invokevirtual 362	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   27: ifne -9 -> 18
    //   30: aload_0
    //   31: ldc_w 364
    //   34: invokevirtual 362	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   37: ifne -19 -> 18
    //   40: aload_0
    //   41: aload_0
    //   42: ldc_w 398
    //   45: invokevirtual 400	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   48: ldc_w 398
    //   51: invokevirtual 403	java/lang/String:length	()I
    //   54: iadd
    //   55: invokevirtual 407	java/lang/String:substring	(I)Ljava/lang/String;
    //   58: astore_2
    //   59: aload_2
    //   60: iconst_0
    //   61: invokestatic 413	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   64: astore 9
    //   66: aload 9
    //   68: ifnull +405 -> 473
    //   71: bipush 16
    //   73: newarray char
    //   75: dup
    //   76: iconst_0
    //   77: ldc_w 414
    //   80: castore
    //   81: dup
    //   82: iconst_1
    //   83: ldc_w 415
    //   86: castore
    //   87: dup
    //   88: iconst_2
    //   89: ldc_w 416
    //   92: castore
    //   93: dup
    //   94: iconst_3
    //   95: ldc_w 417
    //   98: castore
    //   99: dup
    //   100: iconst_4
    //   101: ldc_w 418
    //   104: castore
    //   105: dup
    //   106: iconst_5
    //   107: ldc_w 419
    //   110: castore
    //   111: dup
    //   112: bipush 6
    //   114: ldc_w 420
    //   117: castore
    //   118: dup
    //   119: bipush 7
    //   121: ldc_w 421
    //   124: castore
    //   125: dup
    //   126: bipush 8
    //   128: ldc_w 422
    //   131: castore
    //   132: dup
    //   133: bipush 9
    //   135: ldc_w 423
    //   138: castore
    //   139: dup
    //   140: bipush 10
    //   142: ldc_w 424
    //   145: castore
    //   146: dup
    //   147: bipush 11
    //   149: ldc_w 425
    //   152: castore
    //   153: dup
    //   154: bipush 12
    //   156: ldc_w 426
    //   159: castore
    //   160: dup
    //   161: bipush 13
    //   163: ldc_w 427
    //   166: castore
    //   167: dup
    //   168: bipush 14
    //   170: ldc_w 428
    //   173: castore
    //   174: dup
    //   175: bipush 15
    //   177: ldc_w 429
    //   180: castore
    //   181: astore 10
    //   183: ldc_w 431
    //   186: invokestatic 437	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   189: astore 11
    //   191: aload 11
    //   193: aload 9
    //   195: invokevirtual 441	java/security/MessageDigest:update	([B)V
    //   198: aload 11
    //   200: invokevirtual 445	java/security/MessageDigest:digest	()[B
    //   203: astore 12
    //   205: bipush 32
    //   207: newarray char
    //   209: astore 13
    //   211: iconst_0
    //   212: istore 14
    //   214: iload_1
    //   215: bipush 16
    //   217: if_icmpge +55 -> 272
    //   220: aload 12
    //   222: iload_1
    //   223: baload
    //   224: istore 15
    //   226: iload 14
    //   228: iconst_1
    //   229: iadd
    //   230: istore 16
    //   232: aload 13
    //   234: iload 14
    //   236: aload 10
    //   238: bipush 15
    //   240: iload 15
    //   242: iconst_4
    //   243: iushr
    //   244: iand
    //   245: caload
    //   246: castore
    //   247: iload 16
    //   249: iconst_1
    //   250: iadd
    //   251: istore 14
    //   253: aload 13
    //   255: iload 16
    //   257: aload 10
    //   259: iload 15
    //   261: bipush 15
    //   263: iand
    //   264: caload
    //   265: castore
    //   266: iinc 1 1
    //   269: goto -55 -> 214
    //   272: invokestatic 341	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   275: invokevirtual 344	com/alipay/android/app/sys/GlobalContext:b	()Landroid/content/Context;
    //   278: astore 17
    //   280: new 278	java/lang/StringBuilder
    //   283: dup
    //   284: invokespecial 446	java/lang/StringBuilder:<init>	()V
    //   287: aload 17
    //   289: invokevirtual 450	android/content/Context:getFilesDir	()Ljava/io/File;
    //   292: invokevirtual 453	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   295: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: getstatic 456	java/io/File:separator	Ljava/lang/String;
    //   301: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: ldc_w 458
    //   307: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: getstatic 456	java/io/File:separator	Ljava/lang/String;
    //   313: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: new 359	java/lang/String
    //   319: dup
    //   320: aload 13
    //   322: invokespecial 461	java/lang/String:<init>	([C)V
    //   325: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: ldc_w 463
    //   331: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: astore_0
    //   338: new 379	java/io/File
    //   341: dup
    //   342: aload_0
    //   343: invokespecial 380	java/io/File:<init>	(Ljava/lang/String;)V
    //   346: astore 18
    //   348: aload 18
    //   350: invokevirtual 467	java/io/File:exists	()Z
    //   353: ifeq +9 -> 362
    //   356: aload 18
    //   358: invokevirtual 470	java/io/File:delete	()Z
    //   361: pop
    //   362: aload 18
    //   364: invokevirtual 473	java/io/File:getParentFile	()Ljava/io/File;
    //   367: invokevirtual 476	java/io/File:mkdir	()Z
    //   370: pop
    //   371: aload 18
    //   373: invokevirtual 479	java/io/File:getAbsoluteFile	()Ljava/io/File;
    //   376: invokevirtual 482	java/io/File:createNewFile	()Z
    //   379: pop
    //   380: new 484	java/io/FileOutputStream
    //   383: dup
    //   384: aload 18
    //   386: invokespecial 487	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   389: astore 4
    //   391: aload 4
    //   393: aload 9
    //   395: invokevirtual 492	java/io/OutputStream:write	([B)V
    //   398: aload 4
    //   400: invokevirtual 495	java/io/OutputStream:flush	()V
    //   403: aload 4
    //   405: invokevirtual 498	java/io/OutputStream:close	()V
    //   408: goto -390 -> 18
    //   411: astore 21
    //   413: goto -395 -> 18
    //   416: astore 7
    //   418: aconst_null
    //   419: astore 4
    //   421: aload 7
    //   423: invokestatic 503	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   426: aload 4
    //   428: invokevirtual 498	java/io/OutputStream:close	()V
    //   431: aconst_null
    //   432: astore_0
    //   433: goto -415 -> 18
    //   436: astore 8
    //   438: aconst_null
    //   439: astore_0
    //   440: goto -422 -> 18
    //   443: astore_3
    //   444: aconst_null
    //   445: astore 4
    //   447: aload_3
    //   448: astore 5
    //   450: aload 4
    //   452: invokevirtual 498	java/io/OutputStream:close	()V
    //   455: aload 5
    //   457: athrow
    //   458: astore 6
    //   460: goto -5 -> 455
    //   463: astore 5
    //   465: goto -15 -> 450
    //   468: astore 7
    //   470: goto -49 -> 421
    //   473: aconst_null
    //   474: astore 4
    //   476: aconst_null
    //   477: astore_0
    //   478: goto -75 -> 403
    //
    // Exception table:
    //   from	to	target	type
    //   403	408	411	java/lang/Exception
    //   59	66	416	java/lang/Exception
    //   71	211	416	java/lang/Exception
    //   220	226	416	java/lang/Exception
    //   232	247	416	java/lang/Exception
    //   253	266	416	java/lang/Exception
    //   272	362	416	java/lang/Exception
    //   362	391	416	java/lang/Exception
    //   426	431	436	java/lang/Exception
    //   59	66	443	finally
    //   71	211	443	finally
    //   220	226	443	finally
    //   232	247	443	finally
    //   253	266	443	finally
    //   272	362	443	finally
    //   362	391	443	finally
    //   450	455	458	java/lang/Exception
    //   391	403	463	finally
    //   421	426	463	finally
    //   391	403	468	java/lang/Exception
  }

  public static int e(String paramString)
  {
    if (StringUtil.a(paramString));
    while (!d.containsKey(paramString))
      return 0;
    return ((Integer)d.get(paramString)).intValue();
  }

  public static int f(String paramString)
  {
    if (StringUtil.a(paramString))
      return GlobalContext.a().b().getResources().getColor(R.color.i);
    return Color.parseColor(paramString);
  }

  private static boolean g(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("local:"));
  }

  private static int h(String paramString)
  {
    if (StringUtil.a(paramString))
      return 0;
    String str = paramString.substring(1 + paramString.lastIndexOf(":"));
    if (e.containsKey(str))
      return ((Integer)e.get(str)).intValue();
    try
    {
      int i = Integer.valueOf(str, 0).intValue();
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.UIUtils
 * JD-Core Version:    0.6.2
 */