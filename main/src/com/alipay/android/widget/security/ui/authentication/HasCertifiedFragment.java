package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobilesecurity.core.model.account.certify.RealNameCertifyResult;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Map;

@EFragment(resName="authentication_has_certified")
public class HasCertifiedFragment extends BaseAuthenticationFragment
{

  @ViewById(resName="titleBar")
  protected APTitleBar d;

  @ViewById(resName="authentication_btn")
  protected APButton e;

  @ViewById(resName="certified_name")
  protected APTableView f;

  @ViewById(resName="certified_ID")
  protected APTableView g;

  @ViewById(resName="certified_status")
  protected APTableView h;

  @ViewById(resName="certified_status_tip")
  protected APTextView i;

  @ViewById(resName="certified_status_tip_1")
  protected APTextView j;

  @ViewById(resName="imgLayout")
  protected APLinearLayout k;

  @ViewById(resName="tipText")
  protected APTextView l;
  protected APButton m;
  protected View.OnClickListener n = new HasCertifiedFragment.1(this);
  private boolean o = false;
  private View.OnClickListener p = new HasCertifiedFragment.2(this);

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d.setGenericButtonIconResource(R.drawable.n);
    this.m = this.d.getRightButton();
    this.m.setVisibility(0);
    this.m.setOnClickListener(this.n);
    this.e.setOnClickListener(this.p);
    Bundle localBundle = getArguments();
    RealNameCertifyResult localRealNameCertifyResult;
    if (localBundle != null)
    {
      localRealNameCertifyResult = (RealNameCertifyResult)a(localBundle, RealNameCertifyResult.class);
      if ((localRealNameCertifyResult != null) && (localRealNameCertifyResult.certifyReturnInfo != null))
      {
        this.f.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
        this.g.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
        this.h.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
        String str1 = (String)localRealNameCertifyResult.certifyReturnInfo.get("realName");
        APTableView localAPTableView1 = this.f;
        if (TextUtils.isEmpty(str1))
          str1 = "";
        localAPTableView1.setRightText(str1);
        String str2 = (String)localRealNameCertifyResult.certifyReturnInfo.get("certNo");
        APTableView localAPTableView2 = this.g;
        if (TextUtils.isEmpty(str2))
          str2 = "";
        localAPTableView2.setRightText(str2);
        if (!"5107".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
          break label340;
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.l.setText("你已通过实名认证，但未完成证件审核");
        this.h.setRightText("未上传");
        this.e.setVisibility(0);
        this.i.setVisibility(0);
        this.j.setVisibility(8);
        this.i.setText("拍摄并上传身份证，可大幅提高账户安全等级和交易收付款额度。");
      }
    }
    while (true)
    {
      AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "attestationDetail", "-", "-");
      a("Y");
      return;
      label340: if ("5108".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
      {
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.l.setText("你已通过实名认证，但未完成证件审核");
        this.h.setRightText("进行中");
        this.e.setVisibility(8);
        this.i.setVisibility(8);
        this.j.setVisibility(0);
        String str4 = (String)localRealNameCertifyResult.certifyReturnInfo.get("applyTime");
        StringBuilder localStringBuilder = new StringBuilder();
        if (TextUtils.isEmpty(str4))
          str4 = "已";
        String str5 = str4 + "提交，预计2个工作日内审核完成。";
        this.j.setText(str5);
      }
      else if ("5109".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
      {
        ((LinearLayout.LayoutParams)this.f.getLayoutParams()).topMargin = DensityUtil.dip2px(getActivity(), 14.0F);
        this.k.setVisibility(0);
        this.l.setVisibility(8);
        this.h.setRightText("已通过");
        this.e.setVisibility(8);
        this.i.setVisibility(8);
        this.j.setVisibility(8);
      }
      else if ("5120".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
      {
        this.o = true;
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.l.setText("你已通过实名认证，但未完成证件审核");
        this.h.getRightTextView().setTextColor(getResources().getColor(R.color.colorBlue));
        this.h.getArrowImage().setVisibility(0);
        this.h.setRightText("重新上传");
        this.h.setOnClickListener(this.p);
        this.e.setVisibility(8);
        this.i.setVisibility(8);
        this.j.setVisibility(0);
        String str3 = "证件审核失败，请重新上传。失败原因：" + (String)localRealNameCertifyResult.certifyReturnInfo.get("failReason");
        this.j.setText(str3);
      }
      else if ("5122".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
      {
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.l.setText("你已通过实名认证，但证件将过期");
        this.h.getRightTextView().setVisibility(0);
        this.h.getRightTextView().setText("将过期");
        this.e.setVisibility(0);
        this.i.setVisibility(0);
        this.j.setVisibility(8);
        this.i.setText("重新上传身份证，逾期会影响账户的收款功能。");
      }
      else if ("5121".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
      {
        this.k.setVisibility(8);
        this.l.setVisibility(0);
        this.l.setText("你已通过实名认证，但证件已过期");
        this.h.getRightTextView().setVisibility(0);
        this.h.getRightTextView().setText("已过期");
        this.e.setVisibility(0);
        this.i.setVisibility(0);
        this.j.setVisibility(8);
        this.i.setText("重新上传身份证，确保账户能正常收款。");
      }
      else
      {
        ((BaseFragmentActivity)getActivity()).toast(localRealNameCertifyResult.message, 0);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.HasCertifiedFragment
 * JD-Core Version:    0.6.2
 */