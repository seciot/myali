package com.alipay.mobile.command.engine;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.command.util.CommandLogUtil;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

@SuppressLint({"SetJavaScriptEnabled"})
public final class ScripterExecutor
{
  private static ScripterExecutor b = new ScripterExecutor();
  private WebView a;

  private ScripterExecutor()
  {
    try
    {
      this.a = new WebView(CommandConfig.getContext());
      this.a.getSettings().setJavaScriptEnabled(true);
      this.a.setWebChromeClient(new a(this));
      this.a.addJavascriptInterface(new BridgeJsToJava(), "command");
      File localFile1 = CommandConfig.getContext().getDir("cmdInitialTemp", 0);
      File localFile2 = new File(localFile1.getAbsolutePath() + File.separatorChar + "tempCmd.html");
      try
      {
        BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(localFile2, false));
        localBufferedWriter.write("<html><script language=\"javascript\">alert(\"2\");</script></html>");
        localBufferedWriter.close();
        this.a.loadUrl("file://" + localFile2.getAbsolutePath());
        return;
      }
      catch (Throwable localThrowable2)
      {
        localThrowable2.printStackTrace();
        return;
      }
    }
    catch (Throwable localThrowable1)
    {
      CommandLogUtil.upErrorInfo(localThrowable1, new Object[] { "crash commandCenter webView initial Error." });
    }
  }

  public static ScripterExecutor a()
  {
    return b;
  }

  // ERROR //
  public final void a(com.alipay.mobile.command.model.TaskMetaWrap paramTaskMetaWrap)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iconst_4
    //   3: anewarray 4	java/lang/Object
    //   6: astore 8
    //   8: aload 8
    //   10: iconst_0
    //   11: ldc 137
    //   13: aastore
    //   14: aload 8
    //   16: iconst_1
    //   17: aload_1
    //   18: invokevirtual 142	com/alipay/mobile/command/model/TaskMetaWrap:getTaskName	()Ljava/lang/String;
    //   21: aastore
    //   22: aload 8
    //   24: iconst_2
    //   25: ldc 144
    //   27: aastore
    //   28: aload 8
    //   30: iconst_3
    //   31: aload_1
    //   32: invokevirtual 147	com/alipay/mobile/command/model/TaskMetaWrap:getUuid	()Ljava/lang/String;
    //   35: aastore
    //   36: aload_1
    //   37: invokevirtual 151	com/alipay/mobile/command/model/TaskMetaWrap:getDepencyCommandList	()Ljava/util/List;
    //   40: invokestatic 156	com/alipay/mobile/command/manager/CommandManager:a	(Ljava/util/List;)Z
    //   43: ifeq +495 -> 538
    //   46: aload_1
    //   47: invokevirtual 159	com/alipay/mobile/command/model/TaskMetaWrap:getJsScript	()Ljava/lang/String;
    //   50: astore 10
    //   52: aload_1
    //   53: invokevirtual 147	com/alipay/mobile/command/model/TaskMetaWrap:getUuid	()Ljava/lang/String;
    //   56: astore 11
    //   58: aload_1
    //   59: invokevirtual 151	com/alipay/mobile/command/model/TaskMetaWrap:getDepencyCommandList	()Ljava/util/List;
    //   62: astore 12
    //   64: aload_1
    //   65: invokevirtual 162	com/alipay/mobile/command/model/TaskMetaWrap:getRuntimeBizContext	()Ljava/lang/String;
    //   68: astore 13
    //   70: ldc 164
    //   72: ldc 166
    //   74: aload 10
    //   76: invokevirtual 172	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   79: ldc 174
    //   81: aload 11
    //   83: invokevirtual 172	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   86: astore 14
    //   88: aload 12
    //   90: ifnull +353 -> 443
    //   93: aload 12
    //   95: invokeinterface 180 1 0
    //   100: ifne +343 -> 443
    //   103: aload 12
    //   105: invokeinterface 184 1 0
    //   110: astore 18
    //   112: aload 14
    //   114: astore 19
    //   116: aload 18
    //   118: invokeinterface 189 1 0
    //   123: ifeq +286 -> 409
    //   126: aload 18
    //   128: invokeinterface 193 1 0
    //   133: checkcast 168	java/lang/String
    //   136: astore 20
    //   138: aload 19
    //   140: new 74	java/lang/StringBuilder
    //   143: dup
    //   144: ldc 195
    //   146: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload 20
    //   151: invokestatic 198	com/alipay/mobile/command/manager/CommandManager:b	(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    //   154: invokevirtual 202	com/alipay/mobile/command/manager/CommandManager$WrapBaseCommand:b	()Ljava/lang/String;
    //   157: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: ldc 204
    //   162: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: new 74	java/lang/StringBuilder
    //   171: dup
    //   172: ldc 195
    //   174: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   177: aload 11
    //   179: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc 206
    //   184: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload 20
    //   189: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc 204
    //   194: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokevirtual 172	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   203: astore 21
    //   205: aload 21
    //   207: aload 19
    //   209: invokestatic 212	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   212: ifeq +190 -> 402
    //   215: bipush 8
    //   217: anewarray 4	java/lang/Object
    //   220: astore 22
    //   222: aload 22
    //   224: iconst_0
    //   225: ldc 214
    //   227: aastore
    //   228: aload 22
    //   230: iconst_1
    //   231: aload 11
    //   233: aastore
    //   234: aload 22
    //   236: iconst_2
    //   237: ldc 216
    //   239: aastore
    //   240: aload 22
    //   242: iconst_3
    //   243: aload 20
    //   245: invokestatic 198	com/alipay/mobile/command/manager/CommandManager:b	(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    //   248: invokevirtual 202	com/alipay/mobile/command/manager/CommandManager$WrapBaseCommand:b	()Ljava/lang/String;
    //   251: aastore
    //   252: aload 22
    //   254: iconst_4
    //   255: ldc 218
    //   257: aastore
    //   258: aload 22
    //   260: iconst_5
    //   261: aload 21
    //   263: aastore
    //   264: aload 22
    //   266: bipush 6
    //   268: ldc 220
    //   270: aastore
    //   271: aload 22
    //   273: bipush 7
    //   275: aload 19
    //   277: aastore
    //   278: bipush 8
    //   280: anewarray 4	java/lang/Object
    //   283: astore 23
    //   285: aload 23
    //   287: iconst_0
    //   288: ldc 214
    //   290: aastore
    //   291: aload 23
    //   293: iconst_1
    //   294: aload 11
    //   296: aastore
    //   297: aload 23
    //   299: iconst_2
    //   300: ldc 216
    //   302: aastore
    //   303: aload 23
    //   305: iconst_3
    //   306: aload 20
    //   308: invokestatic 198	com/alipay/mobile/command/manager/CommandManager:b	(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    //   311: invokevirtual 202	com/alipay/mobile/command/manager/CommandManager$WrapBaseCommand:b	()Ljava/lang/String;
    //   314: aastore
    //   315: aload 23
    //   317: iconst_4
    //   318: ldc 218
    //   320: aastore
    //   321: aload 23
    //   323: iconst_5
    //   324: aload 21
    //   326: aastore
    //   327: aload 23
    //   329: bipush 6
    //   331: ldc 220
    //   333: aastore
    //   334: aload 23
    //   336: bipush 7
    //   338: aload 19
    //   340: aastore
    //   341: aconst_null
    //   342: aload 23
    //   344: invokestatic 133	com/alipay/mobile/command/util/CommandLogUtil:upErrorInfo	(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    //   347: aconst_null
    //   348: astore 14
    //   350: aload 14
    //   352: invokestatic 223	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   355: istore 16
    //   357: iload 16
    //   359: ifne +133 -> 492
    //   362: aload_0
    //   363: getfield 34	com/alipay/mobile/command/engine/ScripterExecutor:a	Landroid/webkit/WebView;
    //   366: new 74	java/lang/StringBuilder
    //   369: dup
    //   370: ldc 225
    //   372: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   375: aload 14
    //   377: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: invokevirtual 122	android/webkit/WebView:loadUrl	(Ljava/lang/String;)V
    //   386: iload_2
    //   387: ifne +14 -> 401
    //   390: aload_1
    //   391: invokevirtual 147	com/alipay/mobile/command/model/TaskMetaWrap:getUuid	()Ljava/lang/String;
    //   394: getstatic 231	com/alipay/mobile/command/model/RuntimeTaskStatusEnum:F	Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
    //   397: iconst_0
    //   398: invokestatic 237	com/alipay/mobile/command/manager/TaskManager:updataRuntimeTask	(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    //   401: return
    //   402: aload 21
    //   404: astore 19
    //   406: goto -290 -> 116
    //   409: aload 19
    //   411: astore 14
    //   413: aload 14
    //   415: invokestatic 223	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   418: ifne -68 -> 350
    //   421: aload 13
    //   423: invokestatic 223	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   426: ifne -76 -> 350
    //   429: aload 14
    //   431: ldc 239
    //   433: aload 13
    //   435: invokevirtual 172	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   438: astore 14
    //   440: goto -90 -> 350
    //   443: aload 14
    //   445: ldc 241
    //   447: invokevirtual 244	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   450: ifeq -37 -> 413
    //   453: iconst_2
    //   454: anewarray 4	java/lang/Object
    //   457: dup
    //   458: iconst_0
    //   459: ldc 246
    //   461: aastore
    //   462: dup
    //   463: iconst_1
    //   464: aload 11
    //   466: aastore
    //   467: pop
    //   468: aconst_null
    //   469: iconst_2
    //   470: anewarray 4	java/lang/Object
    //   473: dup
    //   474: iconst_0
    //   475: ldc 246
    //   477: aastore
    //   478: dup
    //   479: iconst_1
    //   480: aload 11
    //   482: aastore
    //   483: invokestatic 133	com/alipay/mobile/command/util/CommandLogUtil:upErrorInfo	(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    //   486: aconst_null
    //   487: astore 14
    //   489: goto -139 -> 350
    //   492: iconst_3
    //   493: anewarray 4	java/lang/Object
    //   496: dup
    //   497: iconst_0
    //   498: ldc 248
    //   500: aastore
    //   501: dup
    //   502: iconst_1
    //   503: aload_1
    //   504: aastore
    //   505: dup
    //   506: iconst_2
    //   507: ldc 250
    //   509: aastore
    //   510: pop
    //   511: aconst_null
    //   512: iconst_3
    //   513: anewarray 4	java/lang/Object
    //   516: dup
    //   517: iconst_0
    //   518: ldc 248
    //   520: aastore
    //   521: dup
    //   522: iconst_1
    //   523: aload_1
    //   524: aastore
    //   525: dup
    //   526: iconst_2
    //   527: ldc 250
    //   529: aastore
    //   530: invokestatic 133	com/alipay/mobile/command/util/CommandLogUtil:upErrorInfo	(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    //   533: iconst_0
    //   534: istore_2
    //   535: goto -149 -> 386
    //   538: iconst_3
    //   539: anewarray 4	java/lang/Object
    //   542: dup
    //   543: iconst_0
    //   544: ldc 248
    //   546: aastore
    //   547: dup
    //   548: iconst_1
    //   549: aload_1
    //   550: aastore
    //   551: dup
    //   552: iconst_2
    //   553: ldc 252
    //   555: aastore
    //   556: pop
    //   557: aconst_null
    //   558: iconst_3
    //   559: anewarray 4	java/lang/Object
    //   562: dup
    //   563: iconst_0
    //   564: ldc 248
    //   566: aastore
    //   567: dup
    //   568: iconst_1
    //   569: aload_1
    //   570: aastore
    //   571: dup
    //   572: iconst_2
    //   573: ldc 252
    //   575: aastore
    //   576: invokestatic 133	com/alipay/mobile/command/util/CommandLogUtil:upErrorInfo	(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    //   579: aload_1
    //   580: invokevirtual 147	com/alipay/mobile/command/model/TaskMetaWrap:getUuid	()Ljava/lang/String;
    //   583: getstatic 231	com/alipay/mobile/command/model/RuntimeTaskStatusEnum:F	Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
    //   586: iconst_0
    //   587: invokestatic 237	com/alipay/mobile/command/manager/TaskManager:updataRuntimeTask	(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    //   590: iconst_3
    //   591: anewarray 4	java/lang/Object
    //   594: astore 7
    //   596: aload 7
    //   598: iconst_0
    //   599: ldc 254
    //   601: aastore
    //   602: aload 7
    //   604: iload_2
    //   605: aload_1
    //   606: aastore
    //   607: aload 7
    //   609: iconst_2
    //   610: ldc_w 256
    //   613: aastore
    //   614: return
    //   615: astore 5
    //   617: iconst_0
    //   618: istore 4
    //   620: iconst_1
    //   621: anewarray 4	java/lang/Object
    //   624: dup
    //   625: iconst_0
    //   626: ldc_w 258
    //   629: aastore
    //   630: pop
    //   631: aconst_null
    //   632: iconst_3
    //   633: anewarray 4	java/lang/Object
    //   636: dup
    //   637: iconst_0
    //   638: ldc_w 260
    //   641: aastore
    //   642: dup
    //   643: iconst_1
    //   644: aload 5
    //   646: aastore
    //   647: dup
    //   648: iconst_2
    //   649: ldc_w 258
    //   652: aastore
    //   653: invokestatic 133	com/alipay/mobile/command/util/CommandLogUtil:upErrorInfo	(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    //   656: iload 4
    //   658: ifne -68 -> 590
    //   661: aload_1
    //   662: invokevirtual 147	com/alipay/mobile/command/model/TaskMetaWrap:getUuid	()Ljava/lang/String;
    //   665: getstatic 231	com/alipay/mobile/command/model/RuntimeTaskStatusEnum:F	Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
    //   668: iconst_0
    //   669: invokestatic 237	com/alipay/mobile/command/manager/TaskManager:updataRuntimeTask	(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    //   672: goto -82 -> 590
    //   675: astore_3
    //   676: iconst_0
    //   677: istore 4
    //   679: iload 4
    //   681: ifne +14 -> 695
    //   684: aload_1
    //   685: invokevirtual 147	com/alipay/mobile/command/model/TaskMetaWrap:getUuid	()Ljava/lang/String;
    //   688: getstatic 231	com/alipay/mobile/command/model/RuntimeTaskStatusEnum:F	Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
    //   691: iconst_0
    //   692: invokestatic 237	com/alipay/mobile/command/manager/TaskManager:updataRuntimeTask	(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    //   695: aload_3
    //   696: athrow
    //   697: astore_3
    //   698: iload_2
    //   699: istore 4
    //   701: goto -22 -> 679
    //   704: astore_3
    //   705: goto -26 -> 679
    //   708: astore 5
    //   710: iload_2
    //   711: istore 4
    //   713: goto -93 -> 620
    //
    // Exception table:
    //   from	to	target	type
    //   2	88	615	java/lang/Throwable
    //   93	112	615	java/lang/Throwable
    //   116	347	615	java/lang/Throwable
    //   350	357	615	java/lang/Throwable
    //   413	440	615	java/lang/Throwable
    //   443	486	615	java/lang/Throwable
    //   492	533	615	java/lang/Throwable
    //   538	579	615	java/lang/Throwable
    //   2	88	675	finally
    //   93	112	675	finally
    //   116	347	675	finally
    //   350	357	675	finally
    //   413	440	675	finally
    //   443	486	675	finally
    //   492	533	675	finally
    //   538	579	675	finally
    //   362	386	697	finally
    //   620	656	704	finally
    //   362	386	708	java/lang/Throwable
  }

  public final WebView b()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.ScripterExecutor
 * JD-Core Version:    0.6.2
 */