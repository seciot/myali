package com.alipay.android.setting.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.widget.CustomArrayAdapter;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.android.setting.request.RequestContainer;
import com.alipay.android.setting.request.RequestService;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.test.ui.core.EventObject;
import com.alipay.trobot.external.DefaultMesssageHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class PaymentChannelActivity extends BaseSettingActivity
  implements View.OnClickListener
{
  private RadioGroup d;
  private int e;
  private APRadioTableView f;
  private int g;
  private String h;
  private String i;
  private SparseArray j = new SparseArray();
  private APRadioTableView k;
  private CheckBox l;
  private TextView m;
  private APTableView n;
  private TextView o;
  private boolean p;
  private boolean q;
  private boolean r;
  private ArrayList s = new ArrayList();

  private void a(ArrayList paramArrayList)
  {
    int i1 = 0;
    this.j.clear();
    CustomArrayAdapter localCustomArrayAdapter = new CustomArrayAdapter(this);
    int i2 = paramArrayList.size();
    for (int i3 = 0; i3 < i2; i3++)
    {
      localCustomArrayAdapter.add(((l)paramArrayList.get(i3)).b);
      this.j.put(i3, ((l)paramArrayList.get(i3)).a);
    }
    this.f.setOnClickListener(new i(this, localCustomArrayAdapter));
    this.h = ((l)paramArrayList.get(0)).a;
    int i4 = paramArrayList.size();
    while (true)
    {
      if (i1 < i4)
      {
        if (((l)paramArrayList.get(i1)).c)
        {
          this.f.setLeftText(((l)paramArrayList.get(i1)).b);
          this.g = i1;
          this.i = ((l)paramArrayList.get(i1)).a;
          this.h = this.i;
        }
      }
      else
        return;
      i1++;
    }
  }

  private void d()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, UIPropUtil.v(this, 45.0F));
    localLayoutParams.gravity = 16;
    int i1 = UIPropUtil.v(this, 10.0F);
    int i2 = UIPropUtil.v(this, 16.0F);
    int i3 = this.s.size();
    if (i3 > 0)
    {
      int i4 = 0;
      if (i4 < i3)
      {
        l locall = (l)this.s.get(i4);
        RadioButton localRadioButton = (RadioButton)getLayoutInflater().inflate(R.layout.am, this.d, false);
        localRadioButton.setOnClickListener(new k(this, localRadioButton, locall));
        localRadioButton.setText(locall.b);
        localRadioButton.setId(i4);
        if (i3 > 1)
          if (i4 == 0)
            localRadioButton.setBackgroundResource(R.drawable.input_top_normal);
        while (true)
        {
          localRadioButton.setPadding(i1, 0, i2, 0);
          localRadioButton.setLayoutParams(localLayoutParams);
          this.d.addView(localRadioButton, i4);
          if (locall.c)
          {
            this.d.check(i4);
            this.e = i4;
          }
          i4++;
          break;
          if (i4 == i3 - 1)
          {
            localRadioButton.setBackgroundResource(R.drawable.input_bottom_normal);
          }
          else
          {
            localRadioButton.setBackgroundResource(R.drawable.input_center_normal);
            continue;
            localRadioButton.setBackgroundResource(R.drawable.input_normal);
          }
        }
      }
    }
  }

  // ERROR //
  public final void a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: iload_2
    //   1: iconst_4
    //   2: if_icmpne +108 -> 110
    //   5: new 222	org/json/JSONObject
    //   8: dup
    //   9: aload_1
    //   10: invokespecial 224	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   13: astore 6
    //   15: aload 6
    //   17: ldc 226
    //   19: iconst_0
    //   20: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   23: ifne +132 -> 155
    //   26: aload_0
    //   27: getstatic 235	com/alipay/android/app/R$drawable:av	I
    //   30: getstatic 240	com/alipay/android/app/R$string:P	I
    //   33: invokestatic 245	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;II)V
    //   36: aload_0
    //   37: invokespecial 247	com/alipay/android/setting/activity/PaymentChannelActivity:d	()V
    //   40: aload_0
    //   41: getfield 249	com/alipay/android/setting/activity/PaymentChannelActivity:m	Landroid/widget/TextView;
    //   44: iconst_0
    //   45: invokevirtual 254	android/widget/TextView:setVisibility	(I)V
    //   48: aload_0
    //   49: getfield 256	com/alipay/android/setting/activity/PaymentChannelActivity:n	Lcom/alipay/mobile/commonui/widget/APTableView;
    //   52: iconst_0
    //   53: invokevirtual 259	com/alipay/mobile/commonui/widget/APTableView:setVisibility	(I)V
    //   56: aload_0
    //   57: getfield 159	com/alipay/android/setting/activity/PaymentChannelActivity:d	Landroid/widget/RadioGroup;
    //   60: iconst_0
    //   61: invokevirtual 260	android/widget/RadioGroup:setVisibility	(I)V
    //   64: aload_0
    //   65: getfield 262	com/alipay/android/setting/activity/PaymentChannelActivity:k	Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    //   68: iconst_0
    //   69: invokevirtual 263	com/alipay/mobile/commonui/widget/APRadioTableView:setVisibility	(I)V
    //   72: aload_0
    //   73: getfield 265	com/alipay/android/setting/activity/PaymentChannelActivity:l	Landroid/widget/CheckBox;
    //   76: iconst_0
    //   77: invokevirtual 268	android/widget/CheckBox:setVisibility	(I)V
    //   80: aload_0
    //   81: getfield 270	com/alipay/android/setting/activity/PaymentChannelActivity:p	Z
    //   84: ifeq +11 -> 95
    //   87: aload_0
    //   88: getfield 262	com/alipay/android/setting/activity/PaymentChannelActivity:k	Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    //   91: iconst_1
    //   92: invokevirtual 274	com/alipay/mobile/commonui/widget/APRadioTableView:showToggleButton	(Z)V
    //   95: aload_0
    //   96: getfield 276	com/alipay/android/setting/activity/PaymentChannelActivity:q	Z
    //   99: ifeq +11 -> 110
    //   102: aload_0
    //   103: getfield 265	com/alipay/android/setting/activity/PaymentChannelActivity:l	Landroid/widget/CheckBox;
    //   106: iconst_1
    //   107: invokevirtual 279	android/widget/CheckBox:setChecked	(Z)V
    //   110: iload_2
    //   111: iconst_5
    //   112: if_icmpne +42 -> 154
    //   115: new 222	org/json/JSONObject
    //   118: dup
    //   119: aload_1
    //   120: invokespecial 224	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   123: astore_3
    //   124: aload_3
    //   125: ldc 226
    //   127: iconst_0
    //   128: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   131: ifeq +418 -> 549
    //   134: aload_0
    //   135: getstatic 282	com/alipay/android/app/R$drawable:ax	I
    //   138: getstatic 285	com/alipay/android/app/R$string:V	I
    //   141: invokestatic 245	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;II)V
    //   144: ldc_w 287
    //   147: invokestatic 291	com/alipay/android/mini/util/LogAgent:h	(Ljava/lang/String;)V
    //   150: aload_0
    //   151: invokevirtual 294	com/alipay/android/setting/activity/PaymentChannelActivity:finish	()V
    //   154: return
    //   155: aload 6
    //   157: ldc 226
    //   159: iconst_0
    //   160: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   163: ifne +26 -> 189
    //   166: aload_0
    //   167: getstatic 235	com/alipay/android/app/R$drawable:av	I
    //   170: getstatic 240	com/alipay/android/app/R$string:P	I
    //   173: invokestatic 245	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;II)V
    //   176: goto -140 -> 36
    //   179: astore 7
    //   181: aload 7
    //   183: invokevirtual 297	org/json/JSONException:printStackTrace	()V
    //   186: goto -150 -> 36
    //   189: aload_0
    //   190: aload 6
    //   192: ldc_w 299
    //   195: iconst_0
    //   196: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   199: putfield 270	com/alipay/android/setting/activity/PaymentChannelActivity:p	Z
    //   202: aload_0
    //   203: aload 6
    //   205: ldc_w 301
    //   208: iconst_0
    //   209: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   212: putfield 276	com/alipay/android/setting/activity/PaymentChannelActivity:q	Z
    //   215: aload_0
    //   216: aload 6
    //   218: ldc_w 303
    //   221: iconst_0
    //   222: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   225: putfield 305	com/alipay/android/setting/activity/PaymentChannelActivity:b	Z
    //   228: aload_0
    //   229: aload 6
    //   231: ldc_w 307
    //   234: iconst_0
    //   235: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   238: putfield 309	com/alipay/android/setting/activity/PaymentChannelActivity:r	Z
    //   241: aload 6
    //   243: ldc_w 311
    //   246: invokevirtual 315	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   249: astore 8
    //   251: aload_0
    //   252: getfield 265	com/alipay/android/setting/activity/PaymentChannelActivity:l	Landroid/widget/CheckBox;
    //   255: aload 6
    //   257: ldc_w 317
    //   260: ldc_w 319
    //   263: invokevirtual 323	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   266: invokevirtual 324	android/widget/CheckBox:setText	(Ljava/lang/CharSequence;)V
    //   269: aload 8
    //   271: ifnull -235 -> 36
    //   274: aload_0
    //   275: getfield 46	com/alipay/android/setting/activity/PaymentChannelActivity:s	Ljava/util/ArrayList;
    //   278: invokevirtual 325	java/util/ArrayList:clear	()V
    //   281: aload 8
    //   283: invokevirtual 330	org/json/JSONArray:length	()I
    //   286: istore 9
    //   288: iconst_0
    //   289: istore 10
    //   291: iload 10
    //   293: iload 9
    //   295: if_icmpge -259 -> 36
    //   298: aload 8
    //   300: iload 10
    //   302: invokevirtual 334	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   305: astore 11
    //   307: new 94	com/alipay/android/setting/activity/l
    //   310: dup
    //   311: aload_0
    //   312: iconst_0
    //   313: invokespecial 337	com/alipay/android/setting/activity/l:<init>	(Lcom/alipay/android/setting/activity/PaymentChannelActivity;B)V
    //   316: astore 12
    //   318: aload 12
    //   320: aload 11
    //   322: ldc_w 339
    //   325: aconst_null
    //   326: invokevirtual 323	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   329: putfield 104	com/alipay/android/setting/activity/l:a	Ljava/lang/String;
    //   332: aload 12
    //   334: aload 11
    //   336: ldc_w 341
    //   339: aconst_null
    //   340: invokevirtual 323	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   343: putfield 96	com/alipay/android/setting/activity/l:b	Ljava/lang/String;
    //   346: aload 12
    //   348: aload 11
    //   350: ldc_w 343
    //   353: iconst_0
    //   354: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   357: putfield 122	com/alipay/android/setting/activity/l:c	Z
    //   360: aload 12
    //   362: aload 11
    //   364: ldc_w 345
    //   367: iconst_0
    //   368: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   371: putfield 347	com/alipay/android/setting/activity/l:d	Z
    //   374: aload 12
    //   376: getfield 347	com/alipay/android/setting/activity/l:d	Z
    //   379: ifeq +153 -> 532
    //   382: new 43	java/util/ArrayList
    //   385: dup
    //   386: invokespecial 44	java/util/ArrayList:<init>	()V
    //   389: astore 13
    //   391: aload 11
    //   393: ldc_w 349
    //   396: invokevirtual 315	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   399: astore 14
    //   401: iconst_0
    //   402: istore 15
    //   404: aload 14
    //   406: invokevirtual 330	org/json/JSONArray:length	()I
    //   409: istore 16
    //   411: iload 15
    //   413: iload 16
    //   415: if_icmpge +80 -> 495
    //   418: aload 14
    //   420: iload 15
    //   422: invokevirtual 334	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   425: astore 17
    //   427: new 94	com/alipay/android/setting/activity/l
    //   430: dup
    //   431: aload_0
    //   432: iconst_0
    //   433: invokespecial 337	com/alipay/android/setting/activity/l:<init>	(Lcom/alipay/android/setting/activity/PaymentChannelActivity;B)V
    //   436: astore 18
    //   438: aload 18
    //   440: aload 17
    //   442: ldc_w 339
    //   445: aconst_null
    //   446: invokevirtual 323	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   449: putfield 104	com/alipay/android/setting/activity/l:a	Ljava/lang/String;
    //   452: aload 18
    //   454: aload 17
    //   456: ldc_w 341
    //   459: aconst_null
    //   460: invokevirtual 323	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   463: putfield 96	com/alipay/android/setting/activity/l:b	Ljava/lang/String;
    //   466: aload 18
    //   468: aload 17
    //   470: ldc_w 343
    //   473: iconst_0
    //   474: invokevirtual 230	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   477: putfield 122	com/alipay/android/setting/activity/l:c	Z
    //   480: aload 13
    //   482: iload 15
    //   484: aload 18
    //   486: invokevirtual 351	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   489: iinc 15 1
    //   492: goto -81 -> 411
    //   495: aload 12
    //   497: aload 13
    //   499: putfield 353	com/alipay/android/setting/activity/l:e	Ljava/util/ArrayList;
    //   502: aload_0
    //   503: aload 13
    //   505: invokespecial 78	com/alipay/android/setting/activity/PaymentChannelActivity:a	(Ljava/util/ArrayList;)V
    //   508: aload 12
    //   510: getfield 122	com/alipay/android/setting/activity/l:c	Z
    //   513: ifeq +19 -> 532
    //   516: aload_0
    //   517: getfield 110	com/alipay/android/setting/activity/PaymentChannelActivity:f	Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    //   520: iconst_0
    //   521: invokevirtual 263	com/alipay/mobile/commonui/widget/APRadioTableView:setVisibility	(I)V
    //   524: aload_0
    //   525: getfield 132	com/alipay/android/setting/activity/PaymentChannelActivity:o	Landroid/widget/TextView;
    //   528: iconst_0
    //   529: invokevirtual 254	android/widget/TextView:setVisibility	(I)V
    //   532: aload_0
    //   533: getfield 46	com/alipay/android/setting/activity/PaymentChannelActivity:s	Ljava/util/ArrayList;
    //   536: iload 10
    //   538: aload 12
    //   540: invokevirtual 351	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   543: iinc 10 1
    //   546: goto -255 -> 291
    //   549: aload_3
    //   550: ldc_w 355
    //   553: aload_0
    //   554: invokevirtual 359	com/alipay/android/setting/activity/PaymentChannelActivity:getResources	()Landroid/content/res/Resources;
    //   557: getstatic 362	com/alipay/android/app/R$string:U	I
    //   560: invokevirtual 368	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   563: invokevirtual 323	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   566: astore 5
    //   568: aload_0
    //   569: getstatic 235	com/alipay/android/app/R$drawable:av	I
    //   572: aload 5
    //   574: invokestatic 371	com/alipay/android/setting/widgets/CustomToast:a	(Landroid/app/Activity;ILjava/lang/String;)V
    //   577: return
    //   578: astore 4
    //   580: aload 4
    //   582: invokevirtual 297	org/json/JSONException:printStackTrace	()V
    //   585: return
    //
    // Exception table:
    //   from	to	target	type
    //   5	36	179	org/json/JSONException
    //   155	176	179	org/json/JSONException
    //   189	269	179	org/json/JSONException
    //   274	288	179	org/json/JSONException
    //   298	401	179	org/json/JSONException
    //   404	411	179	org/json/JSONException
    //   418	489	179	org/json/JSONException
    //   495	532	179	org/json/JSONException
    //   532	543	179	org/json/JSONException
    //   115	154	578	org/json/JSONException
    //   549	577	578	org/json/JSONException
  }

  protected final void c(String paramString)
  {
    showProgressDialog(null, false, null);
    this.a.h = ((l)this.s.get(this.d.getCheckedRadioButtonId())).a;
    this.a.i = this.h;
    this.a.k = this.k.getToggleButton().isChecked();
    this.a.l = this.l.isChecked();
    this.a.m = this.b;
    if (this.r)
      this.a.g = paramString;
    Intent localIntent = new Intent(getApplicationContext(), RequestService.class);
    localIntent.putExtra("type", 5);
    localIntent.putExtra("local_data", this.a);
    startService(localIntent);
  }

  public void finish()
  {
    super.finish();
  }

  public void onBackPressed()
  {
    if ((this.d.getCheckedRadioButtonId() == this.e) && (this.p == this.k.getToggleButton().isChecked()) && (this.q == this.l.isChecked()) && (TextUtils.equals(this.i, (CharSequence)this.j.get(this.g))))
    {
      LogAgent.g("SPSafePay");
      super.onBackPressed();
      return;
    }
    if (this.r)
    {
      c();
      return;
    }
    c(null);
  }

  public void onClick(View paramView)
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aj);
    showProgressDialog(null, false, null);
    this.a = ((RequestContainer)getIntent().getExtras().getParcelable("local_data"));
    this.d = ((RadioGroup)findViewById(R.id.ar));
    this.f = ((APRadioTableView)findViewById(R.id.ay));
    this.f.setArrowType(33);
    this.k = ((APRadioTableView)findViewById(R.id.aq));
    this.k.setEnabled(false);
    this.l = ((CheckBox)findViewById(R.id.an));
    this.m = ((TextView)findViewById(R.id.as));
    this.n = ((APTableView)findViewById(R.id.at));
    this.n.setEnabled(false);
    this.n.setArrowImageVisibility(8);
    this.o = ((TextView)findViewById(R.id.au));
    Intent localIntent = new Intent(getApplicationContext(), RequestService.class);
    localIntent.putExtra("type", 4);
    localIntent.putExtra("local_data", this.a);
    startService(localIntent);
    if (GlobalContext.a().c().c());
    try
    {
      HashMap localHashMap = new HashMap();
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("titleBar:" + R.id.aC);
      int[] arrayOfInt1 = new int[1];
      arrayOfInt1[0] = R.id.aC;
      localHashMap.put("titleBar", arrayOfInt1);
      localStringBuffer.append(",setting_channel_tip2:" + R.id.as);
      int[] arrayOfInt2 = new int[1];
      arrayOfInt2[0] = R.id.as;
      localHashMap.put("setting_channel_tip2", arrayOfInt2);
      localStringBuffer.append(",setting_channel_group:" + R.id.ar);
      int[] arrayOfInt3 = new int[1];
      arrayOfInt3[0] = R.id.ar;
      localHashMap.put("setting_channel_group", arrayOfInt3);
      localStringBuffer.append(",setting_channel_tip4:" + R.id.au);
      int[] arrayOfInt4 = new int[1];
      arrayOfInt4[0] = R.id.au;
      localHashMap.put("setting_channel_tip4", arrayOfInt4);
      localStringBuffer.append(",setting_sub_channel_group:" + R.id.ay);
      int[] arrayOfInt5 = new int[1];
      arrayOfInt5[0] = R.id.ay;
      localHashMap.put("setting_sub_channel_group", arrayOfInt5);
      localStringBuffer.append(",setting_btn_point:" + R.id.aq);
      int[] arrayOfInt6 = new int[1];
      arrayOfInt6[0] = R.id.aq;
      localHashMap.put("setting_btn_point", arrayOfInt6);
      localStringBuffer.append(",setting_channel_tip3:" + R.id.at);
      int[] arrayOfInt7 = new int[1];
      arrayOfInt7[0] = R.id.at;
      localHashMap.put("setting_channel_tip3", arrayOfInt7);
      localStringBuffer.append(",setting_btn_autopay:" + R.id.an);
      int[] arrayOfInt8 = new int[1];
      arrayOfInt8[0] = R.id.an;
      localHashMap.put("setting_btn_autopay", arrayOfInt8);
      DefaultMesssageHandler localDefaultMesssageHandler = DefaultMesssageHandler.getInstance();
      EventObject localEventObject = EventObject.OnResume;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = this;
      arrayOfObject[1] = getClass().getSimpleName();
      arrayOfObject[2] = localStringBuffer.toString();
      arrayOfObject[3] = localHashMap;
      localDefaultMesssageHandler.onChangeEvent(localEventObject, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.d.removeAllViews();
  }

  protected void onStart()
  {
    super.onStart();
    a();
  }

  protected void onStop()
  {
    super.onStop();
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.PaymentChannelActivity
 * JD-Core Version:    0.6.2
 */