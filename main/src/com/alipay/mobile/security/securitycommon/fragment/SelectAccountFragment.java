package com.alipay.mobile.security.securitycommon.fragment;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.common.utils.ImageUtil;
import com.alipay.mobile.common.utils.SecurityUtil;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APView;
import com.alipay.mobile.security.securitycommon.data.PwdSelectAccountListAdapter;
import com.alipay.mobile.security.securitycommon.data.SelectAccountInfo;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.List;

@EFragment(resName="security_selectaccount_fragment")
public class SelectAccountFragment extends Fragment
{

  @ViewById(resName="pwd_selectAccount_userListView")
  protected APListView a;

  @ViewById(resName="toRegistAccount")
  protected APTableView b;

  @ViewById(resName="registAccountLayout")
  protected APLinearLayout c;

  @ViewById(resName="otherAccountTip")
  protected APTextView d;

  @ViewById(resName="seperatorStub")
  protected APView e;
  protected List<SelectAccountInfo> f;
  protected SelectAccountInfo g;
  protected PwdSelectAccountListAdapter h;
  private SelectAccountCallBack i;

  private void a(FragmentActivity paramFragmentActivity)
  {
    if (this.h == null)
      this.h = new PwdSelectAccountListAdapter(paramFragmentActivity);
  }

  final void a(int paramInt, SelectAccountInfo paramSelectAccountInfo)
  {
    if (this.i != null)
      this.i.a(paramInt, paramSelectAccountInfo);
  }

  public final void a(FragmentActivity paramFragmentActivity, List<SelectAccountInfo> paramList, SelectAccountInfo paramSelectAccountInfo, SelectAccountCallBack paramSelectAccountCallBack)
  {
    this.i = paramSelectAccountCallBack;
    if ((paramList == null) || (paramSelectAccountInfo == null));
    label41: label104: 
    while (true)
    {
      this.f = paramList;
      this.g = paramSelectAccountInfo;
      a(paramFragmentActivity);
      this.h.a(paramList);
      return;
      int j = 0;
      if (j < paramList.size())
        if (!paramSelectAccountInfo.a().equals(((SelectAccountInfo)paramList.get(j)).a()));
      while (true)
      {
        if (j == -1)
          break label104;
        paramList.remove(j);
        break;
        j++;
        break label41;
        j = -1;
      }
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(getActivity());
    this.a.setAdapter(this.h);
    if (this.g != null)
    {
      this.c.setVisibility(0);
      this.e.setVisibility(8);
      this.b.setLeftText(SecurityUtil.accountHide(this.g.a(), "hideaccount"));
      Bitmap localBitmap = ImageUtil.getRoundedCornerBitmap(((BitmapDrawable)getResources().getDrawable(R.drawable.x)).getBitmap(), 15);
      this.b.setLeftImage(localBitmap);
      this.b.setOnClickListener(new SelectAccountFragment.1(this));
    }
    while (true)
    {
      if ((this.f != null) && (this.f.size() == 0))
        this.d.setVisibility(8);
      this.a.setOnItemClickListener(new SelectAccountFragment.2(this));
      return;
      this.c.setVisibility(8);
      this.e.setVisibility(0);
    }
  }

  public static abstract interface SelectAccountCallBack
  {
    public abstract void a(int paramInt, SelectAccountInfo paramSelectAccountInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment
 * JD-Core Version:    0.6.2
 */