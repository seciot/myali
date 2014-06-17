package com.alipay.mobile.about.ui;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import com.alipay.mobile.about.a.b;
import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.clientsecurity.R.color;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileapp.biz.rpc.img.UploadImgResult;
import com.alipay.mobileapp.common.service.facade.about.UserProposalReq;
import com.alipay.mobileapp.common.service.facade.about.UserProposalRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@EActivity(resName="mobile_about_feedassistant")
public class FeedAssistantActivity extends BaseActivity
{
  public static final Pattern a = Pattern.compile("[1][3-8][0-9]{9}");
  private static Integer s = Integer.valueOf(0);
  private View.OnClickListener A = new y(this);

  @ViewById(resName="select_pic_scrollview")
  protected HorizontalScrollView b;

  @ViewById(resName="select_pic_linearview")
  protected APLinearLayout c;

  @ViewById(resName="edit_text_box_notify_view")
  protected APTextView d;

  @ViewById(resName="about_feedBack_txt")
  protected APEditText e;

  @ViewById(resName="about_feedback_edit_phone_txt")
  protected APInputBox f;

  @ViewById(resName="titleBar")
  protected APTitleBar g;
  protected List<File> h;
  private Button i;
  private View j;
  private View k;
  private View l;
  private APTextView m;
  private boolean n = false;
  private int o = 0;
  private List<Bitmap> p;
  private List<String> q;
  private Handler r;
  private boolean t = false;
  private UserInfo u;
  private boolean v = false;
  private boolean w = false;
  private b x;
  private boolean y = false;
  private ChannelConfig z;

  private static <T> T a(Object paramObject, String paramString, T paramT)
  {
    try
    {
      Field localField = paramObject.getClass().getDeclaredField(paramString);
      localField.setAccessible(true);
      Object localObject = localField.get(paramObject);
      return localObject;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.getLocalizedMessage();
      return paramT;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.getLocalizedMessage();
      return paramT;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.getLocalizedMessage();
      return paramT;
    }
    catch (Exception localException)
    {
      localException.getLocalizedMessage();
    }
    return paramT;
  }

  private static String a(File paramFile)
  {
    byte[] arrayOfByte = null;
    if (paramFile != null);
    try
    {
      boolean bool = paramFile.exists();
      arrayOfByte = null;
      if (bool)
      {
        new StringBuilder("file: ").append(paramFile.getAbsolutePath()).append("file size: ").append(paramFile.length() / 1024L).append("k").toString();
        FileInputStream localFileInputStream = new FileInputStream(paramFile);
        arrayOfByte = new byte[localFileInputStream.available()];
        int i1;
        do
          i1 = localFileInputStream.read(arrayOfByte);
        while (i1 != -1);
      }
      if (arrayOfByte != null)
      {
        str = Base64.encodeToString(arrayOfByte, 2);
        new StringBuilder("base64 string length:").append(str.length()).toString();
        return str;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        continue;
        String str = "";
      }
    }
  }

  private void a(int paramInt)
  {
    this.i.setEnabled(g());
    this.d.setText(String.valueOf(s.intValue() - paramInt));
  }

  private void a(List<Uri> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      return;
    int i1 = this.h.size();
    int i2 = this.h.size() + paramList.size();
    int i3 = paramList.size();
    File[] arrayOfFile = new File[i3];
    Bitmap[] arrayOfBitmap = new Bitmap[i3];
    this.m.setText(i2 + "/5");
    for (int i4 = i1; i4 < i2; i4++)
    {
      View localView = View.inflate(this, R.layout.H, null);
      ImageView localImageView = (ImageView)localView.findViewById(R.id.cT);
      localImageView.setOnClickListener(this.A);
      localImageView.setVisibility(8);
      this.c.addView(localView, i4);
    }
    this.c.removeView(this.l);
    this.c.removeView(this.k);
    this.c.removeView(this.j);
    if (i2 < 5)
      this.c.addView(this.j);
    if (i2 > 0)
    {
      this.c.addView(this.l);
      this.n = true;
    }
    while (true)
    {
      this.o = i2;
      this.r.postDelayed(new o(this), 30L);
      CountDownLatch localCountDownLatch = new CountDownLatch(paramList.size());
      BackgroundExecutor.execute(new u(this, localCountDownLatch, arrayOfFile, arrayOfBitmap));
      for (int i5 = 0; i5 < paramList.size(); i5++)
      {
        this.n = true;
        BackgroundExecutor.execute(new w(this, (Uri)paramList.get(i5), arrayOfFile, i5, arrayOfBitmap, i1, localCountDownLatch));
      }
      break;
      this.c.addView(this.k);
    }
  }

  private void f()
  {
    try
    {
      if (this.h != null)
      {
        Iterator localIterator = this.h.iterator();
        while (localIterator.hasNext())
        {
          File localFile = (File)localIterator.next();
          if (localFile.exists())
            localFile.delete();
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private boolean g()
  {
    return (this.v) && ((this.w) || ((this.h != null) && (!this.h.isEmpty())));
  }

  private void h()
  {
    this.i.setEnabled(g());
    if (this.f.getInputedText().length() > 0);
    for (int i1 = R.string.ae; ; i1 = R.string.ad)
    {
      toast(getText(i1).toString(), 1);
      return;
    }
  }

  private void i()
  {
    if (g())
    {
      this.i.setEnabled(true);
      return;
    }
    this.i.setEnabled(false);
  }

  @AfterViews
  protected final void a()
  {
    boolean bool1 = true;
    this.g.setGenericButtonListener(new n(this));
    this.i = this.g.getGenericButton();
    ColorStateList localColorStateList = getResources().getColorStateList(R.color.a);
    this.i.setTextColor(localColorStateList);
    this.f.getEtContent().setInputType(3);
    this.f.setApprerance(bool1);
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.isLogin())
      this.u = localAuthService.getUserInfo();
    if ((this.u != null) && (!TextUtils.isEmpty(this.u.getMobileNumber())));
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      this.t = bool2;
      this.v = this.t;
      this.f.setOnFocusChangeListener(new p(this));
      this.f.addTextChangedListener(new q(this));
      this.e.addTextChangedListener(new r(this));
      if (s.intValue() != 0)
        break;
      s = Integer.valueOf(240);
      for (InputFilter localInputFilter : this.e.getFilters())
        if ((localInputFilter instanceof InputFilter.LengthFilter))
          s = (Integer)a(localInputFilter, "mMax", Integer.valueOf(240));
    }
    if (!this.t)
    {
      this.f.setVisibility(0);
      a(0);
      this.j = View.inflate(this, R.layout.E, null);
      this.j.setOnClickListener(new s(this));
      this.k = View.inflate(this, R.layout.F, null);
      this.l = View.inflate(this, R.layout.G, null);
      this.m = ((APTextView)this.l.findViewById(R.id.fA));
      this.c.addView(this.j);
      this.c.addView(this.k);
      this.z = ((ChannelConfig)this.mApp.getMicroApplicationContext().findServiceByInterface(ChannelConfig.class.getName()));
      if ((this.z == null) || (this.z.getConfig("hasFeedback") == null) || (!"true".equals(this.z.getConfig("hasFeedback"))))
        break label473;
    }
    while (true)
    {
      if (!bool1)
        break label478;
      this.b.setVisibility(0);
      return;
      this.f.setVisibility(8);
      break;
      label473: bool1 = false;
    }
    label478: this.b.setVisibility(8);
  }

  protected final void b()
  {
    if ((this.f.getVisibility() == 0) && (!a.matcher(this.f.getInputedText().toString()).find()))
    {
      h();
      return;
    }
    if (this.n)
    {
      this.y = true;
      c();
      finish();
      return;
    }
    if (this.e.getText().toString().trim().length() == 0)
    {
      toast(getText(R.string.g).toString(), 1);
      return;
    }
    d();
    finish();
  }

  @Background
  protected void c()
  {
    if (this.h != null)
    {
      if (this.q == null)
        this.q = new ArrayList();
      this.q.clear();
      int i1 = 0;
      while (i1 < this.h.size())
      {
        String str = a((File)this.h.get(i1));
        try
        {
          UploadImgResult localUploadImgResult = this.x.a(str);
          if (localUploadImgResult != null)
          {
            if (!TextUtils.isEmpty(localUploadImgResult.path))
            {
              this.q.add(localUploadImgResult.path);
              i1++;
            }
            else
            {
              toast("提交失败，请稍候再试", 1);
              f();
            }
          }
          else
          {
            toast("提交失败，请稍候再试", 1);
            f();
            return;
          }
        }
        catch (RpcException localRpcException)
        {
          toast(getText(R.string.U).toString(), 0);
          localRpcException.getMessage();
          f();
          return;
        }
      }
      f();
      d();
    }
  }

  @Background
  protected void d()
  {
    UserProposalReq localUserProposalReq = new UserProposalReq();
    String str1 = this.f.getInputedText().toString();
    if (this.t)
      str1 = this.u.getMobileNumber();
    localUserProposalReq.mobileNo = str1;
    if (this.u != null)
    {
      localUserProposalReq.userName = this.u.getUserName();
      localUserProposalReq.userId = this.u.getUserId();
      localUserProposalReq.logonId = this.u.getLogonId();
    }
    localUserProposalReq.osName = "android";
    DeviceInfo localDeviceInfo = DeviceInfo.getInstance();
    localUserProposalReq.osVersion = localDeviceInfo.getOsVersion();
    localUserProposalReq.userAgent = localDeviceInfo.getUserAgent();
    AppInfo localAppInfo = AppInfo.getInstance();
    localUserProposalReq.productID = localAppInfo.getProductID();
    localUserProposalReq.productVersion = localAppInfo.getmProductVersion();
    localUserProposalReq.proposalMsg = this.e.getText().toString();
    localUserProposalReq.proposalType = "proposal";
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    int i1;
    String str2;
    if (localNetworkInfo != null)
    {
      i1 = localNetworkInfo.getType();
      if (i1 == 0)
        str2 = "edge";
    }
    while (true)
    {
      localUserProposalReq.onlineMode = str2;
      localUserProposalReq.imgUrlList = this.q;
      if (localUserProposalReq.imgUrlList != null)
        new StringBuilder("img size = ").append(localUserProposalReq.imgUrlList.size()).toString();
      try
      {
        UserProposalRes localUserProposalRes = this.x.a(localUserProposalReq);
        if ((localUserProposalRes != null) && ((localUserProposalRes.resultStatus == 1000) || (localUserProposalRes.resultStatus == 5002)))
        {
          toast(getText(R.string.V).toString(), 1);
          return;
          if (i1 == 1)
            str2 = "wifi";
          else
            str2 = "fail";
        }
        else
        {
          toast("提交失败，请稍候再试", 1);
          return;
        }
      }
      catch (RpcException localRpcException)
      {
        localRpcException.getMessage();
        throw localRpcException;
      }
      catch (Exception localException)
      {
        localException.getMessage();
        toast("提交失败，请稍候再试", 1);
      }
    }
  }

  protected final void e()
  {
    ActivityApplication localActivityApplication = this.mApp;
    Intent localIntent = new Intent(this, getClass());
    if (this.h != null);
    for (int i1 = this.h.size(); ; i1 = 0)
    {
      MultiPictureSelectorMenu.a(localActivityApplication, this, localIntent, i1);
      return;
    }
  }

  public void onBackPressed()
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new StringBuilder("appId: ").append(this.mApp.getAppId()).toString();
    this.x = new b();
    this.r = new Handler();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    new StringBuilder("onDestroy :").append(this.y).toString();
    try
    {
      if (!this.y)
        f();
      if (this.p != null)
      {
        Iterator localIterator = this.p.iterator();
        while (localIterator.hasNext())
          ((Bitmap)localIterator.next()).recycle();
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    int i1 = 0;
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    try
    {
      String[] arrayOfString = (String[])paramIntent.getStringArrayExtra("bitmapUrls");
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        Uri[] arrayOfUri = new Uri[arrayOfString.length];
        while (i1 < arrayOfUri.length)
        {
          arrayOfUri[i1] = Uri.fromFile(new File(arrayOfString[i1]));
          i1++;
        }
        List localList = Arrays.asList(arrayOfUri);
        if (this.h == null)
          this.h = new ArrayList();
        if (this.p == null)
          this.p = new ArrayList();
        if (this.h.size() >= 5)
        {
          toast("添加照片失败！一次最多只能发5张图片", 0);
          return;
        }
        a(localList);
        return;
      }
      if (paramIntent.getBooleanExtra("fromFilter", false))
      {
        if ((this.h == null) || (this.h.size() < 5))
          break label190;
        toast("添加照片失败！一次最多只能发5张图片", 0);
      }
      while (true)
      {
        i();
        return;
        label190: String str = paramIntent.getStringExtra("filePath");
        paramIntent.getIntExtra("filterIndex", 0);
        paramIntent.getBooleanExtra("isPreview", false);
        if (this.h == null)
          this.h = new ArrayList();
        if (this.p == null)
          this.p = new ArrayList();
        File localFile = new File(str);
        try
        {
          Bitmap localBitmap = BitmapFactory.decodeStream(new FileInputStream(localFile));
          this.h.add(localFile);
          this.p.add(localBitmap);
          this.o = (1 + this.o);
          this.m.setText(this.o + "/5");
          if (this.o == 1)
          {
            this.c.removeView(this.k);
            this.c.addView(this.l);
            this.n = true;
          }
          if (this.o == 5)
            this.c.removeView(this.j);
          View localView = View.inflate(this, R.layout.H, null);
          ImageView localImageView1 = (ImageView)localView.findViewById(R.id.cS);
          localImageView1.setTag(localBitmap);
          localImageView1.setImageBitmap(localBitmap);
          ImageView localImageView2 = (ImageView)localView.findViewById(R.id.cT);
          localImageView2.setTag(localBitmap);
          localImageView2.setOnClickListener(this.A);
          this.c.addView(localView, -1 + this.o);
          this.r.postDelayed(new t(this), 30L);
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localFileNotFoundException.getMessage();
        }
      }
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.FeedAssistantActivity
 * JD-Core Version:    0.6.2
 */