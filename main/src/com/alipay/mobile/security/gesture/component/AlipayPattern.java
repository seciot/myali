package com.alipay.mobile.security.gesture.component;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.alipay.mobile.a.d;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.common.helper.HideUtils;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.gesture.ui.GestureActivity;
import com.androidquery.AQuery;

public class AlipayPattern extends RelativeLayout
{
  public final String TAG = "AlipayPattern";
  private APRelativeLayout a = null;
  private APRelativeLayout b = null;
  private LockView c = null;
  private String d = null;
  private APTextView e = null;
  private APTextView f = null;
  private APTextView g;
  private final int h = 5;
  private APLinearLayout i;
  protected j mPatternChangeListener;
  protected k mPatternCheckedListener;

  public AlipayPattern(Context paramContext)
  {
    super(paramContext);
  }

  public AlipayPattern(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public AlipayPattern(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private static int a(UserInfo paramUserInfo)
  {
    String str = paramUserInfo.getGestureErrorNum();
    if (TextUtils.isEmpty(str))
      return 0;
    try
    {
      int j = Integer.parseInt(str);
      return j;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return 0;
  }

  private void a()
  {
    LogCatLog.v("AlipayPattern", "inflate(R.layout.alipay_pattern-->");
    LayoutInflater.from(getContext()).inflate(com.alipay.mobile.a.e.a, this, true);
    this.c = ((LockView)findViewById(d.e));
    this.e = ((APTextView)findViewById(d.j));
    this.f = ((APTextView)findViewById(d.f));
    this.i = ((APLinearLayout)findViewById(d.c));
    this.g = ((APTextView)findViewById(d.b));
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      APButton localAPButton = (APButton)findViewById(d.k);
      if ((localAPButton != null) && (this.mPatternChangeListener != null))
      {
        localAPButton.setOnClickListener(new i(this));
        if (localAPButton.getVisibility() != 0)
          localAPButton.setVisibility(0);
      }
      return;
    }
    ((APButton)findViewById(d.k)).setVisibility(8);
  }

  public void TryToSetPattern(boolean paramBoolean)
  {
    findViewById(d.h).setBackgroundResource(R.drawable.start_background);
    if (this.b == null)
      this.b = ((APRelativeLayout)findViewById(d.i));
    this.b.setVisibility(0);
    if (this.a == null)
      this.a = ((APRelativeLayout)findViewById(d.g));
    this.a.setVisibility(8);
    if (this.e != null)
    {
      this.e.setTextColor(getResources().getColor(com.alipay.mobile.a.b.b));
      this.e.setText(com.alipay.mobile.a.f.f);
    }
    if (this.g != null)
    {
      this.g.setVisibility(8);
      this.i.setVisibility(8);
    }
    a(paramBoolean);
    if (this.c != null)
    {
      LockIndicator localLockIndicator = (LockIndicator)findViewById(d.d);
      APTextView localAPTextView = (APTextView)findViewById(d.l);
      if (localAPTextView != null)
      {
        localAPTextView.setText(getResources().getString(com.alipay.mobile.a.f.o));
        localAPTextView.setTextColor(getResources().getColor(17170443));
      }
      if (this.f != null)
      {
        this.f.setText(com.alipay.mobile.a.f.n);
        this.f.setOnClickListener(new f(this, localLockIndicator));
        this.f.setVisibility(4);
      }
      this.c.clear();
      this.c.setOnLockInputListener(new g(this, localLockIndicator));
    }
  }

  public void checkGestureErrorAlert(GestureActivity paramGestureActivity, UserInfo paramUserInfo)
  {
    if (a(paramUserInfo) < 5);
    while (!(paramGestureActivity instanceof BaseActivity))
      return;
    settingGestureError(paramGestureActivity, paramUserInfo, 5);
    paramGestureActivity.alert(getResources().getString(com.alipay.mobile.a.f.e), getResources().getString(com.alipay.mobile.a.f.l), getResources().getString(com.alipay.mobile.a.f.b), new h(this), null, null);
  }

  public void checkPattern(UserInfo paramUserInfo, GestureActivity paramGestureActivity)
  {
    if ((paramUserInfo == null) || ("".equals(paramUserInfo)));
    label404: 
    while (true)
    {
      return;
      View localView = findViewById(d.h);
      ((CircularImageView)findViewById(d.m)).setBorderWidth(0);
      localView.setBackgroundResource(R.drawable.start_background);
      AQuery localAQuery;
      if (this.a == null)
      {
        this.a = ((APRelativeLayout)findViewById(d.g));
        if (this.b == null)
          this.b = ((APRelativeLayout)findViewById(d.i));
        if (this.b != null)
          this.b.setVisibility(8);
        localAQuery = new AQuery(this);
        if ((paramUserInfo.getUserAvatar() == null) || (paramUserInfo.getUserAvatar().trim().equals("")))
          break label349;
        ((AQuery)((AQuery)localAQuery.id(d.m)).visibility(0)).image(paramUserInfo.getUserAvatar(), true, true, 0, com.alipay.mobile.a.c.a);
      }
      while (true)
      {
        if (this.c == null)
          break label404;
        if (this.e != null)
        {
          this.e.setText(HideUtils.hide(paramUserInfo.getLogonId(), "hideaccount"));
          this.e.setTextColor(getResources().getColor(com.alipay.mobile.a.b.a));
        }
        if (this.f != null)
        {
          this.f.setText(com.alipay.mobile.a.f.h);
          this.f.setOnClickListener(new a(this));
        }
        if (this.g != null)
        {
          this.i.setVisibility(0);
          this.g.setVisibility(0);
          this.g.setOnClickListener(new b(this));
        }
        this.c.clear();
        this.c.setOnFirstInputListener(new c(this, paramUserInfo));
        this.c.setOnLockInputListener(new e(this, paramUserInfo, paramGestureActivity));
        return;
        if (8 != this.a.getVisibility())
          break;
        this.a.setVisibility(0);
        break;
        label349: if ((paramUserInfo.getUserAvatar() == null) || (paramUserInfo.getUserAvatar().trim().equals("")))
          ((AQuery)((AQuery)localAQuery.id(d.m)).visibility(0)).image("", true, true, 0, com.alipay.mobile.a.c.a);
      }
    }
  }

  public View getPatternCheckView()
  {
    return this.a;
  }

  public LockView getmLockView()
  {
    return this.c;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }

  public void setIsShowSkipButton(boolean paramBoolean)
  {
    a(paramBoolean);
  }

  public void setOnPatternChangeListener(j paramj)
  {
    this.mPatternChangeListener = paramj;
  }

  public void setOnPatternCheckedListener(k paramk)
  {
    this.mPatternCheckedListener = paramk;
  }

  public void setTopTextView(String paramString)
  {
    if (this.e != null)
    {
      this.e.setText(paramString);
      this.e.setTextColor(getResources().getColor(com.alipay.mobile.a.b.c));
    }
  }

  public void settingGestureError(BaseActivity paramBaseActivity, UserInfo paramUserInfo, int paramInt)
  {
    paramUserInfo.setGestureErrorNum(paramInt);
    SecurityDbHelper.getInstance(AlipayApplication.getInstance()).addUserInfo(paramUserInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.AlipayPattern
 * JD-Core Version:    0.6.2
 */