package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.core.model.model.PassInfo;
import com.alipay.mobile.alipassapp.R.color;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.More;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.alipassapp.ui.common.ai;
import com.alipay.mobile.alipassapp.ui.common.an;
import com.alipay.mobile.alipassapp.ui.common.au;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.alipassapp.ui.common.p;
import com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderStyle;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPopupWindow;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@EActivity
public class MemberCardDetailActivity extends BaseActivity
  implements DialogInterface.OnCancelListener, p
{
  public static boolean a = false;
  public static boolean b = true;
  public static boolean c = false;
  private static final String d = MemberCardDetailActivity.class.getSimpleName();
  private String A;
  private String B;
  private boolean C = false;
  private boolean D = false;
  private long E;
  private CreateDynamicCodeService F;
  private au G;
  private AlipassPayBridgeService H;
  private Handler I = new dp(this);
  private View.OnClickListener J = new dr(this);
  private View.OnClickListener K = new dt(this);
  private View.OnClickListener L = new du(this);
  private View e;
  private APPullRefreshView f = null;
  private k g;
  private com.alipay.mobile.alipassapp.biz.a h;
  private com.alipay.mobile.alipassapp.biz.a.a i;
  private boolean j = false;
  private boolean k = false;
  private AlipassInfo l;
  private APTitleBar m;
  private String n;
  private MemberCardHeaderStyle o;
  private APLinearLayout p;
  private APLinearLayout q;
  private APLinearLayout r;
  private APLinearLayout s;
  private APButton t;
  private APTextView u;
  private APImageView v;
  private APTextView w;
  private APPopupWindow x;
  private APTextView y;
  private APTextView z;

  private void a(AlipassInfo.EinfoFields paramEinfoFields)
  {
    AlipassInfo.More localMore = paramEinfoFields.getMore();
    Intent localIntent = new Intent();
    localIntent.putExtra("more", localMore);
    an.a().a(localIntent, this.mApp);
  }

  private void a(List<AlipassInfo.EinfoFields> paramList, ViewGroup paramViewGroup)
  {
    if ((paramList == null) || (paramList.size() == 0))
      paramViewGroup.setVisibility(8);
    label26: int i1;
    while (true)
    {
      Iterator localIterator = paramList.iterator();
      AlipassInfo.EinfoFields localEinfoFields;
      do
      {
        boolean bool = localIterator.hasNext();
        i1 = 0;
        if (!bool)
          break;
        localEinfoFields = (AlipassInfo.EinfoFields)localIterator.next();
        paramList.size();
      }
      while (((StringUtils.isBlank(localEinfoFields.getLabel())) && (StringUtils.isBlank(localEinfoFields.getValue()))) || ((StringUtils.isBlank(localEinfoFields.getValue())) && (localEinfoFields.getMore() == null) && (!StringUtils.equalsIgnoreCase(localEinfoFields.getType(), "tel")) && (!StringUtils.equalsIgnoreCase(localEinfoFields.getType(), "map"))));
      APTableView localAPTableView2 = new APTableView(this);
      localAPTableView2.setStyle(16);
      localAPTableView2.setRightText(localEinfoFields.getValue());
      if ((localEinfoFields.getMore() != null) && (StringUtils.isNotBlank(localEinfoFields.getMore().getEndDate())));
      try
      {
        int i2 = com.alipay.mobile.alipassapp.a.a.a(new Date(), com.alipay.mobile.alipassapp.a.a.a(StringUtils.substring(localEinfoFields.getMore().getEndDate(), 0, 10), "yyyy-MM-dd"));
        if (i2 < 0)
          break label26;
        if (i2 == 0)
        {
          localAPTableView2.setRightText("当天过期");
          localAPTableView2.getRightTextView().setTextColor(getResources().getColor(R.color.membercard_tableView_value));
        }
        while (true)
        {
          localAPTableView2.setLeftText(localEinfoFields.getLabel());
          localAPTableView2.setAdjustRightTextAfterDraw(true);
          if (!StringUtils.equals("tel", localEinfoFields.getType()))
            break label387;
          localAPTableView2.setOnClickListener(new com.alipay.mobile.alipassapp.ui.common.a(this, "tel", localEinfoFields.getLabel(), this.mApp));
          localAPTableView2.getArrowImage().setImageResource(R.drawable.member_card_detail_tel);
          paramViewGroup.addView(localAPTableView2);
          break label26;
          paramViewGroup.setVisibility(0);
          break;
          if ((i2 > 0) && (i2 <= 7))
          {
            localAPTableView2.setRightText(i2 + "天过期");
            localAPTableView2.getRightTextView().setTextColor(getResources().getColor(R.color.membercard_tableView_value));
          }
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          continue;
          label387: if (StringUtils.equals("map", localEinfoFields.getType()))
          {
            localAPTableView2.setOnClickListener(new com.alipay.mobile.alipassapp.ui.common.a(this, "map", localEinfoFields.getLabel(), this.mApp));
          }
          else if (StringUtils.equals("url", localEinfoFields.getType()))
          {
            localAPTableView2.setOnClickListener(new com.alipay.mobile.alipassapp.ui.common.a(this, "url", localEinfoFields.getLabel(), this.mApp));
          }
          else if (localEinfoFields.getMore() == null)
          {
            localAPTableView2.getArrowImage().setVisibility(8);
            localAPTableView2.setClickable(false);
          }
          else
          {
            localAPTableView2.setOnClickListener(new dq(this, localEinfoFields));
          }
        }
      }
    }
    if (i1 < paramViewGroup.getChildCount())
    {
      APTableView localAPTableView1 = (APTableView)paramViewGroup.getChildAt(i1);
      if (paramViewGroup.getChildCount() > 1)
        if (i1 == 0)
          localAPTableView1.setType(17);
      while (true)
      {
        i1++;
        break;
        if (i1 == -1 + paramViewGroup.getChildCount())
        {
          localAPTableView1.setType(18);
        }
        else
        {
          localAPTableView1.setType(19);
          continue;
          localAPTableView1.setType(16);
        }
      }
    }
    if (paramViewGroup.getChildCount() == 0)
      paramViewGroup.setVisibility(8);
  }

  private boolean b(PassInfoResult paramPassInfoResult)
  {
    boolean bool2;
    if (paramPassInfoResult == null)
      bool2 = true;
    boolean bool3;
    do
    {
      AlipassInfo localAlipassInfo;
      boolean bool1;
      do
      {
        return bool2;
        localAlipassInfo = new AlipassInfo(paramPassInfoResult.getPassInfo());
        bool1 = StringUtils.equalsIgnoreCase(paramPassInfoResult.resultCode, "1903");
        bool2 = false;
      }
      while (bool1);
      if (StringUtils.equalsIgnoreCase(paramPassInfoResult.resultCode, "1905"))
      {
        if ((localAlipassInfo.getPrimaryFields() != null) && (localAlipassInfo.getPrimaryFields().size() > 0));
        try
        {
          Thread.sleep(500L);
          this.D = true;
          a((AlipassInfo.EinfoFields)localAlipassInfo.getPrimaryFields().get(0));
          return true;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
      }
      if ((StringUtils.equalsIgnoreCase(paramPassInfoResult.resultCode, "1501")) || (StringUtils.equalsIgnoreCase(paramPassInfoResult.resultCode, "1502")))
      {
        this.m.setGenericButtonVisiable(false);
        return true;
      }
      bool3 = StringUtils.equalsIgnoreCase(paramPassInfoResult.resultCode, "1509");
      bool2 = false;
    }
    while (!bool3);
    a();
    return true;
  }

  private boolean c()
  {
    boolean bool1 = false;
    if ((getIntent() != null) && (getIntent().getExtras() != null));
    for (String str1 = getIntent().getExtras().getString("p"); ; str1 = null)
    {
      Bundle localBundle2;
      if ((str1 == null) && ((this.mApp instanceof AlipassApp)))
      {
        localBundle2 = ((AlipassApp)this.mApp).getAppBundle();
        if (localBundle2 == null);
      }
      for (String str2 = localBundle2.getString("p"); ; str2 = str1)
      {
        this.A = str2;
        if ((getIntent() != null) && (getIntent().getExtras() != null));
        for (String str3 = getIntent().getExtras().getString("b"); ; str3 = null)
        {
          Bundle localBundle1;
          if ((str3 == null) && ((this.mApp instanceof AlipassApp)))
          {
            localBundle1 = ((AlipassApp)this.mApp).getAppBundle();
            if (localBundle1 == null);
          }
          for (String str4 = localBundle1.getString("b"); ; str4 = str3)
          {
            this.B = str4;
            if ((getIntent() != null) && (getIntent().getExtras() != null));
            for (boolean bool2 = getIntent().getExtras().getBoolean("is_invalid"); ; bool2 = false)
            {
              this.C = bool2;
              if ((getIntent() != null) && (getIntent().getExtras() != null));
              for (String str5 = getIntent().getExtras().getString("need_city"); ; str5 = null)
              {
                if ((getIntent() != null) && (getIntent().getExtras() != null));
                for (String str6 = getIntent().getExtras().getString("primary_prields"); ; str6 = null)
                {
                  PassInfoResult localPassInfoResult;
                  if (StringUtils.equalsIgnoreCase("1905", str5))
                  {
                    localPassInfoResult = new PassInfoResult();
                    localPassInfoResult.setPassInfo(new PassInfo());
                    localPassInfoResult.getPassInfo().setPrimaryFields(str6);
                    localPassInfoResult.resultCode = str5;
                  }
                  while (true)
                  {
                    a(localPassInfoResult);
                    return bool1;
                    String str7 = this.A;
                    localPassInfoResult = null;
                    if (str7 != null)
                      try
                      {
                        localPassInfoResult = this.i.b(this.A, this.B);
                        boolean bool3 = false;
                        if (localPassInfoResult != null)
                        {
                          boolean bool4 = localPassInfoResult.success;
                          bool3 = false;
                          if (bool4)
                          {
                            PassInfo localPassInfo = localPassInfoResult.getPassInfo();
                            bool3 = false;
                            if (localPassInfo != null)
                              bool3 = true;
                          }
                        }
                        this.k = bool3;
                        bool1 = true;
                      }
                      catch (Exception localException)
                      {
                        new StringBuilder("查询详情DAO异常passId=").append(this.A).toString();
                      }
                    else
                      bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  private String d()
  {
    if ((this.l != null) && (this.l.getOperation() != null) && (this.l.getOperation().size() > 0) && ((this.l.getOperation().get(0) instanceof AlipassInfo.Operation.OperationString)))
      return ((AlipassInfo.Operation)this.l.getOperation().get(0)).getFormat();
    return null;
  }

  @UiThread
  protected void a()
  {
    if (!isFinishing())
      ai.a(this, new ec(this), new ed(this));
  }

  @UiThread
  void a(DeletePassResult paramDeletePassResult)
  {
    dismissProgressDialog();
    if ((paramDeletePassResult != null) && (paramDeletePassResult.success))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("p", this.A);
      setResult(-1, localIntent);
      finish();
    }
  }

  @UiThread
  void a(PassInfoResult paramPassInfoResult)
  {
    if (this.j)
    {
      this.f.refreshFinished();
      this.j = false;
    }
    dismissProgressDialog();
    if ((paramPassInfoResult != null) && (b(paramPassInfoResult)));
    while ((paramPassInfoResult == null) || (!paramPassInfoResult.success) || (paramPassInfoResult.getPassInfo() == null))
      return;
    this.l = new AlipassInfo(paramPassInfoResult.getPassInfo());
    this.F.setPassId(this.l.getPassBaseInfo().getPassId());
    this.m.setGenericButtonVisiable(true);
    this.f.setEnablePull(true);
    this.p.removeAllViews();
    this.q.removeAllViews();
    this.r.removeAllViews();
    this.s.removeAllViews();
    try
    {
      this.o.refreshUI(this.l.getPassBaseInfo().getDisplayInfo().getStrip(), this.l.getPassBaseInfo().getHeadFields(), this.l.getPassName(), this.l.getPassBaseInfo().getDisplayInfo().getResolveBackgroundColor(1), this.l.getPassBaseInfo().getDisplayInfo().getLogo());
      label194: String str1 = d();
      CreateDynamicCodeService localCreateDynamicCodeService;
      Object localObject;
      if (StringUtils.equalsIgnoreCase(str1, "barcode"))
      {
        this.t.setVisibility(8);
        this.u.setVisibility(0);
        this.v.setVisibility(0);
        this.u.setText(R.string.member_card_use_explain);
        new Thread(new ea(this)).start();
        localCreateDynamicCodeService = this.F;
        localObject = this.v.getTag();
        if ((this.l == null) || (this.l.getOperation() == null) || (this.l.getOperation().size() <= 0))
          break label852;
      }
      label852: for (String str2 = ((AlipassInfo.Operation)this.l.getOperation().get(0)).getMessageEncoding(); ; str2 = null)
      {
        localCreateDynamicCodeService.update(str1, localObject, str2);
        if (this.l.getPassBaseInfo() != null)
        {
          this.n = this.l.getPassBaseInfo().getLogoText();
          this.m.setTitleText(this.n);
        }
        a(this.l.getPrimaryFields(), this.p);
        a(this.l.getSecondaryFields(), this.q);
        a(this.l.getAuxiliaryFields(), this.r);
        a(this.l.getBackFields(), this.s);
        this.z.setVisibility(0);
        long l1 = System.currentTimeMillis() - this.E;
        new StringBuilder("会员卡详情MemberCardDetailActivity加载时间").append(l1).toString();
        AlipayApplication localAlipayApplication = this.mMicroApplicationContext.getApplicationContext();
        BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
        String str3 = getClass().getName();
        String[] arrayOfString = new String[4];
        arrayOfString[0] = "";
        arrayOfString[1] = "";
        arrayOfString[2] = String.valueOf(l1);
        arrayOfString[3] = "";
        AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, null, null, null, null, str3, "-", "perf_open_membercarddetail", null, "s", "c", arrayOfString);
        return;
        if ((StringUtils.equalsIgnoreCase(str1, "qrcode")) || (StringUtils.equalsIgnoreCase(str1, "dqrcode")))
        {
          this.t.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.bp_membercard_detail_qrcode), null, null, null);
          this.t.setVisibility(0);
          this.u.setVisibility(8);
          this.v.setVisibility(8);
          this.t.setOnClickListener(this.L);
          break;
        }
        if ((StringUtils.equalsIgnoreCase(str1, "wave")) || (StringUtils.equalsIgnoreCase(str1, "dwave")))
        {
          this.t.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.bp_membercard_detail_wave), null, null, null);
          this.t.setVisibility(0);
          this.u.setVisibility(8);
          this.v.setVisibility(8);
          this.t.setOnClickListener(this.L);
          break;
        }
        if (StringUtils.equalsIgnoreCase(str1, "dbarcode"))
        {
          this.t.setVisibility(8);
          this.u.setVisibility(0);
          APImageView localAPImageView = this.v;
          if (this.w.getVisibility() == 0);
          for (int i1 = 8; ; i1 = 0)
          {
            localAPImageView.setVisibility(i1);
            this.u.setText(R.string.member_card_use_explain);
            this.F.startGetDynamicCode(this.v.getTag());
            break;
          }
        }
        this.t.setVisibility(8);
        this.u.setVisibility(0);
        this.v.setVisibility(8);
        this.u.setText(R.string.member_card_show);
        break;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      break label194;
    }
  }

  // ERROR //
  @Background
  void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 817
    //   4: iconst_1
    //   5: aload_0
    //   6: invokevirtual 821	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:showProgressDialog	(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    //   9: aconst_null
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 823	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:h	Lcom/alipay/mobile/alipassapp/biz/a;
    //   15: aload_1
    //   16: iconst_1
    //   17: invokeinterface 828 3 0
    //   22: astore 8
    //   24: aload 8
    //   26: astore 4
    //   28: aload 4
    //   30: ifnull +22 -> 52
    //   33: aload 4
    //   35: getfield 583	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:success	Z
    //   38: ifeq +14 -> 52
    //   41: aload_0
    //   42: getfield 514	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:i	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   45: aload_1
    //   46: invokeinterface 830 2 0
    //   51: pop
    //   52: aload_0
    //   53: aload 4
    //   55: invokevirtual 832	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    //   58: return
    //   59: astore 7
    //   61: aload_0
    //   62: aload_2
    //   63: invokevirtual 832	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    //   66: aload 7
    //   68: athrow
    //   69: astore 6
    //   71: aconst_null
    //   72: astore 4
    //   74: goto -22 -> 52
    //   77: astore 12
    //   79: goto -27 -> 52
    //   82: astore 5
    //   84: aconst_null
    //   85: astore 4
    //   87: goto -35 -> 52
    //   90: astore 11
    //   92: goto -40 -> 52
    //   95: astore_3
    //   96: aconst_null
    //   97: astore 4
    //   99: goto -47 -> 52
    //   102: astore 10
    //   104: goto -52 -> 52
    //   107: astore 9
    //   109: aload 4
    //   111: astore_2
    //   112: aload 9
    //   114: astore 7
    //   116: goto -55 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   11	24	59	com/alipay/mobile/common/rpc/RpcException
    //   11	24	69	java/lang/IllegalStateException
    //   33	52	77	java/lang/IllegalStateException
    //   11	24	82	android/database/SQLException
    //   33	52	90	android/database/SQLException
    //   11	24	95	java/sql/SQLException
    //   33	52	102	java/sql/SQLException
    //   33	52	107	com/alipay/mobile/common/rpc/RpcException
  }

  // ERROR //
  @Background
  void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifeq +12 -> 13
    //   4: aload_0
    //   5: ldc_w 834
    //   8: iconst_1
    //   9: aload_0
    //   10: invokevirtual 821	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:showProgressDialog	(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    //   13: aload_0
    //   14: getfield 823	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:h	Lcom/alipay/mobile/alipassapp/biz/a;
    //   17: aload_0
    //   18: getfield 487	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:A	Ljava/lang/String;
    //   21: iconst_0
    //   22: iconst_1
    //   23: invokeinterface 837 4 0
    //   28: astore 10
    //   30: aload 10
    //   32: astore_3
    //   33: aload_3
    //   34: ifnull +33 -> 67
    //   37: aload_3
    //   38: getfield 387	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:resultCode	Ljava/lang/String;
    //   41: ldc_w 389
    //   44: invokestatic 208	com/alipay/mobile/common/utils/StringUtils:equalsIgnoreCase	(Ljava/lang/String;Ljava/lang/String;)Z
    //   47: ifne +20 -> 67
    //   50: aload_3
    //   51: getfield 387	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:resultCode	Ljava/lang/String;
    //   54: ldc_w 391
    //   57: invokestatic 208	com/alipay/mobile/common/utils/StringUtils:equalsIgnoreCase	(Ljava/lang/String;Ljava/lang/String;)Z
    //   60: istore 13
    //   62: iload 13
    //   64: ifeq +9 -> 73
    //   67: aload_0
    //   68: aload_3
    //   69: invokevirtual 512	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    //   72: return
    //   73: aload_3
    //   74: getfield 522	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:success	Z
    //   77: ifeq +18 -> 95
    //   80: aload_0
    //   81: getfield 514	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:i	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   84: aload_3
    //   85: aload_0
    //   86: getfield 490	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:B	Ljava/lang/String;
    //   89: iconst_1
    //   90: invokeinterface 840 4 0
    //   95: aload_3
    //   96: ifnull +107 -> 203
    //   99: aload_3
    //   100: getfield 522	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:success	Z
    //   103: ifne +100 -> 203
    //   106: aload_0
    //   107: getfield 92	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:k	Z
    //   110: ifeq +93 -> 203
    //   113: aload_3
    //   114: getfield 387	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:resultCode	Ljava/lang/String;
    //   117: ldc_w 412
    //   120: invokestatic 208	com/alipay/mobile/common/utils/StringUtils:equalsIgnoreCase	(Ljava/lang/String;Ljava/lang/String;)Z
    //   123: ifne +16 -> 139
    //   126: aload_3
    //   127: getfield 387	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:resultCode	Ljava/lang/String;
    //   130: ldc_w 414
    //   133: invokestatic 208	com/alipay/mobile/common/utils/StringUtils:equalsIgnoreCase	(Ljava/lang/String;Ljava/lang/String;)Z
    //   136: ifeq +67 -> 203
    //   139: aload_0
    //   140: getfield 514	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:i	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   143: astore 14
    //   145: invokestatic 845	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   148: invokevirtual 846	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   151: ldc_w 848
    //   154: invokevirtual 755	java/lang/Class:getName	()Ljava/lang/String;
    //   157: invokeinterface 852 2 0
    //   162: checkcast 848	com/alipay/mobile/framework/service/ext/security/AuthService
    //   165: astore 15
    //   167: aconst_null
    //   168: astore 16
    //   170: aload 15
    //   172: ifnull +18 -> 190
    //   175: aload 15
    //   177: invokevirtual 856	com/alipay/mobile/framework/service/ext/security/AuthService:getUserInfo	()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   180: astore 17
    //   182: aconst_null
    //   183: astore 16
    //   185: aload 17
    //   187: ifnonnull +22 -> 209
    //   190: aload 14
    //   192: aload 16
    //   194: aload_0
    //   195: getfield 487	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:A	Ljava/lang/String;
    //   198: invokeinterface 859 3 0
    //   203: aload_0
    //   204: aload_3
    //   205: invokevirtual 512	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    //   208: return
    //   209: aload 15
    //   211: invokevirtual 856	com/alipay/mobile/framework/service/ext/security/AuthService:getUserInfo	()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   214: invokevirtual 864	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   217: astore 18
    //   219: aload 18
    //   221: astore 16
    //   223: goto -33 -> 190
    //   226: astore 8
    //   228: aconst_null
    //   229: astore 9
    //   231: aload_0
    //   232: aload 9
    //   234: invokevirtual 512	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    //   237: return
    //   238: astore 7
    //   240: aconst_null
    //   241: astore_3
    //   242: aload_0
    //   243: aload_3
    //   244: invokevirtual 512	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    //   247: return
    //   248: astore 4
    //   250: aconst_null
    //   251: astore_3
    //   252: getstatic 77	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:d	Ljava/lang/String;
    //   255: pop
    //   256: new 312	java/lang/StringBuilder
    //   259: dup
    //   260: ldc_w 866
    //   263: invokespecial 526	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload_0
    //   267: getfield 92	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:k	Z
    //   270: invokevirtual 869	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   273: invokevirtual 325	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: pop
    //   277: aload_0
    //   278: getfield 92	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:k	Z
    //   281: ifne +50 -> 331
    //   284: aload 4
    //   286: invokevirtual 872	com/alipay/mobile/common/rpc/RpcException:getCode	()I
    //   289: iconst_2
    //   290: if_icmpne +41 -> 331
    //   293: aload_0
    //   294: getfield 874	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:g	Lcom/alipay/mobile/alipassapp/ui/common/k;
    //   297: aload_0
    //   298: aload_0
    //   299: getfield 416	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:m	Lcom/alipay/mobile/commonui/widget/APTitleBar;
    //   302: new 876	com/alipay/mobile/alipassapp/ui/dy
    //   305: dup
    //   306: aload_0
    //   307: invokespecial 877	com/alipay/mobile/alipassapp/ui/dy:<init>	(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    //   310: invokevirtual 882	com/alipay/mobile/alipassapp/ui/common/k:a	(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/view/View$OnClickListener;)V
    //   313: aload_0
    //   314: new 884	com/alipay/mobile/alipassapp/ui/dz
    //   317: dup
    //   318: aload_0
    //   319: invokespecial 885	com/alipay/mobile/alipassapp/ui/dz:<init>	(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    //   322: invokevirtual 888	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   325: aload_0
    //   326: aload_3
    //   327: invokevirtual 512	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    //   330: return
    //   331: aload 4
    //   333: athrow
    //   334: astore_2
    //   335: aload_0
    //   336: aload_3
    //   337: invokevirtual 512	com/alipay/mobile/alipassapp/ui/MemberCardDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    //   340: aload_2
    //   341: athrow
    //   342: astore_2
    //   343: aconst_null
    //   344: astore_3
    //   345: goto -10 -> 335
    //   348: astore 4
    //   350: goto -98 -> 252
    //   353: astore 12
    //   355: goto -113 -> 242
    //   358: astore 11
    //   360: aload_3
    //   361: astore 9
    //   363: goto -132 -> 231
    //
    // Exception table:
    //   from	to	target	type
    //   13	30	226	java/sql/SQLException
    //   13	30	238	java/lang/IllegalStateException
    //   13	30	248	com/alipay/mobile/common/rpc/RpcException
    //   37	62	334	finally
    //   73	95	334	finally
    //   99	139	334	finally
    //   139	167	334	finally
    //   175	182	334	finally
    //   190	203	334	finally
    //   209	219	334	finally
    //   252	325	334	finally
    //   331	334	334	finally
    //   13	30	342	finally
    //   37	62	348	com/alipay/mobile/common/rpc/RpcException
    //   73	95	348	com/alipay/mobile/common/rpc/RpcException
    //   99	139	348	com/alipay/mobile/common/rpc/RpcException
    //   139	167	348	com/alipay/mobile/common/rpc/RpcException
    //   175	182	348	com/alipay/mobile/common/rpc/RpcException
    //   190	203	348	com/alipay/mobile/common/rpc/RpcException
    //   209	219	348	com/alipay/mobile/common/rpc/RpcException
    //   37	62	353	java/lang/IllegalStateException
    //   73	95	353	java/lang/IllegalStateException
    //   99	139	353	java/lang/IllegalStateException
    //   139	167	353	java/lang/IllegalStateException
    //   175	182	353	java/lang/IllegalStateException
    //   190	203	353	java/lang/IllegalStateException
    //   209	219	353	java/lang/IllegalStateException
    //   37	62	358	java/sql/SQLException
    //   73	95	358	java/sql/SQLException
    //   99	139	358	java/sql/SQLException
    //   139	167	358	java/sql/SQLException
    //   175	182	358	java/sql/SQLException
    //   190	203	358	java/sql/SQLException
    //   209	219	358	java/sql/SQLException
  }

  @Background
  void b(String paramString)
  {
    showProgressDialog("正在删除", true, this);
    try
    {
      DeletePassResult localDeletePassResult2 = this.h.a(paramString, true);
      localDeletePassResult1 = localDeletePassResult2;
      a(localDeletePassResult1);
      return;
    }
    catch (RpcException localRpcException)
    {
      while (true)
        DeletePassResult localDeletePassResult1 = null;
    }
  }

  protected final void c(String paramString)
  {
    if ((this.l != null) && (this.l.getPassBaseInfo() != null))
      if (!StringUtils.equals(this.l.getPassBaseInfo().getStatus(), "expired"))
        break label118;
    label118: for (String str = "20000062OverdueDetails"; ; str = "20000062Details")
    {
      AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.l.getPassBaseInfo().getPassId();
      arrayOfString[1] = this.l.getPassBaseInfo().getPartnerId();
      AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, "", "", "20000062", "", "", str, paramString, "", "u", "c", arrayOfString);
      return;
    }
  }

  public final void e()
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.E = System.currentTimeMillis();
    a = false;
    b = true;
    c = false;
    this.e = LayoutInflater.from(this).inflate(R.layout.main_member_card_detail, null);
    this.f = ((APPullRefreshView)this.e.findViewById(R.id.member_details_pull_refresh));
    this.f.setRefreshListener(new dv(this));
    this.o = ((MemberCardHeaderStyle)this.f.findViewById(R.id.layout_member_detail_kpqy));
    this.t = ((APButton)this.f.findViewById(R.id.btn_use_membercard_button));
    this.u = ((APTextView)this.f.findViewById(R.id.tv_use_membercard_button));
    this.v = ((APImageView)this.f.findViewById(R.id.iv_use_membercard_image));
    this.v.setTag(Long.valueOf(UUID.randomUUID().getLeastSignificantBits()));
    this.w = ((APTextView)this.f.findViewById(R.id.tv_use_membercard_image_msg));
    this.p = ((APLinearLayout)this.f.findViewById(R.id.layout_member_detail_zstq));
    this.q = ((APLinearLayout)this.f.findViewById(R.id.layout_member_detail_tytq));
    this.r = ((APLinearLayout)this.f.findViewById(R.id.layout_member_detail_cardinfo));
    this.s = ((APLinearLayout)this.f.findViewById(R.id.layout_member_detail_otherinfo));
    this.z = ((APTextView)this.f.findViewById(R.id.tv_query_xiaobao));
    this.z.setOnClickListener(new dw(this));
    setContentView(this.e);
    this.g = new k(this, (ViewGroup)this.e, this.mApp, this);
    this.h = new com.alipay.mobile.alipassapp.biz.c.a(this.mApp);
    this.i = new com.alipay.mobile.alipassapp.biz.a.a.a(this.mApp, this);
    this.F = ((CreateDynamicCodeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(CreateDynamicCodeService.class.getName()));
    this.F.init(this, this.I, 1);
    if (this.H == null)
      this.H = ((AlipassPayBridgeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AlipassPayBridgeService.class.getName()));
    this.m = ((APTitleBar)findViewById(R.id.member_titlebar));
    this.y = ((APTextView)findViewById(R.id.member_for_location));
    this.m.setGenericButtonVisiable(true);
    this.m.setGenericButtonIconResource(R.drawable.more_title_bar_icon_list);
    this.m.setGenericButtonListener(new dx(this));
    if (c())
      if (this.k)
        break label486;
    label486: for (boolean bool = true; ; bool = false)
    {
      a(bool);
      return;
    }
  }

  protected void onDestroy()
  {
    this.F.onDestroy();
    this.H.closePayBridge();
    this.i.a();
    super.onDestroy();
  }

  protected void onPause()
  {
    this.F.onPause();
    super.onPause();
  }

  protected void onResume()
  {
    this.F.onResume();
    if (b)
      b = false;
    while (true)
    {
      super.onResume();
      return;
      if (a)
      {
        a(true);
        a = false;
      }
      if ((this.D) && (!c))
        finish();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberCardDetailActivity
 * JD-Core Version:    0.6.2
 */