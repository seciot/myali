package com.alipay.mobile.security.securitycommon.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="security_checkuserid_fragment")
public class CheckUserIdFragment extends Fragment
{
  public static final String a = CheckUserIdFragment.class.getSimpleName();

  @ViewById(resName="userid_input")
  protected APInputBox b;

  @ViewById(resName="userid_next_step")
  protected APButton c;
  private APEditText d;
  private SetIdCallBack e;

  public final void a(SetIdCallBack paramSetIdCallBack)
  {
    this.e = paramSetIdCallBack;
  }

  @UiThread
  void a(Object paramObject)
  {
    if (this.e != null)
      this.e.a(paramObject);
  }

  @Background
  void a(String paramString)
  {
    if (this.e != null)
      a(this.e.a(paramString));
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d = this.b.getEtContent();
    EditTextHasNullChecker localEditTextHasNullChecker = new EditTextHasNullChecker();
    this.d.addTextChangedListener(localEditTextHasNullChecker);
    localEditTextHasNullChecker.addNeedEnabledButton(this.c);
    localEditTextHasNullChecker.addNeedCheckView(this.d);
    this.c.setOnClickListener(new CheckUserIdFragment.1(this));
    this.c.postDelayed(new CheckUserIdFragment.2(this), 500L);
  }

  public static abstract interface SetIdCallBack
  {
    public abstract Object a(String paramString);

    public abstract void a(Object paramObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.CheckUserIdFragment
 * JD-Core Version:    0.6.2
 */