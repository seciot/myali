package com.alipay.mobile.nfc.ui.frgment;

import android.app.Activity;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.mobile.common.utils.SecurityUtil;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.cardbin.Cardbin;
import com.alipay.mobile.framework.cardbin.CardbinManager;
import com.alipay.mobile.nfc.R.drawable;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.R.string;
import com.alipay.mobile.nfc.strategy.BusinessJumpable;
import com.alipay.mobile.nfc.strategy.BusinessJumper;
import com.alipay.mobile.nfc.strategy.NfcStrategy;
import com.alipay.mobile.nfc.ui.NFCMainActivity;
import com.alipay.nfc.model.CardInfo;
import com.alipay.nfc.model.CardTypeEnum;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BankCardInfoFragment extends Fragment
  implements View.OnClickListener
{
  private static String a = "NFC/BankCardInfoFragment";
  private static HashMap<String, String> b;
  private Handler A = new BankCardInfoFragment.1(this);
  private LayoutInflater c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private View m;
  private View n;
  private View o;
  private View p;
  private View q;
  private ImageView r;
  private LinearLayout s;
  private MicroApplicationContext t;
  private NFCMainActivity u;
  private BusinessJumpable v;
  private BusinessJumpable w;
  private BusinessJumpable x;
  private BusinessJumpable y;
  private final int z = 701;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("CCB", "中国建设银行");
    b.put("ICBC", "中国工商银行");
    b.put("ABC", "中国农业银行");
    b.put("BOC", "中国银行");
    b.put("PSBC", "中国邮储银行");
    b.put("COMM", "交通银行");
    b.put("CMB", "招商银行");
    b.put("CEB", "中国光大银行");
    b.put("CIB", "中国兴业银行");
    b.put("CITIC", "中国中信银行");
    b.put("CMBC", "中国民生银行");
    b.put("SPDB", "中国浦发银行");
    b.put("SPABANK", "中国平安银行");
    b.put("GDB", "中国广发银行");
    b.put("HXBANK", "中国华夏银行");
  }

  private Bitmap a(Activity paramActivity, String paramString)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    localOptions.inDensity = localDisplayMetrics.densityDpi;
    localOptions.inScaled = true;
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream(paramActivity.getResources().getAssets().open("BANK_" + paramString + ".png"), null, localOptions);
      return localBitmap;
    }
    catch (Exception localException)
    {
      getTag();
    }
    return null;
  }

  private void a(String paramString, BusinessJumpable paramBusinessJumpable)
  {
    this.c.inflate(R.layout.h, this.s, true);
    Button localButton = (Button)this.s.getChildAt(-1 + this.s.getChildCount());
    localButton.setOnClickListener(this);
    localButton.setTag(paramBusinessJumpable);
    localButton.setText(paramString);
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.u = ((NFCMainActivity)paramActivity);
  }

  public void onClick(View paramView)
  {
    if ((paramView instanceof Button))
    {
      BusinessJumpable localBusinessJumpable = (BusinessJumpable)paramView.getTag();
      BusinessJumper localBusinessJumper = BusinessJumper.a(this.t);
      localBusinessJumper.a(localBusinessJumpable);
      localBusinessJumper.a();
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.c = paramLayoutInflater;
    View localView = paramLayoutInflater.inflate(R.layout.a, paramViewGroup, false);
    this.d = ((TextView)localView.findViewById(R.id.c));
    this.e = ((TextView)localView.findViewById(R.id.f));
    this.f = ((TextView)localView.findViewById(R.id.I));
    this.g = ((TextView)localView.findViewById(R.id.K));
    this.h = ((TextView)localView.findViewById(R.id.g));
    this.i = ((TextView)localView.findViewById(R.id.T));
    this.j = ((TextView)localView.findViewById(R.id.U));
    this.k = ((TextView)localView.findViewById(R.id.h));
    this.l = ((TextView)localView.findViewById(R.id.G));
    this.r = ((ImageView)localView.findViewById(R.id.b));
    this.m = localView.findViewById(R.id.l);
    this.n = localView.findViewById(R.id.t);
    this.o = localView.findViewById(R.id.u);
    this.p = localView.findViewById(R.id.m);
    this.q = localView.findViewById(R.id.s);
    APTableView localAPTableView = (APTableView)localView.findViewById(R.id.e);
    localAPTableView.setBackgroundResource(R.drawable.d);
    localAPTableView.setOnClickListener(new BankCardInfoFragment.6(this));
    this.s = ((LinearLayout)localView.findViewById(R.id.a));
    CardInfo localCardInfo = this.u.a();
    label452: label473: label494: Map localMap;
    if (localCardInfo != null)
      if (localCardInfo != null)
      {
        List localList = CardbinManager.getInstance(this.u).queryCarbin(localCardInfo.a());
        Bitmap localBitmap = null;
        if (localList != null)
        {
          int i3 = localList.size();
          localBitmap = null;
          if (i3 > 0)
            localBitmap = a(this.u, ((Cardbin)localList.get(0)).getBandAlias());
        }
        if (localBitmap == null)
          break label786;
        this.r.setImageBitmap(localBitmap);
        if ((localList == null) || (localList.size() <= 0))
          break label799;
        String str4 = (String)b.get(((Cardbin)localList.get(0)).getBandAlias());
        TextView localTextView2 = this.d;
        if (str4 == null)
          str4 = ((Cardbin)localList.get(0)).getCardName();
        localTextView2.setText(str4);
        if (localCardInfo.f() != null)
          break label815;
        this.e.setText(CardTypeEnum.UnknowCard.getMemo());
        if (!TextUtils.isEmpty(localCardInfo.a()))
          break label833;
        this.f.setText("");
        if (!TextUtils.isEmpty(localCardInfo.c()))
          break label916;
        this.m.setVisibility(8);
        label514: if (!TextUtils.isEmpty(localCardInfo.b()))
          break label958;
        this.n.setVisibility(8);
        label534: localMap = localCardInfo.e();
        if (localMap == null)
          break label1082;
        if (!TextUtils.isEmpty((CharSequence)localMap.get("name")))
          break label1000;
        this.o.setVisibility(8);
        label574: if (!TextUtils.isEmpty((CharSequence)localMap.get("idcard")))
          break label1041;
        this.p.setVisibility(8);
        label602: this.q.setVisibility(8);
        this.l.setText("暂不支持");
      }
    while (true)
    {
      if (NfcStrategy.b())
      {
        this.t = AlipayApplication.getInstance().getMicroApplicationContext();
        this.v = new BankCardInfoFragment.2(this, localCardInfo);
        this.x = new BankCardInfoFragment.3(this);
        this.w = new BankCardInfoFragment.4(this, localCardInfo);
        this.y = new BankCardInfoFragment.5(this);
        if (localCardInfo.f() != CardTypeEnum.CreditCard)
          break label1112;
        this.g.setText(this.u.getResources().getString(R.string.a));
        a(this.u.getResources().getString(R.string.f), this.v);
        a(this.u.getResources().getString(R.string.h), this.x);
        a(this.u.getResources().getString(R.string.j), this.y);
      }
      return localView;
      label786: this.r.setImageResource(R.drawable.a);
      break;
      label799: this.d.setText(CardTypeEnum.UnknowCard.getMemo());
      break label452;
      label815: this.e.setText(localCardInfo.f().getMemo());
      break label473;
      label833: TextView localTextView1 = this.f;
      String str1 = localCardInfo.a();
      StringBuilder localStringBuilder = new StringBuilder();
      int i1 = -4 + str1.length();
      for (int i2 = 0; i2 < i1; i2++)
        localStringBuilder.append("*");
      localStringBuilder.append(str1.substring(i1));
      localTextView1.setText(localStringBuilder.toString());
      break label494;
      label916: this.m.setVisibility(0);
      this.h.setText(localCardInfo.c() + "元");
      break label514;
      label958: this.n.setVisibility(0);
      this.i.setText(localCardInfo.b() + "次");
      break label534;
      label1000: this.o.setVisibility(0);
      String str2 = (String)localMap.get("name");
      this.j.setText(SecurityUtil.accountHide(str2, "hidename"));
      break label574;
      label1041: this.p.setVisibility(0);
      String str3 = (String)localMap.get("idcard");
      this.k.setText(SecurityUtil.accountHide(str3, "hideidcard"));
      break label602;
      label1082: this.o.setVisibility(8);
      this.p.setVisibility(8);
      this.q.setVisibility(8);
    }
    label1112: this.g.setText(this.u.getResources().getString(R.string.b));
    a(this.u.getResources().getString(R.string.f), this.v);
    a(this.u.getResources().getString(R.string.k), this.w);
    a(this.u.getResources().getString(R.string.j), this.y);
    return localView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BankCardInfoFragment
 * JD-Core Version:    0.6.2
 */