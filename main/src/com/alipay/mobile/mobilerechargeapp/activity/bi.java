package com.alipay.mobile.mobilerechargeapp.activity;

import android.widget.Toast;
import com.alipay.mobile.commonui.widget.APSpinner;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingCallback;
import com.alipay.mobile.mobilerechargeapp.adapter.EcardVOWrapper;
import com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryInfo;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

final class bi
  implements TaobaoBindingCallback
{
  bi(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void quickBindingFail(MobileSecurityResult paramMobileSecurityResult)
  {
  }

  public final void quickBindingSuccess(MobileSecurityResult paramMobileSecurityResult)
  {
    EcardVOWrapper localEcardVOWrapper = (EcardVOWrapper)this.a.e.getSelectedItem();
    if ((localEcardVOWrapper == null) || (localEcardVOWrapper.f()))
    {
      Toast.makeText(this.a, "请选择正确的充值面额", 1).show();
      return;
    }
    MobileRechargeActivity.a(this.a, new RechargeHistoryInfo(MobileRechargeActivity.e(this.a), MobileRechargeActivity.f(this.a), this.a.d.getText().toString(), localEcardVOWrapper.a()));
    this.a.a(MobileRechargeActivity.e(this.a), localEcardVOWrapper);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bi
 * JD-Core Version:    0.6.2
 */