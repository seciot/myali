package com.alipay.mobile.security.gesture.component;

import com.alipay.mobile.common.security.Des;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.gesture.ui.GestureActivity;
import com.alipay.mobile.security.gesture.util.SHA1;
import com.alipay.mobile.security.securitycommon.SecurityCommonUtil;

final class e
  implements m
{
  e(AlipayPattern paramAlipayPattern, UserInfo paramUserInfo, GestureActivity paramGestureActivity)
  {
  }

  public final void a(String paramString)
  {
    if (paramString.length() >= LockView.MINSELECTED)
      try
      {
        if (this.a.getGesturePwd().length() > 32);
        String str;
        for (Object localObject = SHA1.sha1(paramString + Des.encrypt(this.a.getUserId(), "userInfo")); (((String)localObject).equals(this.a.getGesturePwd())) && (this.c.mPatternCheckedListener != null); localObject = str)
        {
          this.c.settingGestureError(this.b, this.a, 0);
          this.c.mPatternCheckedListener.a(false, true, false);
          return;
          str = SecurityCommonUtil.getMD5Str(paramString);
        }
      }
      catch (Exception localException)
      {
        new StringBuilder("onLockDone 异常:").append(localException.getMessage()).toString();
      }
    int i = 1 + AlipayPattern.access$100(this.c, this.b, this.a);
    this.c.settingGestureError(this.b, this.a, i);
    if (i >= 5)
    {
      AlipayPattern.access$200(this.c, this.a, this.b);
      return;
    }
    if (AlipayPattern.access$000(this.c) != null)
      AlipayPattern.access$300(this.c, this.a, this.b);
    AlipayPattern.access$400(this.c).clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.e
 * JD-Core Version:    0.6.2
 */