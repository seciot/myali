package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.livetradeprod.core.model.OnsitePayReq;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;

@EActivity(resName="alipass_payment_c2b_confirminfor")
public class C2BConfirmActivity extends BasicConfirmActivity
  implements View.OnClickListener
{

  @ViewById(resName="tradeNameView")
  APTextView g;

  @ViewById(resName="tradeOppositeView")
  APTextView h;

  @ViewById(resName="tradeAmountView")
  APTextView i;

  @ViewById(resName="originalAmountMessage")
  APTextView j;

  @ViewById(resName="originalAmountView")
  APTextView k;

  @ViewById(resName="C2BConfirmPay")
  APButton l = null;
  private String m = "";
  private String n = "";
  private String o = "";
  private String p = "";
  private String q = "";
  private JSONObject r = null;
  private String s = "";

  @Background
  protected void b(String paramString)
  {
    AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, null, null, null, null, "ZD", this.b, this.d.getUserId(), "-", new String[] { "kf", "callcashier", "", "y", "alipayclient" });
    OnsitePayReq localOnsitePayReq = new OnsitePayReq();
    localOnsitePayReq.dynamicId = this.b;
    localOnsitePayReq.tradeNo = paramString;
    SoundWavePayRes localSoundWavePayRes = ((SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class)).onsiteAutoPay(localOnsitePayReq);
    new StringBuilder("自动收银结果：").append(localSoundWavePayRes.toString()).toString();
    a(localSoundWavePayRes);
  }

  @AfterViews
  protected final void d()
  {
    if (this.r != null)
    {
      this.b = this.r.optString("dynamicId");
      this.m = this.r.optString("subject");
      this.g.setText(this.m);
      this.n = this.r.optString("storeName");
      this.h.setText(this.n);
      this.o = this.r.optString("tradeNo");
      this.p = this.r.optString("realAmount");
      this.q = this.r.optString("originAmount");
      this.i.setText(this.p + "元");
      if ((!StringUtils.isNotEmpty(this.q)) || (StringUtils.equals(this.p, this.q)))
        break label249;
      this.j.setText("  原价");
      this.k.setText(this.q + "元");
      this.k.getPaint().setFlags(17);
    }
    while (true)
    {
      this.s = this.r.optString("bizSubType");
      this.f = this.r.optString("payType");
      c();
      this.l.setOnClickListener(this);
      return;
      label249: this.j.setText("");
      this.k.setText("");
    }
  }

  @Background
  public void e()
  {
    a(this.o, this.s);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.C2BConfirmPay)
    {
      this.l.setEnabled(false);
      this.c = System.currentTimeMillis();
      AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, null, null, null, null, "C2B", this.b, this.d.getUserId(), "-", new String[] { "kf", "confirmpay", "", "y", "alipayclient" });
      showProgressDialog("");
      if ("AUTOPAY".equals(this.f))
        b(this.o);
    }
    else
    {
      return;
    }
    e();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    try
    {
      this.r = new JSONObject(getIntent().getExtras().getString("responseStr"));
      this.e = getIntent().getExtras().getString("extern_token");
      this.d = localAuthService.getUserInfo();
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.C2BConfirmActivity
 * JD-Core Version:    0.6.2
 */