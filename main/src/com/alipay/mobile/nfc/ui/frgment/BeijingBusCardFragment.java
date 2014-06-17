package com.alipay.mobile.nfc.ui.frgment;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.nfc.R.drawable;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.R.string;
import com.alipay.mobile.nfc.strategy.BusinessJumpable;
import com.alipay.mobile.nfc.strategy.BusinessJumper;
import com.alipay.mobile.nfc.strategy.NfcStrategy;
import com.alipay.mobile.nfc.ui.NFCAppDetailActivity;
import com.alipay.mobile.nfc.ui.NFCMainActivity;
import com.alipay.nfc.model.CardInfo;
import com.alipay.nfc.model.CardTypeEnum;
import java.util.Map;

public class BeijingBusCardFragment extends Fragment
  implements View.OnClickListener
{
  private static String a = "NFC/BeijingBusCard";
  private MicroApplicationContext b;
  private NFCMainActivity c;
  private LayoutInflater d;
  private View e;
  private View f;
  private View g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private LinearLayout n;
  private boolean o = false;
  private BusinessJumpable p;

  private void a(String paramString, boolean paramBoolean)
  {
    Intent localIntent = new Intent(this.c, NFCAppDetailActivity.class);
    localIntent.putExtra("APP_ID", paramString);
    if (paramBoolean);
    for (int i1 = 202; ; i1 = 201)
    {
      localIntent.putExtra("UPGRADE", i1);
      this.c.startActivity(localIntent);
      return;
    }
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.c = ((NFCMainActivity)paramActivity);
  }

  public void onClick(View paramView)
  {
    if ((paramView instanceof Button))
    {
      BusinessJumpable localBusinessJumpable = (BusinessJumpable)paramView.getTag();
      BusinessJumper localBusinessJumper = BusinessJumper.a(this.b);
      localBusinessJumper.a(localBusinessJumpable);
      localBusinessJumper.a();
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = AlipayApplication.getInstance().getMicroApplicationContext();
    this.d = paramLayoutInflater;
    View localView = paramLayoutInflater.inflate(R.layout.d, paramViewGroup, false);
    this.e = localView.findViewById(R.id.p);
    this.f = localView.findViewById(R.id.r);
    this.g = localView.findViewById(R.id.q);
    this.h = ((TextView)localView.findViewById(R.id.O));
    this.i = ((TextView)localView.findViewById(R.id.R));
    this.j = ((TextView)localView.findViewById(R.id.P));
    this.k = ((TextView)localView.findViewById(R.id.N));
    this.l = ((TextView)localView.findViewById(R.id.S));
    this.m = ((TextView)localView.findViewById(R.id.Q));
    APTableView localAPTableView = (APTableView)localView.findViewById(R.id.e);
    localAPTableView.setBackgroundResource(R.drawable.d);
    localAPTableView.setOnClickListener(new BeijingBusCardFragment.1(this));
    this.n = ((LinearLayout)localView.findViewById(R.id.o));
    if (NfcStrategy.b())
    {
      this.p = new BeijingBusCardFragment.2(this);
      String str = this.c.getResources().getString(R.string.g);
      BusinessJumpable localBusinessJumpable = this.p;
      this.d.inflate(R.layout.h, this.n, true);
      Button localButton = (Button)this.n.getChildAt(-1 + this.n.getChildCount());
      localButton.setOnClickListener(this);
      localButton.setTag(localBusinessJumpable);
      localButton.setText(str);
    }
    CardInfo localCardInfo = this.c.a();
    if (localCardInfo != null)
    {
      this.h.setText(localCardInfo.g());
      this.i.setText(localCardInfo.f().getMemo());
      this.j.setText(localCardInfo.a());
      if (!TextUtils.isEmpty(localCardInfo.c()))
        break label456;
      this.e.setVisibility(8);
      if (!TextUtils.isEmpty(localCardInfo.b()))
        break label498;
      this.f.setVisibility(8);
    }
    while (true)
    {
      Map localMap = localCardInfo.e();
      if ((localMap == null) || (TextUtils.isEmpty((CharSequence)localMap.get("name"))))
        break label540;
      this.g.setVisibility(0);
      this.m.setText((CharSequence)localMap.get("name"));
      return localView;
      label456: this.e.setVisibility(0);
      this.k.setText(localCardInfo.c() + "元");
      break;
      label498: this.f.setVisibility(0);
      this.l.setText(localCardInfo.b() + "次");
    }
    label540: this.g.setVisibility(8);
    return localView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BeijingBusCardFragment
 * JD-Core Version:    0.6.2
 */