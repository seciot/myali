package com.alipay.android.widget.security.service;

import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobilesecurity.core.model.mainpage.level.QueryAccountSecurityLevelResp;
import com.alipay.mobilesecurity.core.model.mainpage.level.SecuritySettings;
import java.util.HashMap;
import java.util.Map;

public final class b
{
  private ActivityApplication a;
  private String b;

  public b(ActivityApplication paramActivityApplication, String paramString)
  {
    this.a = paramActivityApplication;
    this.b = paramString;
  }

  public final SecurityGradeViewModel a(QueryAccountSecurityLevelResp paramQueryAccountSecurityLevelResp)
  {
    SecurityGradeViewModel localSecurityGradeViewModel = new SecurityGradeViewModel();
    if (paramQueryAccountSecurityLevelResp == null)
      return null;
    localSecurityGradeViewModel.setLogonId(this.b);
    HashMap localHashMap1 = new HashMap();
    label101: label233: HashMap localHashMap2;
    if (paramQueryAccountSecurityLevelResp.getSecuritySettings().isMobileBinded())
    {
      localHashMap1.put(Integer.valueOf(R.string.aK), paramQueryAccountSecurityLevelResp.getSecuritySettings().getMobileBindNo());
      localSecurityGradeViewModel.setIsShowArrowBindPhone(Boolean.valueOf(false));
      if (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isCertified())
        break label479;
      localHashMap1.put(Integer.valueOf(R.string.aM), "已认证");
      localSecurityGradeViewModel.setIsShowArrowCertified(Boolean.valueOf(false));
      if (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isSetHeadPic())
        break label505;
      localHashMap1.put(Integer.valueOf(R.string.bY), "已设置");
      localSecurityGradeViewModel.setIsShowArrowPortraitSet(Boolean.valueOf(false));
      label134: if (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isSetGesture())
        break label531;
      localHashMap1.put(Integer.valueOf(R.string.bz), "已设置");
      localSecurityGradeViewModel.setIsShowArrowGestureSet(Boolean.valueOf(false));
      label167: if (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isSetDeviceAuthentication())
        break label557;
      localHashMap1.put(Integer.valueOf(R.string.cB), "已认证");
      localSecurityGradeViewModel.setIsShowArrowTIDSet(Boolean.valueOf(false));
      label200: if (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenPush())
        break label583;
      localHashMap1.put(Integer.valueOf(R.string.cb), "已开启");
      localSecurityGradeViewModel.setIsShowArrowPushSet(Boolean.valueOf(false));
      localHashMap2 = new HashMap();
      if (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedMobileOtp())
        break label609;
      localHashMap2.put(Integer.valueOf(R.string.av), "已开通");
      localSecurityGradeViewModel.setIsShowArrowBaoling(Boolean.valueOf(false));
      label276: if (paramQueryAccountSecurityLevelResp.getSecuritySettings().isSetSecurityQA())
        localHashMap2.put(Integer.valueOf(R.string.cf), "已设置");
      if (paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedUKey())
        localHashMap2.put(Integer.valueOf(R.string.cC), "已申请");
      if (paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedDigitalCert())
        localHashMap2.put(Integer.valueOf(R.string.bp), "已安装");
      if (paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedDynamicPwd())
        localHashMap2.put(Integer.valueOf(R.string.bu), "已设置");
      if ((!paramQueryAccountSecurityLevelResp.getSecuritySettings().isMobileBinded()) || (!paramQueryAccountSecurityLevelResp.getSecuritySettings().isCertified()))
        break label636;
      localSecurityGradeViewModel.setShowWarnTxt(R.string.bM);
    }
    while (true)
    {
      localSecurityGradeViewModel.setFirstBlock(localHashMap1);
      localSecurityGradeViewModel.setSecondBlock(localHashMap2);
      localSecurityGradeViewModel.setLevel(paramQueryAccountSecurityLevelResp.getSecurityLevel().getLevel());
      localSecurityGradeViewModel.setScore(paramQueryAccountSecurityLevelResp.getSecurityLevel().getScore());
      localSecurityGradeViewModel.setMemo(paramQueryAccountSecurityLevelResp.getSecurityLevel().getMemo());
      return localSecurityGradeViewModel;
      localHashMap1.put(Integer.valueOf(R.string.aK), "立即绑定");
      localSecurityGradeViewModel.setIsShowArrowBindPhone(Boolean.valueOf(true));
      break;
      label479: localHashMap1.put(Integer.valueOf(R.string.aM), "立即认证");
      localSecurityGradeViewModel.setIsShowArrowCertified(Boolean.valueOf(true));
      break label101;
      label505: localHashMap1.put(Integer.valueOf(R.string.bY), "立即设置");
      localSecurityGradeViewModel.setIsShowArrowPortraitSet(Boolean.valueOf(true));
      break label134;
      label531: localHashMap1.put(Integer.valueOf(R.string.bz), "立即设置");
      localSecurityGradeViewModel.setIsShowArrowGestureSet(Boolean.valueOf(true));
      break label167;
      label557: localHashMap1.put(Integer.valueOf(R.string.cB), "立即认证");
      localSecurityGradeViewModel.setIsShowArrowTIDSet(Boolean.valueOf(true));
      break label200;
      label583: localHashMap1.put(Integer.valueOf(R.string.cb), "立即开启");
      localSecurityGradeViewModel.setIsShowArrowPushSet(Boolean.valueOf(true));
      break label233;
      label609: localHashMap2.put(Integer.valueOf(R.string.av), "立即开通");
      localSecurityGradeViewModel.setIsShowArrowBaoling(Boolean.valueOf(true));
      break label276;
      label636: localSecurityGradeViewModel.setShowWarnTxt(R.string.bN);
    }
  }

  public final void a(com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel paramSecurityLevel)
  {
    try
    {
      SecurityDbHelper.getInstance(this.a.getMicroApplicationContext().getApplicationContext()).addSecurityLevel(paramSecurityLevel);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  public final void a(String paramString)
  {
    try
    {
      SecurityDbHelper.getInstance(this.a.getMicroApplicationContext().getApplicationContext()).deleteSecurityLevel(paramString);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  public final com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel b(QueryAccountSecurityLevelResp paramQueryAccountSecurityLevelResp)
  {
    if (paramQueryAccountSecurityLevelResp != null)
    {
      com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel localSecurityLevel = new com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel();
      localSecurityLevel.setCertified(paramQueryAccountSecurityLevelResp.getSecuritySettings().isCertified());
      localSecurityLevel.setLevel(paramQueryAccountSecurityLevelResp.getSecurityLevel().getLevel());
      localSecurityLevel.setLogonId(this.b);
      localSecurityLevel.setMobileBinded(paramQueryAccountSecurityLevelResp.getSecuritySettings().isMobileBinded());
      localSecurityLevel.setOpenedDigitalCert(paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedDigitalCert());
      localSecurityLevel.setOpenedDynamicPwd(paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedDynamicPwd());
      localSecurityLevel.setOpenedMobileOtp(paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedMobileOtp());
      localSecurityLevel.setOpenedUKey(paramQueryAccountSecurityLevelResp.getSecuritySettings().isOpenedUKey());
      localSecurityLevel.setScore(paramQueryAccountSecurityLevelResp.getSecurityLevel().getScore());
      localSecurityLevel.setSetSecurityQA(paramQueryAccountSecurityLevelResp.getSecuritySettings().isSetSecurityQA());
      return localSecurityLevel;
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.b
 * JD-Core Version:    0.6.2
 */