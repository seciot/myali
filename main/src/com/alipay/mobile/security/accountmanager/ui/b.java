package com.alipay.mobile.security.accountmanager.ui;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.b.a;
import com.alipay.mobile.security.accountmanager.b.a.a;
import java.util.List;

final class b
  implements AdapterView.OnItemClickListener
{
  b(AccountManagerActivity paramAccountManagerActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    UserInfo localUserInfo;
    try
    {
      if (paramInt >= this.a.g.size())
      {
        new StringBuilder("click position: ").append(paramInt).append(" size: ").append(this.a.g.size()).toString();
        return;
      }
      ((AppBundle.a)paramView.getTag()).c.setVisibility(0);
      this.a.c.notifyDataSetChanged();
      localUserInfo = (UserInfo)this.a.g.get(paramInt);
      Object localObject = "";
      if (localUserInfo != null)
      {
        String str = localUserInfo.getUserId();
        AccountManagerActivity localAccountManagerActivity = this.a;
        BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = localUserInfo.getLogonId();
        AlipayLogAgent.writeLog(localAccountManagerActivity, localBehaviourIdEnum, "-", "-", "20000027", "-", "-", "accountManageView", "seeAccount", "-", "u", "c", arrayOfString);
        localObject = str;
      }
      if ((this.a.j == null) || (this.a.j.equalsIgnoreCase((String)localObject)))
        return;
      if ((localUserInfo != null) && (localUserInfo.isAutoLogin()) && (!TextUtils.isEmpty(localUserInfo.getGesturePwd())))
      {
        this.a.a(localUserInfo);
        return;
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("切换账户异常：").append(localException.getMessage()).toString();
      return;
    }
    AccountManagerActivity.a(this.a, localUserInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.b
 * JD-Core Version:    0.6.2
 */