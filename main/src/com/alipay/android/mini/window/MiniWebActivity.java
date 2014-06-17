package com.alipay.android.mini.window;

import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MiniWebActivity extends AbsActivity
{
  private WebView a = null;
  private FrameLayout b = null;
  private ImageView c;
  private ImageView d;
  private ImageView e;
  private String f = "";
  private ProgressBar g = null;
  private String h = "";
  private TextView i = null;
  private Map j;

  // ERROR //
  private boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 45	android/webkit/WebView
    //   4: dup
    //   5: aload_0
    //   6: invokespecial 48	android/webkit/WebView:<init>	(Landroid/content/Context;)V
    //   9: putfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   12: aload_0
    //   13: aload_0
    //   14: getstatic 54	com/alipay/android/app/R$id:X	I
    //   17: invokevirtual 58	com/alipay/android/mini/window/MiniWebActivity:findViewById	(I)Landroid/view/View;
    //   20: checkcast 60	android/widget/FrameLayout
    //   23: putfield 29	com/alipay/android/mini/window/MiniWebActivity:b	Landroid/widget/FrameLayout;
    //   26: aload_0
    //   27: getfield 29	com/alipay/android/mini/window/MiniWebActivity:b	Landroid/widget/FrameLayout;
    //   30: aload_0
    //   31: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   34: invokevirtual 64	android/widget/FrameLayout:addView	(Landroid/view/View;)V
    //   37: aload_0
    //   38: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   41: sipush 6666
    //   44: invokevirtual 68	android/webkit/WebView:setId	(I)V
    //   47: aload_0
    //   48: getfield 70	com/alipay/android/mini/window/MiniWebActivity:j	Ljava/util/Map;
    //   51: astore_2
    //   52: iconst_1
    //   53: newarray int
    //   55: astore_3
    //   56: aload_3
    //   57: iconst_0
    //   58: aload_0
    //   59: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   62: invokevirtual 74	android/webkit/WebView:getId	()I
    //   65: iastore
    //   66: aload_2
    //   67: ldc 76
    //   69: aload_3
    //   70: invokeinterface 82 3 0
    //   75: pop
    //   76: aload_0
    //   77: aload_0
    //   78: getstatic 85	com/alipay/android/app/R$id:aa	I
    //   81: invokevirtual 58	com/alipay/android/mini/window/MiniWebActivity:findViewById	(I)Landroid/view/View;
    //   84: checkcast 87	android/widget/ImageView
    //   87: putfield 89	com/alipay/android/mini/window/MiniWebActivity:c	Landroid/widget/ImageView;
    //   90: aload_0
    //   91: getfield 70	com/alipay/android/mini/window/MiniWebActivity:j	Ljava/util/Map;
    //   94: astore 5
    //   96: iconst_1
    //   97: newarray int
    //   99: astore 6
    //   101: aload 6
    //   103: iconst_0
    //   104: getstatic 85	com/alipay/android/app/R$id:aa	I
    //   107: iastore
    //   108: aload 5
    //   110: ldc 91
    //   112: aload 6
    //   114: invokeinterface 82 3 0
    //   119: pop
    //   120: aload_0
    //   121: aload_0
    //   122: getstatic 94	com/alipay/android/app/R$id:ab	I
    //   125: invokevirtual 58	com/alipay/android/mini/window/MiniWebActivity:findViewById	(I)Landroid/view/View;
    //   128: checkcast 87	android/widget/ImageView
    //   131: putfield 96	com/alipay/android/mini/window/MiniWebActivity:d	Landroid/widget/ImageView;
    //   134: aload_0
    //   135: getfield 70	com/alipay/android/mini/window/MiniWebActivity:j	Ljava/util/Map;
    //   138: astore 8
    //   140: iconst_1
    //   141: newarray int
    //   143: astore 9
    //   145: aload 9
    //   147: iconst_0
    //   148: getstatic 94	com/alipay/android/app/R$id:ab	I
    //   151: iastore
    //   152: aload 8
    //   154: ldc 98
    //   156: aload 9
    //   158: invokeinterface 82 3 0
    //   163: pop
    //   164: aload_0
    //   165: aload_0
    //   166: getstatic 101	com/alipay/android/app/R$id:ac	I
    //   169: invokevirtual 58	com/alipay/android/mini/window/MiniWebActivity:findViewById	(I)Landroid/view/View;
    //   172: checkcast 87	android/widget/ImageView
    //   175: putfield 103	com/alipay/android/mini/window/MiniWebActivity:e	Landroid/widget/ImageView;
    //   178: aload_0
    //   179: getfield 70	com/alipay/android/mini/window/MiniWebActivity:j	Ljava/util/Map;
    //   182: astore 11
    //   184: iconst_1
    //   185: newarray int
    //   187: astore 12
    //   189: aload 12
    //   191: iconst_0
    //   192: getstatic 101	com/alipay/android/app/R$id:ac	I
    //   195: iastore
    //   196: aload 11
    //   198: ldc 105
    //   200: aload 12
    //   202: invokeinterface 82 3 0
    //   207: pop
    //   208: aload_0
    //   209: aload_0
    //   210: getstatic 108	com/alipay/android/app/R$id:Z	I
    //   213: invokevirtual 58	com/alipay/android/mini/window/MiniWebActivity:findViewById	(I)Landroid/view/View;
    //   216: checkcast 110	android/widget/TextView
    //   219: putfield 39	com/alipay/android/mini/window/MiniWebActivity:i	Landroid/widget/TextView;
    //   222: aload_0
    //   223: getfield 39	com/alipay/android/mini/window/MiniWebActivity:i	Landroid/widget/TextView;
    //   226: aload_0
    //   227: getfield 37	com/alipay/android/mini/window/MiniWebActivity:h	Ljava/lang/String;
    //   230: invokevirtual 114	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   233: aload_0
    //   234: getfield 70	com/alipay/android/mini/window/MiniWebActivity:j	Ljava/util/Map;
    //   237: astore 14
    //   239: iconst_1
    //   240: newarray int
    //   242: astore 15
    //   244: aload 15
    //   246: iconst_0
    //   247: getstatic 108	com/alipay/android/app/R$id:Z	I
    //   250: iastore
    //   251: aload 14
    //   253: ldc 116
    //   255: aload 15
    //   257: invokeinterface 82 3 0
    //   262: pop
    //   263: aload_0
    //   264: aload_0
    //   265: getstatic 119	com/alipay/android/app/R$id:Y	I
    //   268: invokevirtual 58	com/alipay/android/mini/window/MiniWebActivity:findViewById	(I)Landroid/view/View;
    //   271: checkcast 121	android/widget/ProgressBar
    //   274: putfield 35	com/alipay/android/mini/window/MiniWebActivity:g	Landroid/widget/ProgressBar;
    //   277: aload_0
    //   278: getfield 35	com/alipay/android/mini/window/MiniWebActivity:g	Landroid/widget/ProgressBar;
    //   281: iconst_0
    //   282: invokevirtual 124	android/widget/ProgressBar:setSecondaryProgress	(I)V
    //   285: aload_0
    //   286: getfield 89	com/alipay/android/mini/window/MiniWebActivity:c	Landroid/widget/ImageView;
    //   289: iconst_0
    //   290: invokevirtual 128	android/widget/ImageView:setEnabled	(Z)V
    //   293: aload_0
    //   294: getfield 96	com/alipay/android/mini/window/MiniWebActivity:d	Landroid/widget/ImageView;
    //   297: iconst_0
    //   298: invokevirtual 128	android/widget/ImageView:setEnabled	(Z)V
    //   301: aload_0
    //   302: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   305: invokevirtual 132	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   308: iconst_1
    //   309: invokevirtual 137	android/webkit/WebSettings:setSupportMultipleWindows	(Z)V
    //   312: aload_0
    //   313: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   316: invokevirtual 132	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   319: iconst_1
    //   320: invokevirtual 140	android/webkit/WebSettings:setJavaScriptEnabled	(Z)V
    //   323: aload_0
    //   324: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   327: invokevirtual 132	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   330: iconst_0
    //   331: invokevirtual 143	android/webkit/WebSettings:setSavePassword	(Z)V
    //   334: aload_0
    //   335: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   338: invokevirtual 132	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   341: iconst_1
    //   342: invokevirtual 146	android/webkit/WebSettings:setJavaScriptCanOpenWindowsAutomatically	(Z)V
    //   345: aload_0
    //   346: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   349: iconst_1
    //   350: invokevirtual 149	android/webkit/WebView:setVerticalScrollbarOverlay	(Z)V
    //   353: getstatic 154	android/os/Build$VERSION:SDK_INT	I
    //   356: bipush 7
    //   358: if_icmplt +77 -> 435
    //   361: aload_0
    //   362: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   365: invokevirtual 132	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   368: invokevirtual 160	java/lang/Object:getClass	()Ljava/lang/Class;
    //   371: astore 18
    //   373: iconst_1
    //   374: anewarray 162	java/lang/Class
    //   377: astore 19
    //   379: aload 19
    //   381: iconst_0
    //   382: getstatic 168	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   385: aastore
    //   386: aload 18
    //   388: ldc 170
    //   390: aload 19
    //   392: invokevirtual 174	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   395: astore 20
    //   397: aload 20
    //   399: ifnull +36 -> 435
    //   402: aload_0
    //   403: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   406: invokevirtual 132	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   409: astore 21
    //   411: iconst_1
    //   412: anewarray 156	java/lang/Object
    //   415: astore 22
    //   417: aload 22
    //   419: iconst_0
    //   420: iconst_1
    //   421: invokestatic 178	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   424: aastore
    //   425: aload 20
    //   427: aload 21
    //   429: aload 22
    //   431: invokevirtual 184	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   434: pop
    //   435: aload_0
    //   436: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   439: new 186	com/alipay/android/mini/window/r
    //   442: dup
    //   443: aload_0
    //   444: invokespecial 189	com/alipay/android/mini/window/r:<init>	(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    //   447: invokevirtual 193	android/webkit/WebView:setWebChromeClient	(Landroid/webkit/WebChromeClient;)V
    //   450: aload_0
    //   451: getfield 27	com/alipay/android/mini/window/MiniWebActivity:a	Landroid/webkit/WebView;
    //   454: new 195	com/alipay/android/mini/window/s
    //   457: dup
    //   458: aload_0
    //   459: invokespecial 196	com/alipay/android/mini/window/s:<init>	(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    //   462: invokevirtual 200	android/webkit/WebView:setWebViewClient	(Landroid/webkit/WebViewClient;)V
    //   465: aload_0
    //   466: getfield 89	com/alipay/android/mini/window/MiniWebActivity:c	Landroid/widget/ImageView;
    //   469: new 202	com/alipay/android/mini/window/t
    //   472: dup
    //   473: aload_0
    //   474: invokespecial 203	com/alipay/android/mini/window/t:<init>	(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    //   477: invokevirtual 207	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   480: aload_0
    //   481: getfield 96	com/alipay/android/mini/window/MiniWebActivity:d	Landroid/widget/ImageView;
    //   484: new 209	com/alipay/android/mini/window/u
    //   487: dup
    //   488: aload_0
    //   489: invokespecial 210	com/alipay/android/mini/window/u:<init>	(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    //   492: invokevirtual 207	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   495: aload_0
    //   496: getfield 103	com/alipay/android/mini/window/MiniWebActivity:e	Landroid/widget/ImageView;
    //   499: new 212	com/alipay/android/mini/window/v
    //   502: dup
    //   503: aload_0
    //   504: invokespecial 213	com/alipay/android/mini/window/v:<init>	(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    //   507: invokevirtual 207	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   510: iconst_1
    //   511: ireturn
    //   512: astore_1
    //   513: aload_1
    //   514: invokevirtual 216	java/lang/Exception:printStackTrace	()V
    //   517: iconst_0
    //   518: ireturn
    //   519: astore 17
    //   521: aload 17
    //   523: invokevirtual 216	java/lang/Exception:printStackTrace	()V
    //   526: goto -91 -> 435
    //
    // Exception table:
    //   from	to	target	type
    //   0	12	512	java/lang/Exception
    //   361	397	519	java/lang/Exception
    //   402	435	519	java/lang/Exception
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(1);
    setContentView(R.layout.B);
    getWindow().getAttributes().height = -1;
    getWindow().getAttributes().width = -1;
    getWindow().getAttributes().horizontalMargin = 0.0F;
    this.j = new HashMap();
    this.f = getIntent().getExtras().getString("url");
    this.h = getIntent().getExtras().getString("title");
    if (!a())
    {
      finish();
      return;
    }
    if (GlobalContext.a().c().c());
    try
    {
      String str1 = "URL:" + this.f;
      Iterator localIterator = this.j.keySet().iterator();
      String str3;
      for (String str2 = str1; localIterator.hasNext(); str2 = str2 + "," + str3 + ":" + ((int[])this.j.get(str3))[0])
        str3 = (String)localIterator.next();
      DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
      EventObject localEventObject = EventObject.OnResume;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = this;
      arrayOfObject[1] = "mini-webview";
      arrayOfObject[2] = str2;
      arrayOfObject[3] = this.j;
      localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
      this.a.loadUrl(this.f);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        LogUtils.a(localException);
    }
  }

  protected void onDestroy()
  {
    if (this.b != null)
    {
      this.b.removeAllViews();
      this.b = null;
    }
    if (this.a != null)
    {
      this.a.setWebViewClient(null);
      this.a.setWebChromeClient(null);
      this.a.setDownloadListener(null);
      this.a.removeAllViews();
      this.a.destroy();
      this.a = null;
    }
    if (this.c != null)
    {
      this.c.setOnClickListener(null);
      this.c = null;
    }
    if (this.d != null)
    {
      this.d.setOnClickListener(null);
      this.d = null;
    }
    if (this.e != null)
    {
      this.e.setOnClickListener(null);
      this.e = null;
    }
    super.onDestroy();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.MiniWebActivity
 * JD-Core Version:    0.6.2
 */