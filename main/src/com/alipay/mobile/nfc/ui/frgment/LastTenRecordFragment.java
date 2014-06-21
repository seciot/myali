package com.alipay.mobile.nfc.ui.frgment;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.R.string;
import com.alipay.mobile.nfc.ui.NFCMainActivity;
import com.alipay.mobile.nfc.ui.adapter.LastTenRecordListAdapter;
import com.alipay.nfc.model.CardInfo;
import java.util.List;

public class LastTenRecordFragment extends Fragment
{
  private ListView a;
  private LastTenRecordListAdapter b;
  private APFlowTipView c;

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(R.layout.BundlesManager, paramViewGroup, false);
    this.a = ((ListView)localView.findViewById(R.id.H));
    this.c = ((APFlowTipView)localView.findViewById(R.id.v));
    this.b = new LastTenRecordListAdapter(getActivity());
    CardInfo localCardInfo = ((NFCMainActivity)getActivity()).a();
    if ((localCardInfo != null) && (localCardInfo.d() != null) && (localCardInfo.d().size() > 0))
    {
      this.c.setVisibility(8);
      this.a.setVisibility(0);
      this.b.a(localCardInfo);
      this.b.a(localCardInfo.d());
      this.a.setAdapter(this.b);
      return localView;
    }
    this.a.setVisibility(8);
    this.c.setTips(getResources().getString(R.string.ZLog));
    this.c.setVisibility(0);
    return localView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.frgment.LastTenRecordFragment
 * JD-Core Version:    0.6.2
 */