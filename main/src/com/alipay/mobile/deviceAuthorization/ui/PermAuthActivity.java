package com.alipay.mobile.deviceAuthorization.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.deviceAuthorization.a;
import com.alipay.mobile.deviceAuthorization.a.d;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity(resName="activity_perm_auth")
public class PermAuthActivity extends BaseAuthActivity
{
  private ListView e;
  private APSixNumberPwdInputBox f;
  private APInputBox g;
  private Button h;
  private ScrollView i;
  private Handler j = new Handler();
  private ab k = new ab();

  private void a(View paramView)
  {
    try
    {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @UiThread
  public void a(ImageView paramImageView, Bitmap paramBitmap)
  {
    paramImageView.setImageBitmap(paramBitmap);
    paramImageView.setVisibility(0);
  }

  public final void a(PrepareApproveRes paramPrepareApproveRes)
  {
    setContentView(R.layout.f);
    if (StringUtils.isNotBlank(paramPrepareApproveRes.approvePageTitle))
      ((APTitleBar)findViewById(R.id.gg)).setTitleText(paramPrepareApproveRes.approvePageTitle);
    if (StringUtils.isNotBlank(paramPrepareApproveRes.authTargetLogoUrl))
      super.a((ImageView)findViewById(R.id.aT), paramPrepareApproveRes.authTargetLogoUrl);
    if (StringUtils.isNotBlank(paramPrepareApproveRes.authTargetTitle))
      ((TextView)findViewById(R.id.aU)).setText(paramPrepareApproveRes.authTargetTitle);
    if (StringUtils.isNotBlank(paramPrepareApproveRes.authTargetDescription))
      ((TextView)findViewById(R.id.aS)).setText(paramPrepareApproveRes.authTargetDescription);
    if (StringUtils.isNotBlank(paramPrepareApproveRes.authOptionTitle))
    {
      TextView localTextView = (TextView)findViewById(R.id.D);
      localTextView.setText(paramPrepareApproveRes.authOptionTitle);
      localTextView.setVisibility(0);
      ((ImageView)findViewById(R.id.A)).setVisibility(0);
    }
    if (paramPrepareApproveRes.authOptions != null)
    {
      this.e = ((ListView)findViewById(R.id.z));
      this.e.setAdapter(new d(this, paramPrepareApproveRes.authOptions));
    }
    this.i = ((ScrollView)findViewById(R.id.fP));
    this.h = ((Button)findViewById(R.id.aM));
    this.h.setVisibility(0);
    this.h.setOnClickListener(new ao(this, paramPrepareApproveRes));
    if ((paramPrepareApproveRes.needPassword) && (paramPrepareApproveRes.passwordType != null))
      if (paramPrepareApproveRes.passwordType.equals(a.b))
      {
        ((TextView)findViewById(R.id.ci)).setVisibility(0);
        this.f = ((APSixNumberPwdInputBox)findViewById(R.id.ch));
        this.f.setVisibility(0);
        this.f.setPwdInputListener(this);
      }
    ListView localListView;
    ListAdapter localListAdapter;
    int n;
    while (true)
    {
      findViewById(R.id.bo).setVisibility(0);
      findViewById(R.id.B).setVisibility(0);
      localListView = this.e;
      localListAdapter = localListView.getAdapter();
      if (localListAdapter == null)
        return;
      int m = 0;
      n = 0;
      while (m < localListAdapter.getCount())
      {
        View localView = localListAdapter.getView(m, null, localListView);
        localView.measure(0, 0);
        n += localView.getMeasuredHeight();
        m++;
      }
      if (paramPrepareApproveRes.passwordType.equals(a.a))
      {
        this.g = ((APInputBox)findViewById(R.id.cP));
        this.g.setVisibility(0);
        this.g.setEnabled(false);
        this.k.a(this.h);
        this.g.getEtContent().addTextChangedListener(this.k);
        this.k.a(this.g.getEtContent());
        a(this.g);
        continue;
        this.h.setEnabled(true);
      }
    }
    ViewGroup.LayoutParams localLayoutParams = localListView.getLayoutParams();
    localLayoutParams.height = (n + localListView.getDividerHeight() * (-1 + localListAdapter.getCount()));
    localListView.setLayoutParams(localLayoutParams);
  }

  protected final void a(String paramString)
  {
    if ("MOBILEPASSWORD".equals(paramString))
    {
      this.f.clearInput();
      this.f.callInputMethod();
      return;
    }
    this.g.setText(null);
    this.g.requestFocus();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onResume()
  {
    super.onResume();
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    Button localButton;
    if (this.h != null)
    {
      localButton = this.h;
      if (paramEditable.length() != 6)
        break label33;
    }
    label33: for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.PermAuthActivity
 * JD-Core Version:    0.6.2
 */