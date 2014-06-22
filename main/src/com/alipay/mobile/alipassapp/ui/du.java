package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.List;

final class du
  implements View.OnClickListener
{
  du(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipassInfo.Operation localOperation = (AlipassInfo.Operation)MemberCardDetailActivity.j(this.a).getOperation().get(0);
    if ((localOperation instanceof AlipassInfo.Operation.OperationString))
    {
      String str = localOperation.getFormat();
      if (StringUtils.equals(localOperation.getFormat(), "wave"))
        str = "soundwave";
      this.a.getBundleByComponentName(str);
      Intent localIntent = new Intent(this.a, MemberChargeOffActivity.class);
      localIntent.putExtra("operation", localOperation);
      localIntent.putExtra("passId", MemberCardDetailActivity.t(this.a));
      MemberCardDetailActivity.x(this.a).getMicroApplicationContext().startActivity(MemberCardDetailActivity.w(this.a), localIntent);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.du
 * JD-Core Version:    0.6.2
 */