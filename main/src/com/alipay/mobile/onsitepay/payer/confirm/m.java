package com.alipay.mobile.onsitepay.payer.confirm;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class m
  implements DialogInterface.OnClickListener
{
  m(C2CConfirmActivity paramC2CConfirmActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AlipayLogAgent.writeLog(this.a.getApplicationContext(), BehaviourIdEnum.CLICKED, "-", "-", this.a.f, "-", "payConfirmView", "-", "cancelButton");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.m
 * JD-Core Version:    0.6.2
 */