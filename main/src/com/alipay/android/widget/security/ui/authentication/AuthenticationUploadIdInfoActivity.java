package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import com.alipay.mobile.clientsecurity.R.id;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity(resName="authentication_upload_container")
public class AuthenticationUploadIdInfoActivity extends BaseAuthenticationActivity
{
  private FragmentManager c;
  private Fragment d;

  @AfterViews
  protected final void a()
  {
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      this.c = getSupportFragmentManager();
      UploadIdImgFragment_ localUploadIdImgFragment_ = new UploadIdImgFragment_();
      localUploadIdImgFragment_.setArguments(localBundle);
      localUploadIdImgFragment_.getBundle(this.mApp);
      a(localUploadIdImgFragment_, false);
    }
  }

  @UiThread
  protected void a(BaseAuthenticationFragment paramBaseAuthenticationFragment, boolean paramBoolean)
  {
    new StringBuilder("fragment: ").append(paramBaseAuthenticationFragment.getClass().getName()).toString();
    this.d = paramBaseAuthenticationFragment;
    FragmentTransaction localFragmentTransaction = this.c.beginTransaction();
    localFragmentTransaction.replace(R.id.N, paramBaseAuthenticationFragment);
    if (paramBoolean)
      localFragmentTransaction.addToBackStack(null);
    localFragmentTransaction.commitAllowingStateLoss();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.d != null) && (this.d.isVisible()) && ((this.d instanceof UploadIdResultFragment_)))
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationUploadIdInfoActivity
 * JD-Core Version:    0.6.2
 */