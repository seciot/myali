package com.alipay.android.phone.publicplatform.home;

import com.alipay.android.phone.publicplatform.main.model.MsgCountModel;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class c
  implements com.alipay.android.phone.publicplatform.widget.a
{
  c(PublicHomeWidgetGroup paramPublicHomeWidgetGroup)
  {
  }

  public final MsgCountModel a()
  {
    UserInfo localUserInfo = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
    if (localUserInfo != null)
    {
      MsgCountModel localMsgCountModel = this.a.publicHomeManager.calculateMsgCount(localUserInfo.getUserId());
      if (((localMsgCountModel.getCount() != 0) && ((localMsgCountModel.getCount() <= 0) || (localMsgCountModel.getTyle() != 1))) || (PublicHomeWidgetGroup.access$100(this.a, localMsgCountModel)))
        return localMsgCountModel;
      return new MsgCountModel(0, 1);
    }
    return new MsgCountModel(0, 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.c
 * JD-Core Version:    0.6.2
 */