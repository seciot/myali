package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobile.mobilerechargeapp.view.APButtonInputBoxAutoC;

public abstract class BaseListActivity extends BaseActivity
{
  protected APListView a;
  protected APButtonInputBoxAutoC b;
  protected APButton c;
  protected APImageButton d;
  private APTextView e;

  protected abstract Drawable a();

  protected final void a(String paramString)
  {
    finish();
    getIntent().putExtra("searchResult", paramString);
    setResult(-1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.l);
    this.a = ((APListView)findViewById(R.id.l));
    this.e = ((APTextView)findViewById(R.id.o));
    this.a.setEmptyView(findViewById(R.id.p));
    this.b = ((APButtonInputBoxAutoC)findViewById(R.id.s));
    this.b.setTextFormatter(new APSplitTextFormatter("3,8"));
    this.c = ((APButton)findViewById(R.id.i));
    this.d = this.b.getLastImgButton();
    Drawable localDrawable = a();
    this.b.setLastImgBg(localDrawable);
    this.d.setOnClickListener(new y(this));
    this.c.setOnClickListener(new z(this));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.BaseListActivity
 * JD-Core Version:    0.6.2
 */