package com.alipay.mobile.onsitepay.payer.confirm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.livetradeprod.core.model.OnsitePayReq;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.onsitepay.d;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;

@EActivity(resName="facepayment_c2b_confirminfor")
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

  @ViewById(resName="titleBar")
  protected APTitleBar m;
  private String n = "";
  private String o = "";
  private String p = "";
  private String q = "";
  private String r = "";
  private JSONObject s = null;
  private String t = "";

  @Background
  protected void c(String paramString)
  {
    AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, this.f, null, null, null, "ZD", this.b, a(), "-", new String[] { paramString, "callcashier", "", "y", "alipayclient" });
    OnsitePayReq localOnsitePayReq = new OnsitePayReq();
    localOnsitePayReq.dynamicId = this.b;
    localOnsitePayReq.tradeNo = paramString;
    SoundWavePayRes localSoundWavePayRes = c().onsiteAutoPay(localOnsitePayReq);
    new StringBuilder("自动收银结果：").append(localSoundWavePayRes.toString()).toString();
    b(localSoundWavePayRes);
  }

  @AfterViews
  protected final void e()
  {
    if (this.f.equals("20000056"))
    {
      this.m.setTitleText("付款码");
      if (this.s != null)
      {
        this.b = this.s.optString("dynamicId");
        this.n = this.s.optString("subject");
        this.g.setText(this.n);
        this.o = this.s.optString("storeName");
        this.h.setText(this.o);
        this.p = this.s.optString("tradeNo");
        this.q = this.s.optString("realAmount");
        this.r = this.s.optString("originAmount");
        this.i.setText(this.q + "元");
        if ((!StringUtils.isNotEmpty(this.r)) || (StringUtils.equals(this.q, this.r)))
          break label294;
        this.j.setText("  原价");
        this.k.setText(this.r + "元");
        this.k.getPaint().setFlags(17);
      }
    }
    while (true)
    {
      this.t = this.s.optString("bizSubType");
      this.e = this.s.optString("payType");
      d();
      this.l.setOnClickListener(this);
      return;
      if (!this.f.equals("10000014"))
        break;
      this.m.setTitleText("当面付");
      break;
      label294: this.j.setText("");
      this.k.setText("");
    }
  }

  @Background
  public void f()
  {
    a(this.p, this.t);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == d.a)
    {
      this.l.setEnabled(false);
      this.c = System.currentTimeMillis();
      Context localContext = getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
      String str1 = this.f;
      String str2 = this.b;
      String str3 = a();
      String[] arrayOfString = new String[5];
      arrayOfString[0] = this.p;
      arrayOfString[1] = "confirmpay";
      arrayOfString[2] = "";
      arrayOfString[3] = "y";
      arrayOfString[4] = "alipayclient";
      AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, str1, null, null, null, "C2B", str2, str3, "-", arrayOfString);
      showProgressDialog("");
      if ("AUTOPAY".equals(this.e))
        c(this.p);
    }
    else
    {
      return;
    }
    f();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      this.f = getIntent().getExtras().getString("fromAppid");
      this.s = new JSONObject(getIntent().getExtras().getString("responseStr"));
      this.d = getIntent().getExtras().getString("extern_token");
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
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.C2BConfirmActivity
 * JD-Core Version:    0.6.2
 */