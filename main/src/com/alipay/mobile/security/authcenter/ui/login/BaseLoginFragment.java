package com.alipay.mobile.security.authcenter.ui.login;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View.OnClickListener;
import com.alibaba.fastjson.JSON;
import com.alipay.android.widget.security.ui.SecurityWebviewActivity_;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.login.bean.b;
import com.alipay.mobile.security.authcenter.a.e;
import com.alipay.mobile.security.authcenter.b.a.a;
import com.alipay.mobile.security.authcenter.ui.CompletePhoneUserInfoActivity_;
import com.alipay.mobile.security.authcenter.ui.CompleteUserInfoActivity_;
import com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment;
import com.alipay.mobile.security.authcenter.ui.TaobaoBindingAlipayUserActivity_;
import com.alipay.mobile.security.authcenter.ui.x;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobileapp.core.model.login.SecurityPolicyRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment
public abstract class BaseLoginFragment extends SecurityBaseFuncFragment
{
  private SchemeService d;
  private CacheSet e = CacheSet.getInstance(AlipayApplication.getInstance());
  final String o = "BaseLoginFragment";
  protected String p;
  protected a q;

  @ViewById(resName="checkCodeGetter")
  protected APCheckCodeGetter r;
  protected x s = new x();

  // ERROR //
  private void a(UserLoginResultBiz paramUserLoginResultBiz, UserInfo paramUserInfo)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +223 -> 224
    //   4: aload_1
    //   5: invokevirtual 59	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getUserId	()Ljava/lang/String;
    //   8: aload_2
    //   9: invokevirtual 62	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   12: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   15: ifne +203 -> 218
    //   18: iconst_1
    //   19: istore 18
    //   21: iload 18
    //   23: istore_3
    //   24: aload_0
    //   25: getfield 71	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   28: aload_0
    //   29: getfield 75	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:b	Lcom/alipay/mobile/framework/app/MicroApplication;
    //   32: invokevirtual 80	com/alipay/mobile/framework/app/MicroApplication:getAppId	()Ljava/lang/String;
    //   35: ldc 82
    //   37: aconst_null
    //   38: invokeinterface 88 4 0
    //   43: invokestatic 93	com/alipay/mobile/security/gesture/util/GestureDataCenter:getInstance	()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    //   46: iconst_0
    //   47: invokevirtual 97	com/alipay/mobile/security/gesture/util/GestureDataCenter:setNeedAuthGesture	(Z)V
    //   50: aload_0
    //   51: getfield 71	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   54: ldc 99
    //   56: invokevirtual 104	java/lang/Class:getName	()Ljava/lang/String;
    //   59: invokeinterface 108 2 0
    //   64: checkcast 99	com/alipay/mobile/framework/service/ext/security/AuthService
    //   67: iconst_1
    //   68: iconst_0
    //   69: invokevirtual 112	com/alipay/mobile/framework/service/ext/security/AuthService:notifyUnlockLoginApp	(ZZ)V
    //   72: aload_0
    //   73: getfield 47	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:e	Lcom/alipay/mobile/common/utils/CacheSet;
    //   76: ldc 114
    //   78: invokevirtual 118	com/alipay/mobile/common/utils/CacheSet:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   81: astore 5
    //   83: aload 5
    //   85: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   88: ifeq +148 -> 236
    //   91: aload_0
    //   92: invokevirtual 128	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   95: astore 15
    //   97: aload 15
    //   99: invokevirtual 134	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   102: aload 15
    //   104: invokevirtual 137	android/content/Context:getPackageName	()Ljava/lang/String;
    //   107: sipush 128
    //   110: invokevirtual 143	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   113: getfield 148	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   116: invokestatic 153	android/util/CommentHelper:extractZipComment	(Ljava/lang/String;)Ljava/lang/String;
    //   119: astore 17
    //   121: aload 17
    //   123: astore 6
    //   125: aload 5
    //   127: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   130: ifeq +131 -> 261
    //   133: aload 6
    //   135: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   138: ifne +123 -> 261
    //   141: aload 6
    //   143: ldc 155
    //   145: invokevirtual 159	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   148: ifne +113 -> 261
    //   151: aload 6
    //   153: invokestatic 165	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   156: astore 12
    //   158: aload 12
    //   160: invokestatic 170	com/alipay/mobilesecurity/a/a/a:a	(Landroid/net/Uri;)Z
    //   163: ifne +79 -> 242
    //   166: new 172	android/os/Bundle
    //   169: dup
    //   170: invokespecial 173	android/os/Bundle:<init>	()V
    //   173: astore 13
    //   175: aload 13
    //   177: ldc 175
    //   179: iload_3
    //   180: invokevirtual 179	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   183: aload_0
    //   184: getfield 71	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   187: ldc 181
    //   189: invokevirtual 104	java/lang/Class:getName	()Ljava/lang/String;
    //   192: invokeinterface 108 2 0
    //   197: checkcast 181	com/alipay/mobile/framework/service/ext/security/GestureService
    //   200: aload 13
    //   202: new 183	com/alipay/mobile/security/authcenter/ui/login/p
    //   205: dup
    //   206: aload_0
    //   207: iload_3
    //   208: aload 12
    //   210: invokespecial 186	com/alipay/mobile/security/authcenter/ui/login/p:<init>	(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;ZLandroid/net/Uri;)V
    //   213: invokevirtual 190	com/alipay/mobile/framework/service/ext/security/GestureService:setGesture	(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    //   216: pop
    //   217: return
    //   218: iconst_0
    //   219: istore 18
    //   221: goto -200 -> 21
    //   224: iconst_0
    //   225: istore_3
    //   226: goto -202 -> 24
    //   229: astore 16
    //   231: aload 16
    //   233: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   236: aconst_null
    //   237: astore 6
    //   239: goto -114 -> 125
    //   242: aload_0
    //   243: iload_3
    //   244: invokevirtual 195	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:d	(Z)V
    //   247: return
    //   248: astore 11
    //   250: aload_0
    //   251: iload_3
    //   252: invokevirtual 195	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:d	(Z)V
    //   255: aload 11
    //   257: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   260: return
    //   261: aload_0
    //   262: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   265: ldc 199
    //   267: invokeinterface 203 2 0
    //   272: ifeq +56 -> 328
    //   275: new 172	android/os/Bundle
    //   278: dup
    //   279: invokespecial 173	android/os/Bundle:<init>	()V
    //   282: astore 7
    //   284: aload 7
    //   286: ldc 205
    //   288: iconst_1
    //   289: invokevirtual 179	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   292: iload_3
    //   293: ifeq +11 -> 304
    //   296: aload 7
    //   298: ldc 207
    //   300: iload_3
    //   301: invokevirtual 179	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   304: aload_0
    //   305: getfield 71	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   308: aload_0
    //   309: getfield 75	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:b	Lcom/alipay/mobile/framework/app/MicroApplication;
    //   312: invokevirtual 80	com/alipay/mobile/framework/app/MicroApplication:getAppId	()Ljava/lang/String;
    //   315: ldc 209
    //   317: aload 7
    //   319: invokeinterface 212 4 0
    //   324: return
    //   325: astore 8
    //   327: return
    //   328: aload_0
    //   329: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   332: ldc 214
    //   334: invokeinterface 203 2 0
    //   339: ifeq +11 -> 350
    //   342: aload_0
    //   343: iload_3
    //   344: ldc 214
    //   346: invokespecial 217	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	(ZLjava/lang/String;)V
    //   349: return
    //   350: aload_0
    //   351: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   354: ldc 219
    //   356: invokeinterface 203 2 0
    //   361: ifeq +56 -> 417
    //   364: new 172	android/os/Bundle
    //   367: dup
    //   368: invokespecial 173	android/os/Bundle:<init>	()V
    //   371: astore 9
    //   373: aload 9
    //   375: ldc 205
    //   377: iconst_1
    //   378: invokevirtual 179	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   381: iload_3
    //   382: ifeq +11 -> 393
    //   385: aload 9
    //   387: ldc 207
    //   389: iload_3
    //   390: invokevirtual 179	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   393: aload_0
    //   394: getfield 71	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   397: aload_0
    //   398: getfield 75	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:b	Lcom/alipay/mobile/framework/app/MicroApplication;
    //   401: invokevirtual 80	com/alipay/mobile/framework/app/MicroApplication:getAppId	()Ljava/lang/String;
    //   404: ldc 221
    //   406: aload 9
    //   408: invokeinterface 212 4 0
    //   413: return
    //   414: astore 10
    //   416: return
    //   417: aload_0
    //   418: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   421: ldc 223
    //   423: invokeinterface 203 2 0
    //   428: ifeq +10 -> 438
    //   431: aload_0
    //   432: iload_3
    //   433: aconst_null
    //   434: invokespecial 217	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	(ZLjava/lang/String;)V
    //   437: return
    //   438: aload_0
    //   439: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   442: ldc 225
    //   444: invokeinterface 203 2 0
    //   449: ifeq +8 -> 457
    //   452: aload_0
    //   453: invokespecial 228	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:c	()V
    //   456: return
    //   457: aload_0
    //   458: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   461: ldc 230
    //   463: invokeinterface 203 2 0
    //   468: ifeq +11 -> 479
    //   471: aload_0
    //   472: iload_3
    //   473: ldc 230
    //   475: invokespecial 217	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	(ZLjava/lang/String;)V
    //   478: return
    //   479: aload_0
    //   480: getfield 197	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:q	Lcom/alipay/mobile/security/authcenter/b/a/a;
    //   483: ldc 232
    //   485: invokeinterface 203 2 0
    //   490: ifeq +10 -> 500
    //   493: aload_0
    //   494: iconst_1
    //   495: aconst_null
    //   496: invokespecial 217	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:a	(ZLjava/lang/String;)V
    //   499: return
    //   500: aload_0
    //   501: iload_3
    //   502: invokevirtual 195	com/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment:d	(Z)V
    //   505: return
    //   506: astore 4
    //   508: goto -436 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   97	121	229	java/lang/Exception
    //   151	217	248	java/lang/Exception
    //   242	247	248	java/lang/Exception
    //   304	324	325	com/alipay/mobile/framework/app/AppLoadException
    //   393	413	414	com/alipay/mobile/framework/app/AppLoadException
    //   50	72	506	java/lang/Exception
  }

  private void a(UserLoginResultBiz paramUserLoginResultBiz, String paramString, View.OnClickListener paramOnClickListener)
  {
    String str = paramUserLoginResultBiz.getMemo();
    if ((str != null) && (!"".equals(str)))
    {
      new SecurityUtil().a(getActivity(), str, paramString, paramOnClickListener, getResources().getString(R.string.bJ), new m(this));
      return;
    }
    ((BaseFragmentActivity)getActivity()).alert(null, getResources().getString(R.string.bG), getResources().getString(R.string.bZ), null, null, null);
  }

  private void a(boolean paramBoolean, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("switchAccount", paramBoolean);
    ((GestureService)this.a.getExtServiceByInterface(GestureService.class.getName())).setGesture(localBundle, new q(this, paramString, paramBoolean));
  }

  private void c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("actionType", "20000002");
    try
    {
      this.a.startApp(this.b.getAppId(), "20000001", localBundle);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @Background
  protected void a(LoginInputParam paramLoginInputParam)
  {
    try
    {
      long l1 = System.currentTimeMillis();
      UserInfo localUserInfo = ((AuthService)this.a.getExtServiceByInterface(AuthService.class.getName())).getLastLoginedUserInfo();
      UserLoginResultBiz localUserLoginResultBiz = new e().a(paramLoginInputParam);
      long l2 = System.currentTimeMillis() - l1;
      if (paramLoginInputParam.loginType == null);
      for (String str = "alipayLoginView"; ; str = "taobaoLoginView")
      {
        AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
        BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
        String[] arrayOfString = new String[4];
        arrayOfString[0] = "";
        arrayOfString[1] = "";
        arrayOfString[2] = String.valueOf(l2);
        arrayOfString[3] = "";
        AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_login", null, "s", "c", arrayOfString);
        new StringBuilder("login end duration: ").append(l2).toString();
        a(paramLoginInputParam.logonId, paramLoginInputParam.pwd, localUserLoginResultBiz, localUserInfo);
        return;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      throw localRuntimeException;
    }
  }

  protected abstract void a(b paramb);

  @UiThread
  protected void a(String paramString1, String paramString2, UserLoginResultBiz paramUserLoginResultBiz, UserInfo paramUserInfo)
  {
    BaseFragmentActivity localBaseFragmentActivity = (BaseFragmentActivity)getActivity();
    localBaseFragmentActivity.dismissProgressDialog();
    if (paramUserLoginResultBiz != null);
    try
    {
      if (1000 == paramUserLoginResultBiz.getResultStatus())
      {
        String str2 = paramUserLoginResultBiz.getSecurityPolicyRes();
        if (!TextUtils.isEmpty(str2))
        {
          SecurityPolicyRes localSecurityPolicyRes = (SecurityPolicyRes)JSON.parseObject(str2, SecurityPolicyRes.class);
          if ((localSecurityPolicyRes != null) && (localSecurityPolicyRes.isNeedH5()))
          {
            Intent localIntent4 = new Intent(localBaseFragmentActivity, SecurityWebviewActivity_.class);
            localIntent4.putExtra("URL", localSecurityPolicyRes.getSecurityH5Url() + "?securityId=" + Uri.encode(localSecurityPolicyRes.getSecurityId()) + "&callbackUrl=" + Uri.encode("https://www.alipay.com/webviewbridge?action=quit"));
            localIntent4.putExtra("securityId", localSecurityPolicyRes.getSecurityId());
            startActivityForResult(localIntent4, 16);
            return;
          }
          a(paramUserLoginResultBiz, paramUserInfo);
          return;
        }
        a(paramUserLoginResultBiz, paramUserInfo);
        return;
      }
      if (1036 == paramUserLoginResultBiz.getResultStatus())
      {
        localBaseFragmentActivity.alert("", paramUserLoginResultBiz.getMemo(), getResources().getString(R.string.af), new r(this), null, null);
        return;
      }
      if ((2010 == paramUserLoginResultBiz.getResultStatus()) || (2011 == paramUserLoginResultBiz.getResultStatus()))
      {
        if (paramUserLoginResultBiz.getLoginCheckCodeImg() != null)
        {
          byte[] arrayOfByte = Base64.decode(paramUserLoginResultBiz.getLoginCheckCodeImg(), 0);
          this.s.a(paramUserLoginResultBiz.getLoginCheckCodeUrl());
          this.s.a(arrayOfByte);
          this.s.a();
          a(arrayOfByte);
        }
        while (true)
        {
          localBaseFragmentActivity.alert("", paramUserLoginResultBiz.getMemo(), getResources().getString(R.string.af), null, null, null);
          return;
          b(this.s.b());
        }
      }
      if (paramUserLoginResultBiz.getTbCheckCodeUrl() != null)
      {
        this.s.b(paramUserLoginResultBiz.getTbCheckCodeUrl());
        this.s.c(paramUserLoginResultBiz.getTbCheckCodeId());
        this.s.a();
        b(paramUserLoginResultBiz.getTbCheckCodeUrl());
        localBaseFragmentActivity.alert("", paramUserLoginResultBiz.getMemo(), getResources().getString(R.string.af), null, null, null);
        return;
      }
      if (1011 == paramUserLoginResultBiz.getResultStatus())
      {
        Intent localIntent1 = new Intent(getActivity(), CompleteUserInfoActivity_.class);
        localIntent1.putExtra("logonId", paramString1);
        if (!"alipay".equals(this.p))
          localIntent1.putExtra("logonId", paramUserLoginResultBiz.getLoginId());
        localIntent1.putExtra("app_id", this.b.getAppId());
        startActivityForResult(localIntent1, 2801);
        return;
      }
      if (1031 == paramUserLoginResultBiz.getResultStatus())
      {
        Intent localIntent2 = new Intent(getActivity(), CompletePhoneUserInfoActivity_.class);
        localIntent2.putExtra("logonId", paramString1);
        localIntent2.putExtra("app_id", this.b.getAppId());
        startActivityForResult(localIntent2, 2082);
        return;
      }
      if (1007 == paramUserLoginResultBiz.getResultStatus())
      {
        Intent localIntent3 = new Intent(getActivity(), TaobaoBindingAlipayUserActivity_.class);
        localIntent3.putExtra("tabao_user_name", paramString1);
        localIntent3.putExtra("taobao_password", paramString2);
        localIntent3.putExtra("app_id", this.b.getAppId());
        startActivityForResult(localIntent3, 2802);
        return;
      }
      if (1020 == paramUserLoginResultBiz.getResultStatus())
      {
        s locals = new s(this);
        localBaseFragmentActivity.alert(null, paramUserLoginResultBiz.getMemo(), getResources().getString(R.string.bk), locals, getResources().getString(R.string.aJ), null);
        return;
      }
      if (1003 == paramUserLoginResultBiz.getResultStatus())
      {
        a(paramUserLoginResultBiz, getResources().getString(R.string.bH), new t(this));
        return;
      }
      if (1004 == paramUserLoginResultBiz.getResultStatus())
      {
        a(paramUserLoginResultBiz, getResources().getString(R.string.bi), null);
        return;
      }
      if (1006 == paramUserLoginResultBiz.getResultStatus())
      {
        localBaseFragmentActivity.toast(paramUserLoginResultBiz.getMemo(), 0);
        return;
      }
      String str1 = paramUserLoginResultBiz.getMemo();
      int i = paramUserLoginResultBiz.getResultStatus();
      if ((str1 != null) && (!"".equals(str1)))
      {
        localBaseFragmentActivity.alert(null, str1, getResources().getString(R.string.bZ), new u(this, i), null, null);
        return;
      }
      localBaseFragmentActivity.alert(null, getResources().getString(R.string.bG), getResources().getString(R.string.bZ), new k(this, i), null, null);
      return;
      localBaseFragmentActivity.alert(null, getResources().getString(R.string.bj), getResources().getString(R.string.bZ), null, null, null);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @UiThread
  void a(byte[] paramArrayOfByte)
  {
    this.r.setVisibility(0);
    if (paramArrayOfByte != null)
      this.r.setCheckCodeImg(BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length));
    this.r.stopAnimation();
  }

  protected final void b(String paramString)
  {
    HttpTransportSevice localHttpTransportSevice = (HttpTransportSevice)this.a.findServiceByInterface(HttpTransportSevice.class.getName());
    HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(paramString);
    localHttpUrlRequest.setTransportCallback(new l(this));
    localHttpTransportSevice.execute(localHttpUrlRequest);
  }

  protected void b(boolean paramBoolean)
  {
  }

  protected void c(boolean paramBoolean)
  {
  }

  protected final void d(boolean paramBoolean)
  {
    n localn = new n(this, paramBoolean);
    if (GestureDataCenter.getInstance().isNeedNotifyCallBack());
    try
    {
      ((GestureService)this.a.getExtServiceByInterface(GestureService.class.getName())).callback(false);
      label40: Bundle localBundle = new Bundle();
      localBundle.putBoolean("switchAccount", paramBoolean);
      GestureService localGestureService = (GestureService)this.a.getExtServiceByInterface(GestureService.class.getName());
      if (GestureDataCenter.getInstance().isNeedNotifyCallBack())
      {
        new Handler().postDelayed(new o(this, localGestureService, localBundle, localn), 50L);
        return;
      }
      localGestureService.setGesture(localBundle, localn);
      return;
    }
    catch (Exception localException)
    {
      break label40;
    }
  }

  protected void e()
  {
  }

  @AfterViews
  void f()
  {
    this.d = ((SchemeService)this.a.findServiceByInterface(SchemeService.class.getName()));
    this.r.setCheckCallback(new j(this));
  }

  protected final void j()
  {
    b localb = new b();
    a(localb);
    ((BaseFragmentActivity)getActivity()).showProgressDialog(getResources().getString(R.string.bL), false, null);
    LoginInputParam localLoginInputParam = new LoginInputParam();
    localLoginInputParam.logonId = localb.a();
    localLoginInputParam.pwd = localb.b();
    localLoginInputParam.loginType = localb.c();
    localLoginInputParam.checkcode = localb.d();
    localLoginInputParam.checkCodeId = localb.e();
    a(localLoginInputParam);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (((paramInt1 == 2801) && (paramInt2 == 20080100)) || ((paramInt1 == 2802) && (paramInt2 == 20080200)))
      j();
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((paramInt1 == 16) && (paramInt2 == 273))
      {
        b localb = new b();
        a(localb);
        ((BaseFragmentActivity)getActivity()).showProgressDialog(getResources().getString(R.string.bL), false, null);
        LoginInputParam localLoginInputParam = new LoginInputParam();
        localLoginInputParam.logonId = localb.a();
        localLoginInputParam.pwd = localb.b();
        localLoginInputParam.loginType = localb.c();
        localLoginInputParam.checkcode = localb.d();
        localLoginInputParam.checkCodeId = localb.e();
        localLoginInputParam.checkSafe = true;
        localLoginInputParam.securityId = paramIntent.getStringExtra("securityId");
        a(localLoginInputParam);
      }
    }
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof a))
      this.q = ((a)paramActivity);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.BaseLoginFragment
 * JD-Core Version:    0.6.2
 */