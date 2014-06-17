package com.alipay.mobile.alipassapp.viewcontrol;

import android.content.Context;
import android.view.View;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ActivityApplication;

final class b extends com.alipay.mobile.alipassapp.ui.common.a
{
  b(a parama, Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5, ActivityApplication paramActivityApplication)
  {
    super(paramContext, paramString1, paramString2, paramString3, paramBoolean, paramString4, paramString5, paramActivityApplication);
  }

  public final void onClick(View paramView)
  {
    super.onClick(paramView);
    try
    {
      if (StringUtils.equalsIgnoreCase(a.a(this.a).getBizType(), "COUPON"))
      {
        AlipayApplication localAlipayApplication2 = AlipayApplication.getInstance();
        BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.CLICKED;
        String[] arrayOfString2 = new String[2];
        arrayOfString2[0] = a.a(this.a).getPassBaseInfo().getPassId();
        arrayOfString2[1] = a.a(this.a).getPassBaseInfo().getPartnerId();
        AlipayLogAgent.writeLog(localAlipayApplication2, localBehaviourIdEnum2, "", "", "20000030", "", "", "couponBackDetails", "open", "", "", "", arrayOfString2);
        return;
      }
      if (StringUtils.equalsIgnoreCase(a.a(this.a).getBizType(), "TRAVEL"))
      {
        AlipayApplication localAlipayApplication1 = AlipayApplication.getInstance();
        BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.CLICKED;
        String[] arrayOfString1 = new String[2];
        arrayOfString1[0] = a.a(this.a).getPassBaseInfo().getPassId();
        arrayOfString1[1] = a.a(this.a).getPassBaseInfo().getPartnerId();
        AlipayLogAgent.writeLog(localAlipayApplication1, localBehaviourIdEnum1, "", "", "20000021", "", "", "travelItineraryBackDetails", "open", "", "", "", arrayOfString1);
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.b
 * JD-Core Version:    0.6.2
 */