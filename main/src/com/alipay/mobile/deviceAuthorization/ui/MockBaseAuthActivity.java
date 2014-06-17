package com.alipay.mobile.deviceAuthorization.ui;

import android.os.Bundle;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.PWDInputListener;
import com.alipay.mobile.deviceAuthorization.a;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobilesecurity.common.spi.approve.AuthOption;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;
import java.util.ArrayList;
import java.util.List;

public abstract class MockBaseAuthActivity extends BaseActivity
  implements APSixNumberPwdInputBox.PWDInputListener
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    PrepareApproveRes localPrepareApproveRes = new PrepareApproveRes();
    localPrepareApproveRes.approvePageTitle = "账户授权";
    localPrepareApproveRes.approveTextList = new ArrayList();
    localPrepareApproveRes.needPassword = true;
    localPrepareApproveRes.passwordType = a.a;
    localPrepareApproveRes.authTargetTitle = "歌月授权对象";
    localPrepareApproveRes.authTargetDescription = "这是歌月正在测试的永久授权模拟,啊阿里巴巴不得法额的风阿大大法师大法师大法师大法师多发点沙发上东风桥而放弃饿";
    localPrepareApproveRes.authOptionTitle = "歌月将获得您的以下权限：";
    ArrayList localArrayList = new ArrayList();
    AuthOption localAuthOption1 = new AuthOption();
    localAuthOption1.optionKey = "1";
    localAuthOption1.optionText = "获得您的个人信息";
    localAuthOption1.defaultChecked = true;
    localAuthOption1.forceChecked = true;
    localArrayList.add(localAuthOption1);
    AuthOption localAuthOption2 = new AuthOption();
    localAuthOption2.optionKey = "2";
    localAuthOption2.optionText = "获得您的安全信息";
    localAuthOption2.defaultChecked = true;
    localAuthOption2.forceChecked = false;
    localArrayList.add(localAuthOption2);
    localPrepareApproveRes.authOptions = localArrayList;
    localPrepareApproveRes.cancelButtonText = "取消";
    localPrepareApproveRes.confirmButtonText = "授权";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.MockBaseAuthActivity
 * JD-Core Version:    0.6.2
 */