package com.alipay.mobile.deviceAuthorization.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.deviceAuthorization.a;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.ArrayList;
import java.util.List;

@EActivity(resName="activity_temp_authorization")
public class TempAuthActivity extends BaseAuthActivity
{
  private Button e;
  private APInputBox f;
  private APSixNumberPwdInputBox g;
  private List<TextView> h = new ArrayList();
  private ab i = new ab();

  @UiThread
  public void a(ImageView paramImageView, Bitmap paramBitmap)
  {
    paramImageView.setImageBitmap(paramBitmap);
    paramImageView.setVisibility(0);
  }

  public final void a(PrepareApproveRes paramPrepareApproveRes)
  {
    this.h.add((TextView)findViewById(R.id.ga));
    this.h.add((TextView)findViewById(R.id.gb));
    if (StringUtils.isNotBlank(paramPrepareApproveRes.approvePageTitle))
      ((APTitleBar)findViewById(R.id.gg)).setTitleText(paramPrepareApproveRes.approvePageTitle);
    if (StringUtils.isNotBlank(paramPrepareApproveRes.approveImgUrl))
      super.a((ImageView)findViewById(R.id.x), paramPrepareApproveRes.approveImgUrl);
    int j;
    if ((paramPrepareApproveRes.approveTextList != null) && (paramPrepareApproveRes.approveTextList.size() > 0))
    {
      j = 0;
      if (j < paramPrepareApproveRes.approveTextList.size())
        if (j >= this.h.size())
          break label498;
    }
    label498: for (TextView localTextView = (TextView)this.h.get(j); ; localTextView = null)
    {
      if (localTextView != null)
      {
        localTextView.setText((CharSequence)paramPrepareApproveRes.approveTextList.get(j));
        localTextView.setVisibility(0);
      }
      j++;
      break;
      if ((paramPrepareApproveRes.needPassword) && (paramPrepareApproveRes.passwordType != null))
      {
        if (!paramPrepareApproveRes.passwordType.equals(a.b))
          break label383;
        ((TextView)findViewById(R.id.ci)).setVisibility(0);
        this.g = ((APSixNumberPwdInputBox)findViewById(R.id.ch));
        this.g.setVisibility(0);
        this.g.setPwdInputListener(this);
      }
      while (true)
      {
        if (StringUtils.isNotBlank(paramPrepareApproveRes.confirmButtonText))
        {
          this.e = ((Button)findViewById(R.id.aM));
          this.e.setText(paramPrepareApproveRes.confirmButtonText);
          this.e.setVisibility(0);
          this.e.setOnClickListener(new aw(this, paramPrepareApproveRes));
        }
        if (StringUtils.isNotBlank(paramPrepareApproveRes.cancelButtonText))
        {
          Button localButton = (Button)findViewById(R.id.ae);
          if (localButton != null)
          {
            localButton.setText(paramPrepareApproveRes.cancelButtonText);
            localButton.setVisibility(0);
            localButton.setOnClickListener(new ax(this));
          }
        }
        return;
        label383: if (paramPrepareApproveRes.passwordType.equals(a.a))
        {
          this.f = ((APInputBox)findViewById(R.id.cP));
          this.f.setVisibility(0);
          this.f.setEnabled(false);
          this.i.a(this.e);
          this.f.getEtContent().addTextChangedListener(this.i);
          this.i.a(this.f.getEtContent());
          APInputBox localAPInputBox = this.f;
          try
          {
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(localAPInputBox.getWindowToken(), 0);
          }
          catch (Exception localException)
          {
          }
        }
      }
    }
  }

  protected final void a(String paramString)
  {
    if ("MOBILEPASSWORD".equals(paramString))
    {
      this.g.clearInput();
      this.g.callInputMethod();
      return;
    }
    this.f.setText(null);
    this.f.requestFocus();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    Button localButton;
    if (this.e != null)
    {
      localButton = this.e;
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
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.TempAuthActivity
 * JD-Core Version:    0.6.2
 */