package com.alipay.mobile.nfc.ui.frgment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.nfc.R.drawable;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.ui.NFCMainActivity;
import com.alipay.nfc.model.CardInfo;
import com.alipay.nfc.model.CardTypeEnum;
import java.util.Map;

public class BusCardFragment extends Fragment
{
  private static String a = "NFC/BusCard";
  private NFCMainActivity b;
  private View c;
  private View d;
  private View e;
  private TextView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.b = ((NFCMainActivity)paramActivity);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(R.layout.c, paramViewGroup, false);
    this.c = localView.findViewById(R.id.p);
    this.d = localView.findViewById(R.id.r);
    this.e = localView.findViewById(R.id.q);
    this.f = ((TextView)localView.findViewById(R.id.O));
    this.g = ((TextView)localView.findViewById(R.id.R));
    this.h = ((TextView)localView.findViewById(R.id.P));
    this.i = ((TextView)localView.findViewById(R.id.N));
    this.j = ((TextView)localView.findViewById(R.id.N));
    this.k = ((TextView)localView.findViewById(R.id.S));
    this.l = ((TextView)localView.findViewById(R.id.Q));
    APTableView localAPTableView = (APTableView)localView.findViewById(R.id.e);
    localAPTableView.setBackgroundResource(R.drawable.d);
    localAPTableView.setOnClickListener(new BusCardFragment.1(this));
    CardInfo localCardInfo = this.b.a();
    if (localCardInfo != null)
    {
      this.f.setText(localCardInfo.g());
      this.g.setText(localCardInfo.f().getMemo());
      this.h.setText(localCardInfo.a());
      if (!TextUtils.isEmpty(localCardInfo.c()))
        break label343;
      this.c.setVisibility(8);
      if (!TextUtils.isEmpty(localCardInfo.b()))
        break label384;
      this.d.setVisibility(8);
    }
    while (true)
    {
      Map localMap = localCardInfo.e();
      if ((localMap == null) || (TextUtils.isEmpty((CharSequence)localMap.get("name"))))
        break label425;
      this.e.setVisibility(0);
      this.l.setText((CharSequence)localMap.get("name"));
      return localView;
      label343: this.c.setVisibility(0);
      this.j.setText(localCardInfo.c() + "元");
      break;
      label384: this.d.setVisibility(0);
      this.k.setText(localCardInfo.b() + "次");
    }
    label425: this.e.setVisibility(8);
    return localView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.BusCardFragment
 * JD-Core Version:    0.6.2
 */